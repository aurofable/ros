; Auto-generated. Do not edit!


(cl:in-package art_msgs-msg)


;//! \htmlinclude SteeringState.msg.html

(cl:defclass <SteeringState> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (driver
    :reader driver
    :initarg :driver
    :type art_msgs-msg:DriverState
    :initform (cl:make-instance 'art_msgs-msg:DriverState))
   (angle
    :reader angle
    :initarg :angle
    :type cl:float
    :initform 0.0)
   (sensor
    :reader sensor
    :initarg :sensor
    :type cl:float
    :initform 0.0))
)

(cl:defclass SteeringState (<SteeringState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SteeringState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SteeringState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name art_msgs-msg:<SteeringState> is deprecated: use art_msgs-msg:SteeringState instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <SteeringState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader art_msgs-msg:header-val is deprecated.  Use art_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'driver-val :lambda-list '(m))
(cl:defmethod driver-val ((m <SteeringState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader art_msgs-msg:driver-val is deprecated.  Use art_msgs-msg:driver instead.")
  (driver m))

(cl:ensure-generic-function 'angle-val :lambda-list '(m))
(cl:defmethod angle-val ((m <SteeringState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader art_msgs-msg:angle-val is deprecated.  Use art_msgs-msg:angle instead.")
  (angle m))

(cl:ensure-generic-function 'sensor-val :lambda-list '(m))
(cl:defmethod sensor-val ((m <SteeringState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader art_msgs-msg:sensor-val is deprecated.  Use art_msgs-msg:sensor instead.")
  (sensor m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SteeringState>) ostream)
  "Serializes a message object of type '<SteeringState>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'driver) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'sensor))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SteeringState>) istream)
  "Deserializes a message object of type '<SteeringState>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'driver) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angle) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'sensor) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SteeringState>)))
  "Returns string type for a message object of type '<SteeringState>"
  "art_msgs/SteeringState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SteeringState)))
  "Returns string type for a message object of type 'SteeringState"
  "art_msgs/SteeringState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SteeringState>)))
  "Returns md5sum for a message object of type '<SteeringState>"
  "7bf11da138f80579d285d99bea47f6d3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SteeringState)))
  "Returns md5sum for a message object of type 'SteeringState"
  "7bf11da138f80579d285d99bea47f6d3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SteeringState>)))
  "Returns full string definition for message of type '<SteeringState>"
  (cl:format cl:nil "# ART steering controller state message~%~%# $Id: SteeringState.msg 1161 2011-03-26 02:10:49Z jack.oquin $~%~%Header  header~%~%DriverState driver              # driver state~%float32 angle                   # steering angle in degrees~%float32 sensor                  # steering sensor voltage~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: art_msgs/DriverState~%# ART driver states -- similar to those in driver_base.~%~%# $Id: DriverState.msg 1161 2011-03-26 02:10:49Z jack.oquin $~%~%# constants~%uint32 CLOSED = 0       # Not connected to the hardware~%uint32 OPENED = 1       # Passively connected to the hardware~%uint32 RUNNING = 2      # Sending hardware commands~%~%uint32 state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SteeringState)))
  "Returns full string definition for message of type 'SteeringState"
  (cl:format cl:nil "# ART steering controller state message~%~%# $Id: SteeringState.msg 1161 2011-03-26 02:10:49Z jack.oquin $~%~%Header  header~%~%DriverState driver              # driver state~%float32 angle                   # steering angle in degrees~%float32 sensor                  # steering sensor voltage~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: art_msgs/DriverState~%# ART driver states -- similar to those in driver_base.~%~%# $Id: DriverState.msg 1161 2011-03-26 02:10:49Z jack.oquin $~%~%# constants~%uint32 CLOSED = 0       # Not connected to the hardware~%uint32 OPENED = 1       # Passively connected to the hardware~%uint32 RUNNING = 2      # Sending hardware commands~%~%uint32 state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SteeringState>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'driver))
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SteeringState>))
  "Converts a ROS message object to a list"
  (cl:list 'SteeringState
    (cl:cons ':header (header msg))
    (cl:cons ':driver (driver msg))
    (cl:cons ':angle (angle msg))
    (cl:cons ':sensor (sensor msg))
))
