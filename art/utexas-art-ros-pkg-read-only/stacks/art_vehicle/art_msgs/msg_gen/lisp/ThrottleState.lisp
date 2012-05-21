; Auto-generated. Do not edit!


(cl:in-package art_msgs-msg)


;//! \htmlinclude ThrottleState.msg.html

(cl:defclass <ThrottleState> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (position
    :reader position
    :initarg :position
    :type cl:float
    :initform 0.0)
   (rpms
    :reader rpms
    :initarg :rpms
    :type cl:float
    :initform 0.0)
   (estop
    :reader estop
    :initarg :estop
    :type cl:fixnum
    :initform 0)
   (pwm
    :reader pwm
    :initarg :pwm
    :type cl:float
    :initform 0.0)
   (dstate
    :reader dstate
    :initarg :dstate
    :type cl:float
    :initform 0.0)
   (istate
    :reader istate
    :initarg :istate
    :type cl:float
    :initform 0.0))
)

(cl:defclass ThrottleState (<ThrottleState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ThrottleState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ThrottleState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name art_msgs-msg:<ThrottleState> is deprecated: use art_msgs-msg:ThrottleState instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ThrottleState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader art_msgs-msg:header-val is deprecated.  Use art_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <ThrottleState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader art_msgs-msg:position-val is deprecated.  Use art_msgs-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'rpms-val :lambda-list '(m))
(cl:defmethod rpms-val ((m <ThrottleState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader art_msgs-msg:rpms-val is deprecated.  Use art_msgs-msg:rpms instead.")
  (rpms m))

(cl:ensure-generic-function 'estop-val :lambda-list '(m))
(cl:defmethod estop-val ((m <ThrottleState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader art_msgs-msg:estop-val is deprecated.  Use art_msgs-msg:estop instead.")
  (estop m))

(cl:ensure-generic-function 'pwm-val :lambda-list '(m))
(cl:defmethod pwm-val ((m <ThrottleState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader art_msgs-msg:pwm-val is deprecated.  Use art_msgs-msg:pwm instead.")
  (pwm m))

(cl:ensure-generic-function 'dstate-val :lambda-list '(m))
(cl:defmethod dstate-val ((m <ThrottleState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader art_msgs-msg:dstate-val is deprecated.  Use art_msgs-msg:dstate instead.")
  (dstate m))

(cl:ensure-generic-function 'istate-val :lambda-list '(m))
(cl:defmethod istate-val ((m <ThrottleState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader art_msgs-msg:istate-val is deprecated.  Use art_msgs-msg:istate instead.")
  (istate m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ThrottleState>) ostream)
  "Serializes a message object of type '<ThrottleState>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'position))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'rpms))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'estop)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'pwm))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'dstate))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'istate))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ThrottleState>) istream)
  "Deserializes a message object of type '<ThrottleState>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'position) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rpms) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'estop)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pwm) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dstate) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'istate) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ThrottleState>)))
  "Returns string type for a message object of type '<ThrottleState>"
  "art_msgs/ThrottleState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ThrottleState)))
  "Returns string type for a message object of type 'ThrottleState"
  "art_msgs/ThrottleState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ThrottleState>)))
  "Returns md5sum for a message object of type '<ThrottleState>"
  "5b1c64434e6ebe49625631607b188cd5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ThrottleState)))
  "Returns md5sum for a message object of type 'ThrottleState"
  "5b1c64434e6ebe49625631607b188cd5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ThrottleState>)))
  "Returns full string definition for message of type '<ThrottleState>"
  (cl:format cl:nil "# ART throttle controller state message~%~%# $Id: ThrottleState.msg 644 2010-09-28 03:19:07Z jack.oquin $~%~%Header  header~%~%float32 position                # fractional position [0, 1]~%float32 rpms                    # engine speed (rev/min)~%uint8   estop                   # emergency stop indicator~%~%# optional extra diagnostic information:~%float32 pwm                     # Pulse Width Modulation value~%float32 dstate                  # PID derivative state~%float32 istate                  # PID integral state~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ThrottleState)))
  "Returns full string definition for message of type 'ThrottleState"
  (cl:format cl:nil "# ART throttle controller state message~%~%# $Id: ThrottleState.msg 644 2010-09-28 03:19:07Z jack.oquin $~%~%Header  header~%~%float32 position                # fractional position [0, 1]~%float32 rpms                    # engine speed (rev/min)~%uint8   estop                   # emergency stop indicator~%~%# optional extra diagnostic information:~%float32 pwm                     # Pulse Width Modulation value~%float32 dstate                  # PID derivative state~%float32 istate                  # PID integral state~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ThrottleState>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     1
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ThrottleState>))
  "Converts a ROS message object to a list"
  (cl:list 'ThrottleState
    (cl:cons ':header (header msg))
    (cl:cons ':position (position msg))
    (cl:cons ':rpms (rpms msg))
    (cl:cons ':estop (estop msg))
    (cl:cons ':pwm (pwm msg))
    (cl:cons ':dstate (dstate msg))
    (cl:cons ':istate (istate msg))
))
