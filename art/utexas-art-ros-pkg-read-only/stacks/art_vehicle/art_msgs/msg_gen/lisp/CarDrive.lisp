; Auto-generated. Do not edit!


(cl:in-package art_msgs-msg)


;//! \htmlinclude CarDrive.msg.html

(cl:defclass <CarDrive> (roslisp-msg-protocol:ros-message)
  ((speed
    :reader speed
    :initarg :speed
    :type cl:float
    :initform 0.0)
   (acceleration
    :reader acceleration
    :initarg :acceleration
    :type cl:float
    :initform 0.0)
   (jerk
    :reader jerk
    :initarg :jerk
    :type cl:float
    :initform 0.0)
   (steering_angle
    :reader steering_angle
    :initarg :steering_angle
    :type cl:float
    :initform 0.0)
   (gear
    :reader gear
    :initarg :gear
    :type art_msgs-msg:Gear
    :initform (cl:make-instance 'art_msgs-msg:Gear))
   (behavior
    :reader behavior
    :initarg :behavior
    :type art_msgs-msg:PilotBehavior
    :initform (cl:make-instance 'art_msgs-msg:PilotBehavior)))
)

(cl:defclass CarDrive (<CarDrive>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CarDrive>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CarDrive)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name art_msgs-msg:<CarDrive> is deprecated: use art_msgs-msg:CarDrive instead.")))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <CarDrive>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader art_msgs-msg:speed-val is deprecated.  Use art_msgs-msg:speed instead.")
  (speed m))

(cl:ensure-generic-function 'acceleration-val :lambda-list '(m))
(cl:defmethod acceleration-val ((m <CarDrive>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader art_msgs-msg:acceleration-val is deprecated.  Use art_msgs-msg:acceleration instead.")
  (acceleration m))

(cl:ensure-generic-function 'jerk-val :lambda-list '(m))
(cl:defmethod jerk-val ((m <CarDrive>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader art_msgs-msg:jerk-val is deprecated.  Use art_msgs-msg:jerk instead.")
  (jerk m))

(cl:ensure-generic-function 'steering_angle-val :lambda-list '(m))
(cl:defmethod steering_angle-val ((m <CarDrive>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader art_msgs-msg:steering_angle-val is deprecated.  Use art_msgs-msg:steering_angle instead.")
  (steering_angle m))

(cl:ensure-generic-function 'gear-val :lambda-list '(m))
(cl:defmethod gear-val ((m <CarDrive>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader art_msgs-msg:gear-val is deprecated.  Use art_msgs-msg:gear instead.")
  (gear m))

(cl:ensure-generic-function 'behavior-val :lambda-list '(m))
(cl:defmethod behavior-val ((m <CarDrive>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader art_msgs-msg:behavior-val is deprecated.  Use art_msgs-msg:behavior instead.")
  (behavior m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CarDrive>) ostream)
  "Serializes a message object of type '<CarDrive>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'acceleration))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'jerk))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'steering_angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'gear) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'behavior) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CarDrive>) istream)
  "Deserializes a message object of type '<CarDrive>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'acceleration) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'jerk) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'steering_angle) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'gear) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'behavior) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CarDrive>)))
  "Returns string type for a message object of type '<CarDrive>"
  "art_msgs/CarDrive")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CarDrive)))
  "Returns string type for a message object of type 'CarDrive"
  "art_msgs/CarDrive")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CarDrive>)))
  "Returns md5sum for a message object of type '<CarDrive>"
  "977b12f7daeec4c2a2276732baf95662")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CarDrive)))
  "Returns md5sum for a message object of type 'CarDrive"
  "977b12f7daeec4c2a2276732baf95662")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CarDrive>)))
  "Returns full string definition for message of type '<CarDrive>"
  (cl:format cl:nil "# Driving command for a car-like vehicle using Ackermann steering.~%# $Id: CarDrive.msg 1539 2011-05-09 04:09:20Z jack.oquin $~%~%# Drive at requested speed, acceleration and jerk (the 1st, 2nd and~%# 3rd derivatives of position). All are non-negative scalars. ~%#~%# Speed is defined as the scalar magnitude of the velocity~%# vector. Direction (forwards or backwards) is determined by the gear.~%#~%# Zero acceleration means change speed as quickly as~%# possible. Positive acceleration may include deceleration as needed~%# to match the desired speed. It represents a desired rate and also a~%# limit not to exceed.~%#~%# Zero jerk means change acceleration as quickly as possible. Positive~%# jerk describes the desired rate of acceleration change in both~%# directions (positive and negative).~%#~%float32 speed                   # magnitude of velocity vector (m/s)~%float32 acceleration            # desired acceleration (m/s^2)~%float32 jerk                    # desired jerk (m/s^3)~%~%# Assumes Ackermann (front-wheel) steering. This angle is the average~%# yaw of the two front wheels in the vehicle frame of reference~%# (positive left), ignoring their slightly differing angles as if it~%# were a tricycle. This is *not* the angle of the steering wheel~%# inside the passenger compartment.~%#~%float32 steering_angle          # steering angle (radians)~%~%Gear gear                       # requested gear (no change if Naught)~%PilotBehavior behavior          # requested pilot behavior~%~%================================================================================~%MSG: art_msgs/Gear~%# ART vehicle transmission gear numbers~%#~%# Used by several different messages.~%~%# $Id: Gear.msg 1539 2011-05-09 04:09:20Z jack.oquin $~%~%# Gear numbers. ~%#~%# Naught means: reset all Shifter relays; no change of CarDrive gear.~%uint8 Naught = 0~%uint8 Park = 1~%uint8 Reverse = 2~%uint8 Neutral = 3~%uint8 Drive = 4~%uint8 N_gears = 5~%~%uint8 value		# requested or reported gear number~%~%================================================================================~%MSG: art_msgs/PilotBehavior~%# ART autonomous vehicle pilot node behaviors.~%#~%# Normally, the pilot node does Run, continually sending commands to~%# the servo device actuators and monitoring their state.  With Pause,~%# the pilot becomes passive, allowing a learning algorithm or human~%# controller direct access to those devices.  In the Off state,~%# various devices are shut down: the transmission in Park, the brake~%# released, the throttle at idle.  The engine is not turned off, but~%# it could be.~%~%# $Id: PilotBehavior.msg 1539 2011-05-09 04:09:20Z jack.oquin $~%~%# Behavior value~%uint8 value~%~%# Behavior numbers:~%uint8 Run = 0                   # normal driving~%uint8 Pause = 1                 # stop issuing servo commands~%uint8 Off = 2                   # turn off devices~%uint8 N_behaviors = 3~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CarDrive)))
  "Returns full string definition for message of type 'CarDrive"
  (cl:format cl:nil "# Driving command for a car-like vehicle using Ackermann steering.~%# $Id: CarDrive.msg 1539 2011-05-09 04:09:20Z jack.oquin $~%~%# Drive at requested speed, acceleration and jerk (the 1st, 2nd and~%# 3rd derivatives of position). All are non-negative scalars. ~%#~%# Speed is defined as the scalar magnitude of the velocity~%# vector. Direction (forwards or backwards) is determined by the gear.~%#~%# Zero acceleration means change speed as quickly as~%# possible. Positive acceleration may include deceleration as needed~%# to match the desired speed. It represents a desired rate and also a~%# limit not to exceed.~%#~%# Zero jerk means change acceleration as quickly as possible. Positive~%# jerk describes the desired rate of acceleration change in both~%# directions (positive and negative).~%#~%float32 speed                   # magnitude of velocity vector (m/s)~%float32 acceleration            # desired acceleration (m/s^2)~%float32 jerk                    # desired jerk (m/s^3)~%~%# Assumes Ackermann (front-wheel) steering. This angle is the average~%# yaw of the two front wheels in the vehicle frame of reference~%# (positive left), ignoring their slightly differing angles as if it~%# were a tricycle. This is *not* the angle of the steering wheel~%# inside the passenger compartment.~%#~%float32 steering_angle          # steering angle (radians)~%~%Gear gear                       # requested gear (no change if Naught)~%PilotBehavior behavior          # requested pilot behavior~%~%================================================================================~%MSG: art_msgs/Gear~%# ART vehicle transmission gear numbers~%#~%# Used by several different messages.~%~%# $Id: Gear.msg 1539 2011-05-09 04:09:20Z jack.oquin $~%~%# Gear numbers. ~%#~%# Naught means: reset all Shifter relays; no change of CarDrive gear.~%uint8 Naught = 0~%uint8 Park = 1~%uint8 Reverse = 2~%uint8 Neutral = 3~%uint8 Drive = 4~%uint8 N_gears = 5~%~%uint8 value		# requested or reported gear number~%~%================================================================================~%MSG: art_msgs/PilotBehavior~%# ART autonomous vehicle pilot node behaviors.~%#~%# Normally, the pilot node does Run, continually sending commands to~%# the servo device actuators and monitoring their state.  With Pause,~%# the pilot becomes passive, allowing a learning algorithm or human~%# controller direct access to those devices.  In the Off state,~%# various devices are shut down: the transmission in Park, the brake~%# released, the throttle at idle.  The engine is not turned off, but~%# it could be.~%~%# $Id: PilotBehavior.msg 1539 2011-05-09 04:09:20Z jack.oquin $~%~%# Behavior value~%uint8 value~%~%# Behavior numbers:~%uint8 Run = 0                   # normal driving~%uint8 Pause = 1                 # stop issuing servo commands~%uint8 Off = 2                   # turn off devices~%uint8 N_behaviors = 3~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CarDrive>))
  (cl:+ 0
     4
     4
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'gear))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'behavior))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CarDrive>))
  "Converts a ROS message object to a list"
  (cl:list 'CarDrive
    (cl:cons ':speed (speed msg))
    (cl:cons ':acceleration (acceleration msg))
    (cl:cons ':jerk (jerk msg))
    (cl:cons ':steering_angle (steering_angle msg))
    (cl:cons ':gear (gear msg))
    (cl:cons ':behavior (behavior msg))
))
