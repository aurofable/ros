; Auto-generated. Do not edit!


(cl:in-package art_msgs-msg)


;//! \htmlinclude CarCommand.msg.html

(cl:defclass <CarCommand> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (control
    :reader control
    :initarg :control
    :type art_msgs-msg:CarControl
    :initform (cl:make-instance 'art_msgs-msg:CarControl)))
)

(cl:defclass CarCommand (<CarCommand>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CarCommand>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CarCommand)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name art_msgs-msg:<CarCommand> is deprecated: use art_msgs-msg:CarCommand instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <CarCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader art_msgs-msg:header-val is deprecated.  Use art_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'control-val :lambda-list '(m))
(cl:defmethod control-val ((m <CarCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader art_msgs-msg:control-val is deprecated.  Use art_msgs-msg:control instead.")
  (control m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CarCommand>) ostream)
  "Serializes a message object of type '<CarCommand>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'control) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CarCommand>) istream)
  "Deserializes a message object of type '<CarCommand>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'control) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CarCommand>)))
  "Returns string type for a message object of type '<CarCommand>"
  "art_msgs/CarCommand")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CarCommand)))
  "Returns string type for a message object of type 'CarCommand"
  "art_msgs/CarCommand")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CarCommand>)))
  "Returns md5sum for a message object of type '<CarCommand>"
  "a9c426b2a11ce63f7116e941449a149d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CarCommand)))
  "Returns md5sum for a message object of type 'CarCommand"
  "a9c426b2a11ce63f7116e941449a149d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CarCommand>)))
  "Returns full string definition for message of type '<CarCommand>"
  (cl:format cl:nil "# car control command with timestamp~%# $Id: CarCommand.msg 1161 2011-03-26 02:10:49Z jack.oquin $~%~%Header     header~%CarControl control~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: art_msgs/CarControl~%# car control command~%# $Id: CarControl.msg 1161 2011-03-26 02:10:49Z jack.oquin $~%~%float32 velocity                # forward velocity (m/s), negative is reverse~%float32 angle                   # steering angle (degrees)~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CarCommand)))
  "Returns full string definition for message of type 'CarCommand"
  (cl:format cl:nil "# car control command with timestamp~%# $Id: CarCommand.msg 1161 2011-03-26 02:10:49Z jack.oquin $~%~%Header     header~%CarControl control~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: art_msgs/CarControl~%# car control command~%# $Id: CarControl.msg 1161 2011-03-26 02:10:49Z jack.oquin $~%~%float32 velocity                # forward velocity (m/s), negative is reverse~%float32 angle                   # steering angle (degrees)~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CarCommand>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'control))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CarCommand>))
  "Converts a ROS message object to a list"
  (cl:list 'CarCommand
    (cl:cons ':header (header msg))
    (cl:cons ':control (control msg))
))
