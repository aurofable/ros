; Auto-generated. Do not edit!


(cl:in-package art_msgs-msg)


;//! \htmlinclude SteeringDiagnostics.msg.html

(cl:defclass <SteeringDiagnostics> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (encoder
    :reader encoder
    :initarg :encoder
    :type cl:integer
    :initform 0)
   (last_request
    :reader last_request
    :initarg :last_request
    :type cl:integer
    :initform 0)
   (center_ticks
    :reader center_ticks
    :initarg :center_ticks
    :type cl:integer
    :initform 0)
   (status_word
    :reader status_word
    :initarg :status_word
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SteeringDiagnostics (<SteeringDiagnostics>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SteeringDiagnostics>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SteeringDiagnostics)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name art_msgs-msg:<SteeringDiagnostics> is deprecated: use art_msgs-msg:SteeringDiagnostics instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <SteeringDiagnostics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader art_msgs-msg:header-val is deprecated.  Use art_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'encoder-val :lambda-list '(m))
(cl:defmethod encoder-val ((m <SteeringDiagnostics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader art_msgs-msg:encoder-val is deprecated.  Use art_msgs-msg:encoder instead.")
  (encoder m))

(cl:ensure-generic-function 'last_request-val :lambda-list '(m))
(cl:defmethod last_request-val ((m <SteeringDiagnostics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader art_msgs-msg:last_request-val is deprecated.  Use art_msgs-msg:last_request instead.")
  (last_request m))

(cl:ensure-generic-function 'center_ticks-val :lambda-list '(m))
(cl:defmethod center_ticks-val ((m <SteeringDiagnostics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader art_msgs-msg:center_ticks-val is deprecated.  Use art_msgs-msg:center_ticks instead.")
  (center_ticks m))

(cl:ensure-generic-function 'status_word-val :lambda-list '(m))
(cl:defmethod status_word-val ((m <SteeringDiagnostics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader art_msgs-msg:status_word-val is deprecated.  Use art_msgs-msg:status_word instead.")
  (status_word m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SteeringDiagnostics>) ostream)
  "Serializes a message object of type '<SteeringDiagnostics>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'encoder)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'last_request)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'center_ticks)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status_word)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'status_word)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SteeringDiagnostics>) istream)
  "Deserializes a message object of type '<SteeringDiagnostics>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'encoder) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'last_request) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'center_ticks) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status_word)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'status_word)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SteeringDiagnostics>)))
  "Returns string type for a message object of type '<SteeringDiagnostics>"
  "art_msgs/SteeringDiagnostics")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SteeringDiagnostics)))
  "Returns string type for a message object of type 'SteeringDiagnostics"
  "art_msgs/SteeringDiagnostics")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SteeringDiagnostics>)))
  "Returns md5sum for a message object of type '<SteeringDiagnostics>"
  "5dbe64bbef789e785f8333e897956d94")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SteeringDiagnostics)))
  "Returns md5sum for a message object of type 'SteeringDiagnostics"
  "5dbe64bbef789e785f8333e897956d94")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SteeringDiagnostics>)))
  "Returns full string definition for message of type '<SteeringDiagnostics>"
  (cl:format cl:nil "# ART steering controller diagnostics message~%~%# This message contains data not needed for normal operation of the~%# device, but useful for diagnosing problems with it.~%~%# $Id: SteeringDiagnostics.msg 1011 2011-03-03 00:30:42Z jack.oquin $~%~%Header  header~%~%int32 encoder                   # current reported encoder value~%int32 last_request              # last requested encoder value~%int32 center_ticks              # initial center encoder value~%uint16 status_word		# current internal status~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SteeringDiagnostics)))
  "Returns full string definition for message of type 'SteeringDiagnostics"
  (cl:format cl:nil "# ART steering controller diagnostics message~%~%# This message contains data not needed for normal operation of the~%# device, but useful for diagnosing problems with it.~%~%# $Id: SteeringDiagnostics.msg 1011 2011-03-03 00:30:42Z jack.oquin $~%~%Header  header~%~%int32 encoder                   # current reported encoder value~%int32 last_request              # last requested encoder value~%int32 center_ticks              # initial center encoder value~%uint16 status_word		# current internal status~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SteeringDiagnostics>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     4
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SteeringDiagnostics>))
  "Converts a ROS message object to a list"
  (cl:list 'SteeringDiagnostics
    (cl:cons ':header (header msg))
    (cl:cons ':encoder (encoder msg))
    (cl:cons ':last_request (last_request msg))
    (cl:cons ':center_ticks (center_ticks msg))
    (cl:cons ':status_word (status_word msg))
))
