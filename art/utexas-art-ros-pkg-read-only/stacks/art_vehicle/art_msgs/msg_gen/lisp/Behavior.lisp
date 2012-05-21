; Auto-generated. Do not edit!


(cl:in-package art_msgs-msg)


;//! \htmlinclude Behavior.msg.html

(cl:defclass <Behavior> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Behavior (<Behavior>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Behavior>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Behavior)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name art_msgs-msg:<Behavior> is deprecated: use art_msgs-msg:Behavior instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <Behavior>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader art_msgs-msg:value-val is deprecated.  Use art_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Behavior>)))
    "Constants for message type '<Behavior>"
  '((:ABORT . 0)
    (:QUIT . 1)
    (:PAUSE . 2)
    (:RUN . 3)
    (:SUSPEND . 4)
    (:INITIALIZE . 5)
    (:GO . 6)
    (:NONE . 7)
    (:N_BEHAVIORS . 8))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Behavior)))
    "Constants for message type 'Behavior"
  '((:ABORT . 0)
    (:QUIT . 1)
    (:PAUSE . 2)
    (:RUN . 3)
    (:SUSPEND . 4)
    (:INITIALIZE . 5)
    (:GO . 6)
    (:NONE . 7)
    (:N_BEHAVIORS . 8))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Behavior>) ostream)
  "Serializes a message object of type '<Behavior>"
  (cl:let* ((signed (cl:slot-value msg 'value)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Behavior>) istream)
  "Deserializes a message object of type '<Behavior>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'value) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Behavior>)))
  "Returns string type for a message object of type '<Behavior>"
  "art_msgs/Behavior")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Behavior)))
  "Returns string type for a message object of type 'Behavior"
  "art_msgs/Behavior")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Behavior>)))
  "Returns md5sum for a message object of type '<Behavior>"
  "88d96e38b2c952605ef152e7b2cc38ab")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Behavior)))
  "Returns md5sum for a message object of type 'Behavior"
  "88d96e38b2c952605ef152e7b2cc38ab")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Behavior>)))
  "Returns full string definition for message of type '<Behavior>"
  (cl:format cl:nil "# ART Navigator behaviors (lower numbers have higher priority)~%# $Id: Behavior.msg 996 2011-02-27 16:07:34Z jack.oquin $~%~%# enumerated behavior values~%int16 Abort       = 0~%int16 Quit        = 1~%int16 Pause       = 2~%int16 Run         = 3~%int16 Suspend     = 4~%int16 Initialize  = 5~%int16 Go          = 6~%int16 NONE        = 7~%int16 N_behaviors = 8~%~%int16 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Behavior)))
  "Returns full string definition for message of type 'Behavior"
  (cl:format cl:nil "# ART Navigator behaviors (lower numbers have higher priority)~%# $Id: Behavior.msg 996 2011-02-27 16:07:34Z jack.oquin $~%~%# enumerated behavior values~%int16 Abort       = 0~%int16 Quit        = 1~%int16 Pause       = 2~%int16 Run         = 3~%int16 Suspend     = 4~%int16 Initialize  = 5~%int16 Go          = 6~%int16 NONE        = 7~%int16 N_behaviors = 8~%~%int16 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Behavior>))
  (cl:+ 0
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Behavior>))
  "Converts a ROS message object to a list"
  (cl:list 'Behavior
    (cl:cons ':value (value msg))
))
