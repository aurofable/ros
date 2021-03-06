/* Auto-generated by genmsg_cpp for file /home/james/ros/art/utexas-art-ros-pkg-read-only/stacks/art_vehicle/art_msgs/msg/PilotState.msg */
#ifndef ART_MSGS_MESSAGE_PILOTSTATE_H
#define ART_MSGS_MESSAGE_PILOTSTATE_H
#include <string>
#include <vector>
#include <map>
#include <ostream>
#include "ros/serialization.h"
#include "ros/builtin_message_traits.h"
#include "ros/message_operations.h"
#include "ros/time.h"

#include "ros/macros.h"

#include "ros/assert.h"

#include "std_msgs/Header.h"
#include "art_msgs/DriverState.h"
#include "art_msgs/DriverState.h"
#include "art_msgs/DriverState.h"
#include "art_msgs/DriverState.h"
#include "art_msgs/DriverState.h"
#include "art_msgs/DriverState.h"
#include "art_msgs/DriverState.h"
#include "art_msgs/CarDrive.h"
#include "art_msgs/CarDrive.h"
#include "art_msgs/CarDrive.h"

namespace art_msgs
{
template <class ContainerAllocator>
struct PilotState_ {
  typedef PilotState_<ContainerAllocator> Type;

  PilotState_()
  : header()
  , pilot()
  , brake()
  , imu()
  , odom()
  , shifter()
  , steering()
  , throttle()
  , preempted(false)
  , target()
  , plan()
  , current()
  {
  }

  PilotState_(const ContainerAllocator& _alloc)
  : header(_alloc)
  , pilot(_alloc)
  , brake(_alloc)
  , imu(_alloc)
  , odom(_alloc)
  , shifter(_alloc)
  , steering(_alloc)
  , throttle(_alloc)
  , preempted(false)
  , target(_alloc)
  , plan(_alloc)
  , current(_alloc)
  {
  }

  typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
   ::std_msgs::Header_<ContainerAllocator>  header;

  typedef  ::art_msgs::DriverState_<ContainerAllocator>  _pilot_type;
   ::art_msgs::DriverState_<ContainerAllocator>  pilot;

  typedef  ::art_msgs::DriverState_<ContainerAllocator>  _brake_type;
   ::art_msgs::DriverState_<ContainerAllocator>  brake;

  typedef  ::art_msgs::DriverState_<ContainerAllocator>  _imu_type;
   ::art_msgs::DriverState_<ContainerAllocator>  imu;

  typedef  ::art_msgs::DriverState_<ContainerAllocator>  _odom_type;
   ::art_msgs::DriverState_<ContainerAllocator>  odom;

  typedef  ::art_msgs::DriverState_<ContainerAllocator>  _shifter_type;
   ::art_msgs::DriverState_<ContainerAllocator>  shifter;

  typedef  ::art_msgs::DriverState_<ContainerAllocator>  _steering_type;
   ::art_msgs::DriverState_<ContainerAllocator>  steering;

  typedef  ::art_msgs::DriverState_<ContainerAllocator>  _throttle_type;
   ::art_msgs::DriverState_<ContainerAllocator>  throttle;

  typedef uint8_t _preempted_type;
  uint8_t preempted;

  typedef  ::art_msgs::CarDrive_<ContainerAllocator>  _target_type;
   ::art_msgs::CarDrive_<ContainerAllocator>  target;

  typedef  ::art_msgs::CarDrive_<ContainerAllocator>  _plan_type;
   ::art_msgs::CarDrive_<ContainerAllocator>  plan;

  typedef  ::art_msgs::CarDrive_<ContainerAllocator>  _current_type;
   ::art_msgs::CarDrive_<ContainerAllocator>  current;


private:
  static const char* __s_getDataType_() { return "art_msgs/PilotState"; }
public:
  ROS_DEPRECATED static const std::string __s_getDataType() { return __s_getDataType_(); }

  ROS_DEPRECATED const std::string __getDataType() const { return __s_getDataType_(); }

private:
  static const char* __s_getMD5Sum_() { return "c177b89612055fab019341d1fcc8bc65"; }
public:
  ROS_DEPRECATED static const std::string __s_getMD5Sum() { return __s_getMD5Sum_(); }

  ROS_DEPRECATED const std::string __getMD5Sum() const { return __s_getMD5Sum_(); }

private:
  static const char* __s_getMessageDefinition_() { return "# ART pilot state message\n\
\n\
# $Id$\n\
\n\
Header  header\n\
\n\
DriverState pilot               # pilot state\n\
\n\
# current states of individual devices\n\
# (considered CLOSED if device not publishing)\n\
DriverState brake\n\
DriverState imu\n\
DriverState odom\n\
DriverState shifter\n\
DriverState steering\n\
DriverState throttle\n\
\n\
# true if pilot preempted for learning speed control\n\
bool preempted\n\
\n\
# latest commanded goal and current status\n\
CarDrive target                 # current command\n\
CarDrive plan                   # intermediate goal\n\
CarDrive current                # current status\n\
\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.secs: seconds (stamp_secs) since epoch\n\
# * stamp.nsecs: nanoseconds since stamp_secs\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
\n\
================================================================================\n\
MSG: art_msgs/DriverState\n\
# ART driver states -- similar to those in driver_base.\n\
\n\
# $Id$\n\
\n\
# constants\n\
uint32 CLOSED = 0       # Not connected to the hardware\n\
uint32 OPENED = 1       # Passively connected to the hardware\n\
uint32 RUNNING = 2      # Sending hardware commands\n\
\n\
uint32 state\n\
\n\
================================================================================\n\
MSG: art_msgs/CarDrive\n\
# Driving command for a car-like vehicle using Ackermann steering.\n\
# $Id$\n\
\n\
# Drive at requested speed, acceleration and jerk (the 1st, 2nd and\n\
# 3rd derivatives of position). All are non-negative scalars. \n\
#\n\
# Speed is defined as the scalar magnitude of the velocity\n\
# vector. Direction (forwards or backwards) is determined by the gear.\n\
#\n\
# Zero acceleration means change speed as quickly as\n\
# possible. Positive acceleration may include deceleration as needed\n\
# to match the desired speed. It represents a desired rate and also a\n\
# limit not to exceed.\n\
#\n\
# Zero jerk means change acceleration as quickly as possible. Positive\n\
# jerk describes the desired rate of acceleration change in both\n\
# directions (positive and negative).\n\
#\n\
float32 speed                   # magnitude of velocity vector (m/s)\n\
float32 acceleration            # desired acceleration (m/s^2)\n\
float32 jerk                    # desired jerk (m/s^3)\n\
\n\
# Assumes Ackermann (front-wheel) steering. This angle is the average\n\
# yaw of the two front wheels in the vehicle frame of reference\n\
# (positive left), ignoring their slightly differing angles as if it\n\
# were a tricycle. This is *not* the angle of the steering wheel\n\
# inside the passenger compartment.\n\
#\n\
float32 steering_angle          # steering angle (radians)\n\
\n\
Gear gear                       # requested gear (no change if Naught)\n\
PilotBehavior behavior          # requested pilot behavior\n\
\n\
================================================================================\n\
MSG: art_msgs/Gear\n\
# ART vehicle transmission gear numbers\n\
#\n\
# Used by several different messages.\n\
\n\
# $Id$\n\
\n\
# Gear numbers. \n\
#\n\
# Naught means: reset all Shifter relays; no change of CarDrive gear.\n\
uint8 Naught = 0\n\
uint8 Park = 1\n\
uint8 Reverse = 2\n\
uint8 Neutral = 3\n\
uint8 Drive = 4\n\
uint8 N_gears = 5\n\
\n\
uint8 value		# requested or reported gear number\n\
\n\
================================================================================\n\
MSG: art_msgs/PilotBehavior\n\
# ART autonomous vehicle pilot node behaviors.\n\
#\n\
# Normally, the pilot node does Run, continually sending commands to\n\
# the servo device actuators and monitoring their state.  With Pause,\n\
# the pilot becomes passive, allowing a learning algorithm or human\n\
# controller direct access to those devices.  In the Off state,\n\
# various devices are shut down: the transmission in Park, the brake\n\
# released, the throttle at idle.  The engine is not turned off, but\n\
# it could be.\n\
\n\
# $Id$\n\
\n\
# Behavior value\n\
uint8 value\n\
\n\
# Behavior numbers:\n\
uint8 Run = 0                   # normal driving\n\
uint8 Pause = 1                 # stop issuing servo commands\n\
uint8 Off = 2                   # turn off devices\n\
uint8 N_behaviors = 3\n\
\n\
"; }
public:
  ROS_DEPRECATED static const std::string __s_getMessageDefinition() { return __s_getMessageDefinition_(); }

  ROS_DEPRECATED const std::string __getMessageDefinition() const { return __s_getMessageDefinition_(); }

  ROS_DEPRECATED virtual uint8_t *serialize(uint8_t *write_ptr, uint32_t seq) const
  {
    ros::serialization::OStream stream(write_ptr, 1000000000);
    ros::serialization::serialize(stream, header);
    ros::serialization::serialize(stream, pilot);
    ros::serialization::serialize(stream, brake);
    ros::serialization::serialize(stream, imu);
    ros::serialization::serialize(stream, odom);
    ros::serialization::serialize(stream, shifter);
    ros::serialization::serialize(stream, steering);
    ros::serialization::serialize(stream, throttle);
    ros::serialization::serialize(stream, preempted);
    ros::serialization::serialize(stream, target);
    ros::serialization::serialize(stream, plan);
    ros::serialization::serialize(stream, current);
    return stream.getData();
  }

  ROS_DEPRECATED virtual uint8_t *deserialize(uint8_t *read_ptr)
  {
    ros::serialization::IStream stream(read_ptr, 1000000000);
    ros::serialization::deserialize(stream, header);
    ros::serialization::deserialize(stream, pilot);
    ros::serialization::deserialize(stream, brake);
    ros::serialization::deserialize(stream, imu);
    ros::serialization::deserialize(stream, odom);
    ros::serialization::deserialize(stream, shifter);
    ros::serialization::deserialize(stream, steering);
    ros::serialization::deserialize(stream, throttle);
    ros::serialization::deserialize(stream, preempted);
    ros::serialization::deserialize(stream, target);
    ros::serialization::deserialize(stream, plan);
    ros::serialization::deserialize(stream, current);
    return stream.getData();
  }

  ROS_DEPRECATED virtual uint32_t serializationLength() const
  {
    uint32_t size = 0;
    size += ros::serialization::serializationLength(header);
    size += ros::serialization::serializationLength(pilot);
    size += ros::serialization::serializationLength(brake);
    size += ros::serialization::serializationLength(imu);
    size += ros::serialization::serializationLength(odom);
    size += ros::serialization::serializationLength(shifter);
    size += ros::serialization::serializationLength(steering);
    size += ros::serialization::serializationLength(throttle);
    size += ros::serialization::serializationLength(preempted);
    size += ros::serialization::serializationLength(target);
    size += ros::serialization::serializationLength(plan);
    size += ros::serialization::serializationLength(current);
    return size;
  }

  typedef boost::shared_ptr< ::art_msgs::PilotState_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::art_msgs::PilotState_<ContainerAllocator>  const> ConstPtr;
  boost::shared_ptr<std::map<std::string, std::string> > __connection_header;
}; // struct PilotState
typedef  ::art_msgs::PilotState_<std::allocator<void> > PilotState;

typedef boost::shared_ptr< ::art_msgs::PilotState> PilotStatePtr;
typedef boost::shared_ptr< ::art_msgs::PilotState const> PilotStateConstPtr;


template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const  ::art_msgs::PilotState_<ContainerAllocator> & v)
{
  ros::message_operations::Printer< ::art_msgs::PilotState_<ContainerAllocator> >::stream(s, "", v);
  return s;}

} // namespace art_msgs

namespace ros
{
namespace message_traits
{
template<class ContainerAllocator> struct IsMessage< ::art_msgs::PilotState_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct IsMessage< ::art_msgs::PilotState_<ContainerAllocator>  const> : public TrueType {};
template<class ContainerAllocator>
struct MD5Sum< ::art_msgs::PilotState_<ContainerAllocator> > {
  static const char* value() 
  {
    return "c177b89612055fab019341d1fcc8bc65";
  }

  static const char* value(const  ::art_msgs::PilotState_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0xc177b89612055fabULL;
  static const uint64_t static_value2 = 0x019341d1fcc8bc65ULL;
};

template<class ContainerAllocator>
struct DataType< ::art_msgs::PilotState_<ContainerAllocator> > {
  static const char* value() 
  {
    return "art_msgs/PilotState";
  }

  static const char* value(const  ::art_msgs::PilotState_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::art_msgs::PilotState_<ContainerAllocator> > {
  static const char* value() 
  {
    return "# ART pilot state message\n\
\n\
# $Id$\n\
\n\
Header  header\n\
\n\
DriverState pilot               # pilot state\n\
\n\
# current states of individual devices\n\
# (considered CLOSED if device not publishing)\n\
DriverState brake\n\
DriverState imu\n\
DriverState odom\n\
DriverState shifter\n\
DriverState steering\n\
DriverState throttle\n\
\n\
# true if pilot preempted for learning speed control\n\
bool preempted\n\
\n\
# latest commanded goal and current status\n\
CarDrive target                 # current command\n\
CarDrive plan                   # intermediate goal\n\
CarDrive current                # current status\n\
\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.secs: seconds (stamp_secs) since epoch\n\
# * stamp.nsecs: nanoseconds since stamp_secs\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
\n\
================================================================================\n\
MSG: art_msgs/DriverState\n\
# ART driver states -- similar to those in driver_base.\n\
\n\
# $Id$\n\
\n\
# constants\n\
uint32 CLOSED = 0       # Not connected to the hardware\n\
uint32 OPENED = 1       # Passively connected to the hardware\n\
uint32 RUNNING = 2      # Sending hardware commands\n\
\n\
uint32 state\n\
\n\
================================================================================\n\
MSG: art_msgs/CarDrive\n\
# Driving command for a car-like vehicle using Ackermann steering.\n\
# $Id$\n\
\n\
# Drive at requested speed, acceleration and jerk (the 1st, 2nd and\n\
# 3rd derivatives of position). All are non-negative scalars. \n\
#\n\
# Speed is defined as the scalar magnitude of the velocity\n\
# vector. Direction (forwards or backwards) is determined by the gear.\n\
#\n\
# Zero acceleration means change speed as quickly as\n\
# possible. Positive acceleration may include deceleration as needed\n\
# to match the desired speed. It represents a desired rate and also a\n\
# limit not to exceed.\n\
#\n\
# Zero jerk means change acceleration as quickly as possible. Positive\n\
# jerk describes the desired rate of acceleration change in both\n\
# directions (positive and negative).\n\
#\n\
float32 speed                   # magnitude of velocity vector (m/s)\n\
float32 acceleration            # desired acceleration (m/s^2)\n\
float32 jerk                    # desired jerk (m/s^3)\n\
\n\
# Assumes Ackermann (front-wheel) steering. This angle is the average\n\
# yaw of the two front wheels in the vehicle frame of reference\n\
# (positive left), ignoring their slightly differing angles as if it\n\
# were a tricycle. This is *not* the angle of the steering wheel\n\
# inside the passenger compartment.\n\
#\n\
float32 steering_angle          # steering angle (radians)\n\
\n\
Gear gear                       # requested gear (no change if Naught)\n\
PilotBehavior behavior          # requested pilot behavior\n\
\n\
================================================================================\n\
MSG: art_msgs/Gear\n\
# ART vehicle transmission gear numbers\n\
#\n\
# Used by several different messages.\n\
\n\
# $Id$\n\
\n\
# Gear numbers. \n\
#\n\
# Naught means: reset all Shifter relays; no change of CarDrive gear.\n\
uint8 Naught = 0\n\
uint8 Park = 1\n\
uint8 Reverse = 2\n\
uint8 Neutral = 3\n\
uint8 Drive = 4\n\
uint8 N_gears = 5\n\
\n\
uint8 value		# requested or reported gear number\n\
\n\
================================================================================\n\
MSG: art_msgs/PilotBehavior\n\
# ART autonomous vehicle pilot node behaviors.\n\
#\n\
# Normally, the pilot node does Run, continually sending commands to\n\
# the servo device actuators and monitoring their state.  With Pause,\n\
# the pilot becomes passive, allowing a learning algorithm or human\n\
# controller direct access to those devices.  In the Off state,\n\
# various devices are shut down: the transmission in Park, the brake\n\
# released, the throttle at idle.  The engine is not turned off, but\n\
# it could be.\n\
\n\
# $Id$\n\
\n\
# Behavior value\n\
uint8 value\n\
\n\
# Behavior numbers:\n\
uint8 Run = 0                   # normal driving\n\
uint8 Pause = 1                 # stop issuing servo commands\n\
uint8 Off = 2                   # turn off devices\n\
uint8 N_behaviors = 3\n\
\n\
";
  }

  static const char* value(const  ::art_msgs::PilotState_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator> struct HasHeader< ::art_msgs::PilotState_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct HasHeader< const ::art_msgs::PilotState_<ContainerAllocator> > : public TrueType {};
} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::art_msgs::PilotState_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.header);
    stream.next(m.pilot);
    stream.next(m.brake);
    stream.next(m.imu);
    stream.next(m.odom);
    stream.next(m.shifter);
    stream.next(m.steering);
    stream.next(m.throttle);
    stream.next(m.preempted);
    stream.next(m.target);
    stream.next(m.plan);
    stream.next(m.current);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER;
}; // struct PilotState_
} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::art_msgs::PilotState_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const  ::art_msgs::PilotState_<ContainerAllocator> & v) 
  {
    s << indent << "header: ";
s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "pilot: ";
s << std::endl;
    Printer< ::art_msgs::DriverState_<ContainerAllocator> >::stream(s, indent + "  ", v.pilot);
    s << indent << "brake: ";
s << std::endl;
    Printer< ::art_msgs::DriverState_<ContainerAllocator> >::stream(s, indent + "  ", v.brake);
    s << indent << "imu: ";
s << std::endl;
    Printer< ::art_msgs::DriverState_<ContainerAllocator> >::stream(s, indent + "  ", v.imu);
    s << indent << "odom: ";
s << std::endl;
    Printer< ::art_msgs::DriverState_<ContainerAllocator> >::stream(s, indent + "  ", v.odom);
    s << indent << "shifter: ";
s << std::endl;
    Printer< ::art_msgs::DriverState_<ContainerAllocator> >::stream(s, indent + "  ", v.shifter);
    s << indent << "steering: ";
s << std::endl;
    Printer< ::art_msgs::DriverState_<ContainerAllocator> >::stream(s, indent + "  ", v.steering);
    s << indent << "throttle: ";
s << std::endl;
    Printer< ::art_msgs::DriverState_<ContainerAllocator> >::stream(s, indent + "  ", v.throttle);
    s << indent << "preempted: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.preempted);
    s << indent << "target: ";
s << std::endl;
    Printer< ::art_msgs::CarDrive_<ContainerAllocator> >::stream(s, indent + "  ", v.target);
    s << indent << "plan: ";
s << std::endl;
    Printer< ::art_msgs::CarDrive_<ContainerAllocator> >::stream(s, indent + "  ", v.plan);
    s << indent << "current: ";
s << std::endl;
    Printer< ::art_msgs::CarDrive_<ContainerAllocator> >::stream(s, indent + "  ", v.current);
  }
};


} // namespace message_operations
} // namespace ros

#endif // ART_MSGS_MESSAGE_PILOTSTATE_H

