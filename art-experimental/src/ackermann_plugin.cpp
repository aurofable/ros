/*
 *  Gazebo - Outdoor Multi-Robot Simulator
 *  Copyright (C) 2003
 *     Nate Koenig & Andrew Howard
 *
 *  This program is free software; you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation; either version 2 of the License, or
 *  (at your option) any later version.
 *
 *  This program is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License
 *  along with this program; if not, write to the Free Software
 *  Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 *
 */
/*
 * Desc: ROS interface to a Position2d controller for an Ackermann drive.
 * Author: Daniel Hewlett (adapted from Nathan Koenig)
 */

#include <algorithm>
#include <assert.h>

#include <art_gazebo_plugins/ackermann_plugin.h>

#include <gazebo/gazebo.h>
#include <gazebo/GazeboError.hh>
#include <gazebo/Quatern.hh>
#include <gazebo/Controller.hh>
#include <gazebo/Body.hh>
#include <gazebo/World.hh>
#include <gazebo/Simulator.hh>
#include <gazebo/Global.hh>
#include <gazebo/XMLConfig.hh>
#include <gazebo/ControllerFactory.hh>
#include <gazebo/PhysicsEngine.hh>

#include <ros/ros.h>
#include <tf/transform_broadcaster.h>
#include <tf/transform_listener.h>
#include <art_msgs/CarDrive.h>
#include <nav_msgs/Odometry.h>
#include <boost/bind.hpp>

using namespace gazebo;

GZ_REGISTER_DYNAMIC_CONTROLLER("ackermann_plugin", AckermannPlugin);

enum
{
  RIGHT, LEFT, STEER
};

const double TAU = 6.28318530717958647693;  // 2 * pi

// Constructor
AckermannPlugin::AckermannPlugin(Entity *parent) :
  Controller(parent)
{
  parent_ = dynamic_cast<Model*> (parent);

  if (!parent_)
    gzthrow("Differential_Position2d controller requires a Model as its parent");

  enableMotors = true;

  wheelSpeed[RIGHT] = 0;
  wheelSpeed[LEFT] = 0;
  steerAngle = 0;

  prevUpdateTime = Simulator::Instance()->GetSimTime();

  Param::Begin(&parameters);
  leftJointNameP = new ParamT<std::string> ("leftJoint", "", 1);
  rightJointNameP = new ParamT<std::string> ("rightJoint", "", 1);
  steerJointNameP = new ParamT<std::string> ("steerJoint", "", 1);
  wheelSepWidthP = new ParamT<float> ("wheelSeparationWidth", 0.34, 1);
  wheelSepLengthP = new ParamT<float> ("wheelSeparationLength", 0.34, 1);
  wheelDiamP = new ParamT<float> ("wheelDiameter", 0.15, 1);
  driveTorqueP = new ParamT<float> ("driveTorque", 10.0, 1);
  steerTorqueP = new ParamT<float> ("steerTorque", 10.0, 1);
  robotNamespaceP = new ParamT<std::string> ("robotNamespace", "/", 0);
  topicNameP = new ParamT<std::string> ("topicName", "", 1);
  Param::End();

  speed_ = 0;
  angle_ = 0;
  alive_ = true;
}

// Destructor
AckermannPlugin::~AckermannPlugin()
{
  delete leftJointNameP;
  delete rightJointNameP;
  delete steerJointNameP;
  delete wheelSepWidthP;
  delete wheelSepLengthP;
  delete wheelDiamP;
  delete driveTorqueP;
  delete steerTorqueP;
  delete robotNamespaceP;
  delete topicNameP;
  delete callback_queue_thread_;
  delete rosnode_;
  delete transform_broadcaster_;
}

// Load the controller
void AckermannPlugin::LoadChild(XMLConfigNode *node)
{
  pos_iface_ = dynamic_cast<libgazebo::PositionIface*> (GetIface("position"));

  // the defaults are from pioneer2dx
  wheelSepWidthP->Load(node);
  wheelSepLengthP->Load(node);
  wheelDiamP->Load(node);
  driveTorqueP->Load(node);
  steerTorqueP->Load(node);

  leftJointNameP->Load(node);
  rightJointNameP->Load(node);
  steerJointNameP->Load(node);

  joints[LEFT] = parent_->GetJoint(**leftJointNameP);
  joints[RIGHT] = parent_->GetJoint(**rightJointNameP);
  joints[STEER] = parent_->GetJoint(**steerJointNameP);

  if (!joints[LEFT])
    gzthrow("The controller couldn't get left revolute joint");

  if (!joints[RIGHT])
    gzthrow("The controller couldn't get right revolute joint");

  if (!joints[STEER])
    gzthrow("The controller couldn't get steer hinge joint");

  // Initialize the ROS node and subscribe to cmd_vel

  robotNamespaceP->Load(node);
  robotNamespace = robotNamespaceP->GetValue();

  int argc = 0;
  char** argv = NULL;
  ros::init(argc, argv, "ackermann_plugin", ros::init_options::NoSigintHandler | ros::init_options::AnonymousName);
  rosnode_ = new ros::NodeHandle(robotNamespace);

  tf_prefix_ = tf::getPrefixParam(*rosnode_);
  transform_broadcaster_ = new tf::TransformBroadcaster();

  topicNameP->Load(node);
  topicName = topicNameP->GetValue();

  // ROS: Subscribe to the velocity command topic (usually "cmd_vel")
  ros::SubscribeOptions so =
      ros::SubscribeOptions::create<art_msgs::CarDrive>(topicName, 1,
                                                          boost::bind(&AckermannPlugin::cmdVelCallback, this, _1),
                                                          ros::VoidPtr(), &queue_);
  sub_ = rosnode_->subscribe(so);
  pub_ = rosnode_->advertise<nav_msgs::Odometry>("odom", 1);
}

// Initialize the controller
void AckermannPlugin::InitChild()
{
  // Reset odometric pose
  odomPose[0] = 0.0;
  odomPose[1] = 0.0;
  odomPose[2] = 0.0;

  odomVel[0] = 0.0;
  odomVel[1] = 0.0;
  odomVel[2] = 0.0;

  callback_queue_thread_ = new boost::thread(boost::bind(&AckermannPlugin::QueueThread, this));
}

// Load the controller
void AckermannPlugin::SaveChild(std::string &prefix, std::ostream &stream)
{
  stream << prefix << *(leftJointNameP) << "\n";
  stream << prefix << *(rightJointNameP) << "\n";
  stream << prefix << *(steerJointNameP) << "\n";
  stream << prefix << *(driveTorqueP) << "\n";
  stream << prefix << *(steerTorqueP) << "\n";
  stream << prefix << *(wheelDiamP) << "\n";
  stream << prefix << *(wheelSepWidthP) << "\n";
  stream << prefix << *(wheelSepLengthP) << "\n";
}

// Reset
void AckermannPlugin::ResetChild()
{
  // Reset odometric pose
  odomPose[0] = 0.0;
  odomPose[1] = 0.0;
  odomPose[2] = 0.0;

  odomVel[0] = 0.0;
  odomVel[1] = 0.0;
  odomVel[2] = 0.0;
}

// Update the controller
void AckermannPlugin::UpdateChild()
{
  // TODO: Step should be in a parameter of this function
  double wd, wsw, wsl;
  double d1, d2, a;
  double dr, da, r;
  Time stepTime;

  //myIface->Lock(1);

  GetPositionCmd();

  wd = **(wheelDiamP);
  wsw = **(wheelSepWidthP);
  wsl = **(wheelSepLengthP);

  //stepTime = World::Instance()->GetPhysicsEngine()->GetStepTime();
  stepTime = Simulator::Instance()->GetSimTime() - prevUpdateTime;
  prevUpdateTime = Simulator::Instance()->GetSimTime();

  // Distance traveled by each back wheel
  d1 = stepTime.Double() * wd / 2 * joints[LEFT]->GetVelocity(0);
  d2 = stepTime.Double() * wd / 2 * joints[RIGHT]->GetVelocity(0);

  // Get steering angle
  a = joints[STEER]->GetAngle(0).GetAsRadian();

  // compute radius of curvature
  // may be infinite. that's ok
  r = wsl * tan(TAU/2 - a);

  // compute displacement along arc
  dr = (d1 + d2) / 2;
  da = dr / r;

  // Compute odometric pose
  odomPose[0] += dr * cos(odomPose[2]);
  odomPose[1] += dr * sin(odomPose[2]);
  odomPose[2] += da;

  // Compute odometric instantaneous velocity
  odomVel[0] = dr / stepTime.Double();
  odomVel[1] = 0.0;
  odomVel[2] = da / stepTime.Double();

  if (enableMotors)
  {
    joints[LEFT]->SetVelocity(0, wheelSpeed[LEFT] / (**(wheelDiamP) / 2.0));

    joints[RIGHT]->SetVelocity(0, wheelSpeed[RIGHT] / (**(wheelDiamP) / 2.0));

    // FIXME: come up with something nicer for doing position control
    // than this simple proportional controller
    joints[STEER]->SetVelocity(0, (steerAngle - a) / stepTime.Double());

    joints[LEFT]->SetMaxForce(0, **(driveTorqueP));
    joints[RIGHT]->SetMaxForce(0, **(driveTorqueP));
    joints[STEER]->SetMaxForce(0, **(steerTorqueP));
  }

  write_position_data();
  publish_odometry();

  //myIface->Unlock();
}

// Finalize the controller
void AckermannPlugin::FiniChild()
{
  //std::cout << "ENTERING FINALIZE\n";
  alive_ = false;
  // Custom Callback Queue
  queue_.clear();
  queue_.disable();
  rosnode_->shutdown();
  callback_queue_thread_->join();
  //std::cout << "EXITING FINALIZE\n";
}

// NEW: Now uses the target velocities from the ROS message, not the Iface 
void AckermannPlugin::GetPositionCmd()
{
  lock.lock();

  double vr, a;

  vr = speed_; //myIface->data->cmdVelocity.pos.x;
  a = angle_; //myIface->data->cmdVelocity.yaw;

  //std::cout << "X: [" << x_ << "] ROT: [" << rot_ << "]" << std::endl;

  // Changed motors to be always on, which is probably what we want anyway
  enableMotors = true; //myIface->data->cmdEnableMotors > 0;

  //std::cout << enableMotors << std::endl;

  // HACK: same speed for both drive motors regardless of
  // steering angle
  wheelSpeed[LEFT] = vr/* + a * **(wheelSepWidthP) / 2*/;
  wheelSpeed[RIGHT] = vr/* - a * **(wheelSepWidthP) / 2*/;
  steerAngle = a;

  lock.unlock();
}

// NEW: Store the velocities from the ROS message
void AckermannPlugin::cmdVelCallback(const art_msgs::CarDrive::ConstPtr& cmd_msg)
{
  //std::cout << "BEGIN CALLBACK\n";

  lock.lock();

  speed_ = cmd_msg->speed;
  angle_ = cmd_msg->steering_angle;

  // FIXME: take acceleration and jerk into account

  lock.unlock();

  //std::cout << "END CALLBACK\n";
}

// NEW: custom callback queue thread
void AckermannPlugin::QueueThread()
{
  static const double timeout = 0.01;

  while (alive_ && rosnode_->ok())
  {
    //    std::cout << "CALLING STUFF\n";
    queue_.callAvailable(ros::WallDuration(timeout));
  }
}

// NEW: Update this to publish odometry topic
void AckermannPlugin::publish_odometry()
{
  // get current time
  ros::Time current_time_((Simulator::Instance()->GetSimTime()).sec, (Simulator::Instance()->GetSimTime()).nsec); 

  // getting data for base_footprint to odom transform
  btQuaternion qt;
  // TODO: Is there something wrong here? RVIZ has a problem?
  qt.setEulerZYX(pos_iface_->data->pose.yaw, pos_iface_->data->pose.pitch, pos_iface_->data->pose.roll);
  btVector3 vt(pos_iface_->data->pose.pos.x, pos_iface_->data->pose.pos.y, pos_iface_->data->pose.pos.z);
  tf::Transform base_footprint_to_odom(qt, vt);

  transform_broadcaster_->sendTransform(tf::StampedTransform(base_footprint_to_odom,
                                                            current_time_,
                                                            "odom",
                                                            "base_footprint"));

  // publish odom topic
  odom_.pose.pose.position.x = pos_iface_->data->pose.pos.x;
  odom_.pose.pose.position.y = pos_iface_->data->pose.pos.y;

  gazebo::Quatern rot;
  rot.SetFromEuler(gazebo::Vector3(pos_iface_->data->pose.roll, pos_iface_->data->pose.pitch, pos_iface_->data->pose.yaw));

  odom_.pose.pose.orientation.x = rot.x;
  odom_.pose.pose.orientation.y = rot.y;
  odom_.pose.pose.orientation.z = rot.z;
  odom_.pose.pose.orientation.w = rot.u;

  odom_.twist.twist.linear.x = pos_iface_->data->velocity.pos.x;
  odom_.twist.twist.linear.y = pos_iface_->data->velocity.pos.y;
  odom_.twist.twist.angular.z = pos_iface_->data->velocity.yaw;

  odom_.header.frame_id = tf::resolve(tf_prefix_, "odom");
  odom_.child_frame_id = "base_footprint";

  //odom_.header.stamp = current_time_;
  odom_.header.stamp.sec = (Simulator::Instance()->GetSimTime()).sec;
  odom_.header.stamp.nsec = (Simulator::Instance()->GetSimTime()).nsec;

  pub_.publish(odom_);
}

// Update the data in the interface
void AckermannPlugin::write_position_data()
{
  // TODO: Data timestamp
  pos_iface_->data->head.time = Simulator::Instance()->GetSimTime().Double();

  pos_iface_->data->pose.pos.x = odomPose[0];
  pos_iface_->data->pose.pos.y = odomPose[1];
  pos_iface_->data->pose.yaw = NORMALIZE(odomPose[2]);

  pos_iface_->data->velocity.pos.x = odomVel[0];
  pos_iface_->data->velocity.yaw = odomVel[2];

  // TODO
  pos_iface_->data->stall = 0;
}
