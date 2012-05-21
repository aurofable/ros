; Auto-generated. Do not edit!


(cl:in-package art_msgs-msg)


;//! \htmlinclude LearningCommand.msg.html

(cl:defclass <LearningCommand> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (pilotActive
    :reader pilotActive
    :initarg :pilotActive
    :type cl:fixnum
    :initform 0))
)

(cl:defclass LearningCommand (<LearningCommand>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LearningCommand>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LearningCommand)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name art_msgs-msg:<LearningCommand> is deprecated: use art_msgs-msg:LearningCommand instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <LearningCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader art_msgs-msg:header-val is deprecated.  Use art_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'pilotActive-val :lambda-list '(m))
(cl:defmethod pilotActive-val ((m <LearningCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader art_msgs-msg:pilotActive-val is deprecated.  Use art_msgs-msg:pilotActive instead.")
  (pilotActive m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LearningCommand>) ostream)
  "Serializes a message object of type '<LearningCommand>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'pilotActive)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LearningCommand>) istream)
  "Deserializes a message object of type '<LearningCommand>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pilotActive) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LearningCommand>)))
  "Returns string type for a message object of type '<LearningCommand>"
  "art_msgs/LearningCommand")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LearningCommand)))
  "Returns string type for a message object of type 'LearningCommand"
  "art_msgs/LearningCommand")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LearningCommand>)))
  "Returns md5sum for a message object of type '<LearningCommand>"
  "ddd1e597cd0c1d6b0d1497108b462a51")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LearningCommand)))
  "Returns md5sum for a message object of type 'LearningCommand"
  "ddd1e597cd0c1d6b0d1497108b462a51")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LearningCommand>)))
  "Returns full string definition for message of type '<LearningCommand>"
  (cl:format cl:nil "# Lets us turn on or off different modules using a message~%# For example, I can disable pilot for some parts of learning~%~%# $Id: LearningCommand.msg 644 2010-09-28 03:19:07Z jack.oquin $~%~%Header     header~%int8       pilotActive~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LearningCommand)))
  "Returns full string definition for message of type 'LearningCommand"
  (cl:format cl:nil "# Lets us turn on or off different modules using a message~%# For example, I can disable pilot for some parts of learning~%~%# $Id: LearningCommand.msg 644 2010-09-28 03:19:07Z jack.oquin $~%~%Header     header~%int8       pilotActive~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LearningCommand>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LearningCommand>))
  "Converts a ROS message object to a list"
  (cl:list 'LearningCommand
    (cl:cons ':header (header msg))
    (cl:cons ':pilotActive (pilotActive msg))
))
