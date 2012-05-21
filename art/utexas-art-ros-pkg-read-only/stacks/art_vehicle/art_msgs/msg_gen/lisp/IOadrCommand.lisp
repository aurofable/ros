; Auto-generated. Do not edit!


(cl:in-package art_msgs-msg)


;//! \htmlinclude IOadrCommand.msg.html

(cl:defclass <IOadrCommand> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (relays_on
    :reader relays_on
    :initarg :relays_on
    :type cl:fixnum
    :initform 0)
   (relays_off
    :reader relays_off
    :initarg :relays_off
    :type cl:fixnum
    :initform 0))
)

(cl:defclass IOadrCommand (<IOadrCommand>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <IOadrCommand>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'IOadrCommand)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name art_msgs-msg:<IOadrCommand> is deprecated: use art_msgs-msg:IOadrCommand instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <IOadrCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader art_msgs-msg:header-val is deprecated.  Use art_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'relays_on-val :lambda-list '(m))
(cl:defmethod relays_on-val ((m <IOadrCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader art_msgs-msg:relays_on-val is deprecated.  Use art_msgs-msg:relays_on instead.")
  (relays_on m))

(cl:ensure-generic-function 'relays_off-val :lambda-list '(m))
(cl:defmethod relays_off-val ((m <IOadrCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader art_msgs-msg:relays_off-val is deprecated.  Use art_msgs-msg:relays_off instead.")
  (relays_off m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <IOadrCommand>) ostream)
  "Serializes a message object of type '<IOadrCommand>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'relays_on)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'relays_off)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <IOadrCommand>) istream)
  "Deserializes a message object of type '<IOadrCommand>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'relays_on)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'relays_off)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<IOadrCommand>)))
  "Returns string type for a message object of type '<IOadrCommand>"
  "art_msgs/IOadrCommand")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IOadrCommand)))
  "Returns string type for a message object of type 'IOadrCommand"
  "art_msgs/IOadrCommand")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<IOadrCommand>)))
  "Returns md5sum for a message object of type '<IOadrCommand>"
  "1ba0a21767ee8a4bb7c80945f20b670c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'IOadrCommand)))
  "Returns md5sum for a message object of type 'IOadrCommand"
  "1ba0a21767ee8a4bb7c80945f20b670c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<IOadrCommand>)))
  "Returns full string definition for message of type '<IOadrCommand>"
  (cl:format cl:nil "# NCD IOADR8x controller command message for ART vehicle~%#~%# Sets or clears relays.  See: IOadrState for bit definitions.~%~%# $Id: IOadrCommand.msg 644 2010-09-28 03:19:07Z jack.oquin $~%~%Header  header          # standard ROS message header~%~%uint8 relays_on         # relays to set~%uint8 relays_off        # relays to clear~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'IOadrCommand)))
  "Returns full string definition for message of type 'IOadrCommand"
  (cl:format cl:nil "# NCD IOADR8x controller command message for ART vehicle~%#~%# Sets or clears relays.  See: IOadrState for bit definitions.~%~%# $Id: IOadrCommand.msg 644 2010-09-28 03:19:07Z jack.oquin $~%~%Header  header          # standard ROS message header~%~%uint8 relays_on         # relays to set~%uint8 relays_off        # relays to clear~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <IOadrCommand>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <IOadrCommand>))
  "Converts a ROS message object to a list"
  (cl:list 'IOadrCommand
    (cl:cons ':header (header msg))
    (cl:cons ':relays_on (relays_on msg))
    (cl:cons ':relays_off (relays_off msg))
))
