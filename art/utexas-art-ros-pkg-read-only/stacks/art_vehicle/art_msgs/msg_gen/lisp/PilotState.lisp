; Auto-generated. Do not edit!


(cl:in-package art_msgs-msg)


;//! \htmlinclude PilotState.msg.html

(cl:defclass <PilotState> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (pilot
    :reader pilot
    :initarg :pilot
    :type art_msgs-msg:DriverState
    :initform (cl:make-instance 'art_msgs-msg:DriverState))
   (brake
    :reader brake
    :initarg :brake
    :type art_msgs-msg:DriverState
    :initform (cl:make-instance 'art_msgs-msg:DriverState))
   (imu
    :reader imu
    :initarg :imu
    :type art_msgs-msg:DriverState
    :initform (cl:make-instance 'art_msgs-msg:DriverState))
   (odom
    :reader odom
    :initarg :odom
    :type art_msgs-msg:DriverState
    :initform (cl:make-instance 'art_msgs-msg:DriverState))
   (shifter
    :reader shifter
    :initarg :shifter
    :type art_msgs-msg:DriverState
    :initform (cl:make-instance 'art_msgs-msg:DriverState))
   (steering
    :reader steering
    :initarg :steering
    :type art_msgs-msg:DriverState
    :initform (cl:make-instance 'art_msgs-msg:DriverState))
   (throttle
    :reader throttle
    :initarg :throttle
    :type art_msgs-msg:DriverState
    :initform (cl:make-instance 'art_msgs-msg:DriverState))
   (preempted
    :reader preempted
    :initarg :preempted
    :type cl:boolean
    :initform cl:nil)
   (target
    :reader target
    :initarg :target
    :type art_msgs-msg:CarDrive
    :initform (cl:make-instance 'art_msgs-msg:CarDrive))
   (plan
    :reader plan
    :initarg :plan
    :type art_msgs-msg:CarDrive
    :initform (cl:make-instance 'art_msgs-msg:CarDrive))
   (current
    :reader current
    :initarg :current
    :type art_msgs-msg:CarDrive
    :initform (cl:make-instance 'art_msgs-msg:CarDrive)))
)

(cl:defclass PilotState (<PilotState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PilotState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PilotState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name art_msgs-msg:<PilotState> is deprecated: use art_msgs-msg:PilotState instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <PilotState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader art_msgs-msg:header-val is deprecated.  Use art_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'pilot-val :lambda-list '(m))
(cl:defmethod pilot-val ((m <PilotState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader art_msgs-msg:pilot-val is deprecated.  Use art_msgs-msg:pilot instead.")
  (pilot m))

(cl:ensure-generic-function 'brake-val :lambda-list '(m))
(cl:defmethod brake-val ((m <PilotState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader art_msgs-msg:brake-val is deprecated.  Use art_msgs-msg:brake instead.")
  (brake m))

(cl:ensure-generic-function 'imu-val :lambda-list '(m))
(cl:defmethod imu-val ((m <PilotState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader art_msgs-msg:imu-val is deprecated.  Use art_msgs-msg:imu instead.")
  (imu m))

(cl:ensure-generic-function 'odom-val :lambda-list '(m))
(cl:defmethod odom-val ((m <PilotState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader art_msgs-msg:odom-val is deprecated.  Use art_msgs-msg:odom instead.")
  (odom m))

(cl:ensure-generic-function 'shifter-val :lambda-list '(m))
(cl:defmethod shifter-val ((m <PilotState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader art_msgs-msg:shifter-val is deprecated.  Use art_msgs-msg:shifter instead.")
  (shifter m))

(cl:ensure-generic-function 'steering-val :lambda-list '(m))
(cl:defmethod steering-val ((m <PilotState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader art_msgs-msg:steering-val is deprecated.  Use art_msgs-msg:steering instead.")
  (steering m))

(cl:ensure-generic-function 'throttle-val :lambda-list '(m))
(cl:defmethod throttle-val ((m <PilotState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader art_msgs-msg:throttle-val is deprecated.  Use art_msgs-msg:throttle instead.")
  (throttle m))

(cl:ensure-generic-function 'preempted-val :lambda-list '(m))
(cl:defmethod preempted-val ((m <PilotState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader art_msgs-msg:preempted-val is deprecated.  Use art_msgs-msg:preempted instead.")
  (preempted m))

(cl:ensure-generic-function 'target-val :lambda-list '(m))
(cl:defmethod target-val ((m <PilotState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader art_msgs-msg:target-val is deprecated.  Use art_msgs-msg:target instead.")
  (target m))

(cl:ensure-generic-function 'plan-val :lambda-list '(m))
(cl:defmethod plan-val ((m <PilotState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader art_msgs-msg:plan-val is deprecated.  Use art_msgs-msg:plan instead.")
  (plan m))

(cl:ensure-generic-function 'current-val :lambda-list '(m))
(cl:defmethod current-val ((m <PilotState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader art_msgs-msg:current-val is deprecated.  Use art_msgs-msg:current instead.")
  (current m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PilotState>) ostream)
  "Serializes a message object of type '<PilotState>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pilot) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'brake) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'imu) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'odom) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'shifter) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'steering) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'throttle) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'preempted) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'target) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'plan) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'current) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PilotState>) istream)
  "Deserializes a message object of type '<PilotState>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pilot) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'brake) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'imu) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'odom) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'shifter) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'steering) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'throttle) istream)
    (cl:setf (cl:slot-value msg 'preempted) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'target) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'plan) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'current) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PilotState>)))
  "Returns string type for a message object of type '<PilotState>"
  "art_msgs/PilotState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PilotState)))
  "Returns string type for a message object of type 'PilotState"
  "art_msgs/PilotState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PilotState>)))
  "Returns md5sum for a message object of type '<PilotState>"
  "c177b89612055fab019341d1fcc8bc65")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PilotState)))
  "Returns md5sum for a message object of type 'PilotState"
  "c177b89612055fab019341d1fcc8bc65")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PilotState>)))
  "Returns full string definition for message of type '<PilotState>"
  (cl:format cl:nil "# ART pilot state message~%~%# $Id: PilotState.msg 1541 2011-05-09 19:07:23Z jack.oquin $~%~%Header  header~%~%DriverState pilot               # pilot state~%~%# current states of individual devices~%# (considered CLOSED if device not publishing)~%DriverState brake~%DriverState imu~%DriverState odom~%DriverState shifter~%DriverState steering~%DriverState throttle~%~%# true if pilot preempted for learning speed control~%bool preempted~%~%# latest commanded goal and current status~%CarDrive target                 # current command~%CarDrive plan                   # intermediate goal~%CarDrive current                # current status~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: art_msgs/DriverState~%# ART driver states -- similar to those in driver_base.~%~%# $Id: DriverState.msg 1161 2011-03-26 02:10:49Z jack.oquin $~%~%# constants~%uint32 CLOSED = 0       # Not connected to the hardware~%uint32 OPENED = 1       # Passively connected to the hardware~%uint32 RUNNING = 2      # Sending hardware commands~%~%uint32 state~%~%================================================================================~%MSG: art_msgs/CarDrive~%# Driving command for a car-like vehicle using Ackermann steering.~%# $Id: CarDrive.msg 1539 2011-05-09 04:09:20Z jack.oquin $~%~%# Drive at requested speed, acceleration and jerk (the 1st, 2nd and~%# 3rd derivatives of position). All are non-negative scalars. ~%#~%# Speed is defined as the scalar magnitude of the velocity~%# vector. Direction (forwards or backwards) is determined by the gear.~%#~%# Zero acceleration means change speed as quickly as~%# possible. Positive acceleration may include deceleration as needed~%# to match the desired speed. It represents a desired rate and also a~%# limit not to exceed.~%#~%# Zero jerk means change acceleration as quickly as possible. Positive~%# jerk describes the desired rate of acceleration change in both~%# directions (positive and negative).~%#~%float32 speed                   # magnitude of velocity vector (m/s)~%float32 acceleration            # desired acceleration (m/s^2)~%float32 jerk                    # desired jerk (m/s^3)~%~%# Assumes Ackermann (front-wheel) steering. This angle is the average~%# yaw of the two front wheels in the vehicle frame of reference~%# (positive left), ignoring their slightly differing angles as if it~%# were a tricycle. This is *not* the angle of the steering wheel~%# inside the passenger compartment.~%#~%float32 steering_angle          # steering angle (radians)~%~%Gear gear                       # requested gear (no change if Naught)~%PilotBehavior behavior          # requested pilot behavior~%~%================================================================================~%MSG: art_msgs/Gear~%# ART vehicle transmission gear numbers~%#~%# Used by several different messages.~%~%# $Id: Gear.msg 1539 2011-05-09 04:09:20Z jack.oquin $~%~%# Gear numbers. ~%#~%# Naught means: reset all Shifter relays; no change of CarDrive gear.~%uint8 Naught = 0~%uint8 Park = 1~%uint8 Reverse = 2~%uint8 Neutral = 3~%uint8 Drive = 4~%uint8 N_gears = 5~%~%uint8 value		# requested or reported gear number~%~%================================================================================~%MSG: art_msgs/PilotBehavior~%# ART autonomous vehicle pilot node behaviors.~%#~%# Normally, the pilot node does Run, continually sending commands to~%# the servo device actuators and monitoring their state.  With Pause,~%# the pilot becomes passive, allowing a learning algorithm or human~%# controller direct access to those devices.  In the Off state,~%# various devices are shut down: the transmission in Park, the brake~%# released, the throttle at idle.  The engine is not turned off, but~%# it could be.~%~%# $Id: PilotBehavior.msg 1539 2011-05-09 04:09:20Z jack.oquin $~%~%# Behavior value~%uint8 value~%~%# Behavior numbers:~%uint8 Run = 0                   # normal driving~%uint8 Pause = 1                 # stop issuing servo commands~%uint8 Off = 2                   # turn off devices~%uint8 N_behaviors = 3~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PilotState)))
  "Returns full string definition for message of type 'PilotState"
  (cl:format cl:nil "# ART pilot state message~%~%# $Id: PilotState.msg 1541 2011-05-09 19:07:23Z jack.oquin $~%~%Header  header~%~%DriverState pilot               # pilot state~%~%# current states of individual devices~%# (considered CLOSED if device not publishing)~%DriverState brake~%DriverState imu~%DriverState odom~%DriverState shifter~%DriverState steering~%DriverState throttle~%~%# true if pilot preempted for learning speed control~%bool preempted~%~%# latest commanded goal and current status~%CarDrive target                 # current command~%CarDrive plan                   # intermediate goal~%CarDrive current                # current status~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: art_msgs/DriverState~%# ART driver states -- similar to those in driver_base.~%~%# $Id: DriverState.msg 1161 2011-03-26 02:10:49Z jack.oquin $~%~%# constants~%uint32 CLOSED = 0       # Not connected to the hardware~%uint32 OPENED = 1       # Passively connected to the hardware~%uint32 RUNNING = 2      # Sending hardware commands~%~%uint32 state~%~%================================================================================~%MSG: art_msgs/CarDrive~%# Driving command for a car-like vehicle using Ackermann steering.~%# $Id: CarDrive.msg 1539 2011-05-09 04:09:20Z jack.oquin $~%~%# Drive at requested speed, acceleration and jerk (the 1st, 2nd and~%# 3rd derivatives of position). All are non-negative scalars. ~%#~%# Speed is defined as the scalar magnitude of the velocity~%# vector. Direction (forwards or backwards) is determined by the gear.~%#~%# Zero acceleration means change speed as quickly as~%# possible. Positive acceleration may include deceleration as needed~%# to match the desired speed. It represents a desired rate and also a~%# limit not to exceed.~%#~%# Zero jerk means change acceleration as quickly as possible. Positive~%# jerk describes the desired rate of acceleration change in both~%# directions (positive and negative).~%#~%float32 speed                   # magnitude of velocity vector (m/s)~%float32 acceleration            # desired acceleration (m/s^2)~%float32 jerk                    # desired jerk (m/s^3)~%~%# Assumes Ackermann (front-wheel) steering. This angle is the average~%# yaw of the two front wheels in the vehicle frame of reference~%# (positive left), ignoring their slightly differing angles as if it~%# were a tricycle. This is *not* the angle of the steering wheel~%# inside the passenger compartment.~%#~%float32 steering_angle          # steering angle (radians)~%~%Gear gear                       # requested gear (no change if Naught)~%PilotBehavior behavior          # requested pilot behavior~%~%================================================================================~%MSG: art_msgs/Gear~%# ART vehicle transmission gear numbers~%#~%# Used by several different messages.~%~%# $Id: Gear.msg 1539 2011-05-09 04:09:20Z jack.oquin $~%~%# Gear numbers. ~%#~%# Naught means: reset all Shifter relays; no change of CarDrive gear.~%uint8 Naught = 0~%uint8 Park = 1~%uint8 Reverse = 2~%uint8 Neutral = 3~%uint8 Drive = 4~%uint8 N_gears = 5~%~%uint8 value		# requested or reported gear number~%~%================================================================================~%MSG: art_msgs/PilotBehavior~%# ART autonomous vehicle pilot node behaviors.~%#~%# Normally, the pilot node does Run, continually sending commands to~%# the servo device actuators and monitoring their state.  With Pause,~%# the pilot becomes passive, allowing a learning algorithm or human~%# controller direct access to those devices.  In the Off state,~%# various devices are shut down: the transmission in Park, the brake~%# released, the throttle at idle.  The engine is not turned off, but~%# it could be.~%~%# $Id: PilotBehavior.msg 1539 2011-05-09 04:09:20Z jack.oquin $~%~%# Behavior value~%uint8 value~%~%# Behavior numbers:~%uint8 Run = 0                   # normal driving~%uint8 Pause = 1                 # stop issuing servo commands~%uint8 Off = 2                   # turn off devices~%uint8 N_behaviors = 3~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PilotState>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pilot))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'brake))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'imu))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'odom))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'shifter))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'steering))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'throttle))
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'target))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'plan))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'current))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PilotState>))
  "Converts a ROS message object to a list"
  (cl:list 'PilotState
    (cl:cons ':header (header msg))
    (cl:cons ':pilot (pilot msg))
    (cl:cons ':brake (brake msg))
    (cl:cons ':imu (imu msg))
    (cl:cons ':odom (odom msg))
    (cl:cons ':shifter (shifter msg))
    (cl:cons ':steering (steering msg))
    (cl:cons ':throttle (throttle msg))
    (cl:cons ':preempted (preempted msg))
    (cl:cons ':target (target msg))
    (cl:cons ':plan (plan msg))
    (cl:cons ':current (current msg))
))
