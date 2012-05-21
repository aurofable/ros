; Auto-generated. Do not edit!


(cl:in-package art_msgs-msg)


;//! \htmlinclude CarDriveStamped.msg.html

(cl:defclass <CarDriveStamped> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (control
    :reader control
    :initarg :control
    :type art_msgs-msg:CarDrive
    :initform (cl:make-instance 'art_msgs-msg:CarDrive)))
)

(cl:defclass CarDriveStamped (<CarDriveStamped>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CarDriveStamped>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CarDriveStamped)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name art_msgs-msg:<CarDriveStamped> is deprecated: use art_msgs-msg:CarDriveStamped instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <CarDriveStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader art_msgs-msg:header-val is deprecated.  Use art_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'control-val :lambda-list '(m))
(cl:defmethod control-val ((m <CarDriveStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader art_msgs-msg:control-val is deprecated.  Use art_msgs-msg:control instead.")
  (control m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CarDriveStamped>) ostream)
  "Serializes a message object of type '<CarDriveStamped>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'control) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CarDriveStamped>) istream)
  "Deserializes a message object of type '<CarDriveStamped>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'control) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CarDriveStamped>)))
  "Returns string type for a message object of type '<CarDriveStamped>"
  "art_msgs/CarDriveStamped")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CarDriveStamped)))
  "Returns string type for a message object of type 'CarDriveStamped"
  "art_msgs/CarDriveStamped")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CarDriveStamped>)))
  "Returns md5sum for a message object of type '<CarDriveStamped>"
  "d243ac5e38754a52c8788d4d37db7a05")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CarDriveStamped)))
  "Returns md5sum for a message object of type 'CarDriveStamped"
  "d243ac5e38754a52c8788d4d37db7a05")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CarDriveStamped>)))
  "Returns full string definition for message of type '<CarDriveStamped>"
  (cl:format cl:nil "# CarDrive message with timestamp.~%# $Id: CarDriveStamped.msg 1539 2011-05-09 04:09:20Z jack.oquin $~%~%Header    header~%CarDrive  control~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: art_msgs/CarDrive~%# Driving command for a car-like vehicle using Ackermann steering.~%# $Id: CarDrive.msg 1539 2011-05-09 04:09:20Z jack.oquin $~%~%# Drive at requested speed, acceleration and jerk (the 1st, 2nd and~%# 3rd derivatives of position). All are non-negative scalars. ~%#~%# Speed is defined as the scalar magnitude of the velocity~%# vector. Direction (forwards or backwards) is determined by the gear.~%#~%# Zero acceleration means change speed as quickly as~%# possible. Positive acceleration may include deceleration as needed~%# to match the desired speed. It represents a desired rate and also a~%# limit not to exceed.~%#~%# Zero jerk means change acceleration as quickly as possible. Positive~%# jerk describes the desired rate of acceleration change in both~%# directions (positive and negative).~%#~%float32 speed                   # magnitude of velocity vector (m/s)~%float32 acceleration            # desired acceleration (m/s^2)~%float32 jerk                    # desired jerk (m/s^3)~%~%# Assumes Ackermann (front-wheel) steering. This angle is the average~%# yaw of the two front wheels in the vehicle frame of reference~%# (positive left), ignoring their slightly differing angles as if it~%# were a tricycle. This is *not* the angle of the steering wheel~%# inside the passenger compartment.~%#~%float32 steering_angle          # steering angle (radians)~%~%Gear gear                       # requested gear (no change if Naught)~%PilotBehavior behavior          # requested pilot behavior~%~%================================================================================~%MSG: art_msgs/Gear~%# ART vehicle transmission gear numbers~%#~%# Used by several different messages.~%~%# $Id: Gear.msg 1539 2011-05-09 04:09:20Z jack.oquin $~%~%# Gear numbers. ~%#~%# Naught means: reset all Shifter relays; no change of CarDrive gear.~%uint8 Naught = 0~%uint8 Park = 1~%uint8 Reverse = 2~%uint8 Neutral = 3~%uint8 Drive = 4~%uint8 N_gears = 5~%~%uint8 value		# requested or reported gear number~%~%================================================================================~%MSG: art_msgs/PilotBehavior~%# ART autonomous vehicle pilot node behaviors.~%#~%# Normally, the pilot node does Run, continually sending commands to~%# the servo device actuators and monitoring their state.  With Pause,~%# the pilot becomes passive, allowing a learning algorithm or human~%# controller direct access to those devices.  In the Off state,~%# various devices are shut down: the transmission in Park, the brake~%# released, the throttle at idle.  The engine is not turned off, but~%# it could be.~%~%# $Id: PilotBehavior.msg 1539 2011-05-09 04:09:20Z jack.oquin $~%~%# Behavior value~%uint8 value~%~%# Behavior numbers:~%uint8 Run = 0                   # normal driving~%uint8 Pause = 1                 # stop issuing servo commands~%uint8 Off = 2                   # turn off devices~%uint8 N_behaviors = 3~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CarDriveStamped)))
  "Returns full string definition for message of type 'CarDriveStamped"
  (cl:format cl:nil "# CarDrive message with timestamp.~%# $Id: CarDriveStamped.msg 1539 2011-05-09 04:09:20Z jack.oquin $~%~%Header    header~%CarDrive  control~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: art_msgs/CarDrive~%# Driving command for a car-like vehicle using Ackermann steering.~%# $Id: CarDrive.msg 1539 2011-05-09 04:09:20Z jack.oquin $~%~%# Drive at requested speed, acceleration and jerk (the 1st, 2nd and~%# 3rd derivatives of position). All are non-negative scalars. ~%#~%# Speed is defined as the scalar magnitude of the velocity~%# vector. Direction (forwards or backwards) is determined by the gear.~%#~%# Zero acceleration means change speed as quickly as~%# possible. Positive acceleration may include deceleration as needed~%# to match the desired speed. It represents a desired rate and also a~%# limit not to exceed.~%#~%# Zero jerk means change acceleration as quickly as possible. Positive~%# jerk describes the desired rate of acceleration change in both~%# directions (positive and negative).~%#~%float32 speed                   # magnitude of velocity vector (m/s)~%float32 acceleration            # desired acceleration (m/s^2)~%float32 jerk                    # desired jerk (m/s^3)~%~%# Assumes Ackermann (front-wheel) steering. This angle is the average~%# yaw of the two front wheels in the vehicle frame of reference~%# (positive left), ignoring their slightly differing angles as if it~%# were a tricycle. This is *not* the angle of the steering wheel~%# inside the passenger compartment.~%#~%float32 steering_angle          # steering angle (radians)~%~%Gear gear                       # requested gear (no change if Naught)~%PilotBehavior behavior          # requested pilot behavior~%~%================================================================================~%MSG: art_msgs/Gear~%# ART vehicle transmission gear numbers~%#~%# Used by several different messages.~%~%# $Id: Gear.msg 1539 2011-05-09 04:09:20Z jack.oquin $~%~%# Gear numbers. ~%#~%# Naught means: reset all Shifter relays; no change of CarDrive gear.~%uint8 Naught = 0~%uint8 Park = 1~%uint8 Reverse = 2~%uint8 Neutral = 3~%uint8 Drive = 4~%uint8 N_gears = 5~%~%uint8 value		# requested or reported gear number~%~%================================================================================~%MSG: art_msgs/PilotBehavior~%# ART autonomous vehicle pilot node behaviors.~%#~%# Normally, the pilot node does Run, continually sending commands to~%# the servo device actuators and monitoring their state.  With Pause,~%# the pilot becomes passive, allowing a learning algorithm or human~%# controller direct access to those devices.  In the Off state,~%# various devices are shut down: the transmission in Park, the brake~%# released, the throttle at idle.  The engine is not turned off, but~%# it could be.~%~%# $Id: PilotBehavior.msg 1539 2011-05-09 04:09:20Z jack.oquin $~%~%# Behavior value~%uint8 value~%~%# Behavior numbers:~%uint8 Run = 0                   # normal driving~%uint8 Pause = 1                 # stop issuing servo commands~%uint8 Off = 2                   # turn off devices~%uint8 N_behaviors = 3~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CarDriveStamped>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'control))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CarDriveStamped>))
  "Converts a ROS message object to a list"
  (cl:list 'CarDriveStamped
    (cl:cons ':header (header msg))
    (cl:cons ':control (control msg))
))
