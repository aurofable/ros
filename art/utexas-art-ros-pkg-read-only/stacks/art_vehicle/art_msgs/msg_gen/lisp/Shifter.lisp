; Auto-generated. Do not edit!


(cl:in-package art_msgs-msg)


;//! \htmlinclude Shifter.msg.html

(cl:defclass <Shifter> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (gear
    :reader gear
    :initarg :gear
    :type cl:fixnum
    :initform 0)
   (relays
    :reader relays
    :initarg :relays
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Shifter (<Shifter>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Shifter>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Shifter)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name art_msgs-msg:<Shifter> is deprecated: use art_msgs-msg:Shifter instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Shifter>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader art_msgs-msg:header-val is deprecated.  Use art_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'gear-val :lambda-list '(m))
(cl:defmethod gear-val ((m <Shifter>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader art_msgs-msg:gear-val is deprecated.  Use art_msgs-msg:gear instead.")
  (gear m))

(cl:ensure-generic-function 'relays-val :lambda-list '(m))
(cl:defmethod relays-val ((m <Shifter>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader art_msgs-msg:relays-val is deprecated.  Use art_msgs-msg:relays instead.")
  (relays m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Shifter>)))
    "Constants for message type '<Shifter>"
  '((:RESET . 0)
    (:PARK . 1)
    (:REVERSE . 2)
    (:NEUTRAL . 3)
    (:DRIVE . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Shifter)))
    "Constants for message type 'Shifter"
  '((:RESET . 0)
    (:PARK . 1)
    (:REVERSE . 2)
    (:NEUTRAL . 3)
    (:DRIVE . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Shifter>) ostream)
  "Serializes a message object of type '<Shifter>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gear)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'relays)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Shifter>) istream)
  "Deserializes a message object of type '<Shifter>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gear)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'relays)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Shifter>)))
  "Returns string type for a message object of type '<Shifter>"
  "art_msgs/Shifter")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Shifter)))
  "Returns string type for a message object of type 'Shifter"
  "art_msgs/Shifter")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Shifter>)))
  "Returns md5sum for a message object of type '<Shifter>"
  "dddb61d8575e01ea7857ef1b3a7b941c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Shifter)))
  "Returns md5sum for a message object of type 'Shifter"
  "dddb61d8575e01ea7857ef1b3a7b941c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Shifter>)))
  "Returns full string definition for message of type '<Shifter>"
  (cl:format cl:nil "# ART shifter message~%#~%# Used to both request and report gear shifts.~%~%# $Id: Shifter.msg 644 2010-09-28 03:19:07Z jack.oquin $~%~%# Our Arens Controls hardware mechanism requires holding the shift~%# relay on for one second before resetting it.  A command node must~%# request the desired gear, then wait a second before sending the~%# Reset command.  To be safe, it should check that the shift actually~%# occurred before continuing.~%~%Header  header          # standard ROS message header~%~%# gear numbers~%uint8 Reset = 0         # request reset of shifter relays~%uint8 Park = 1~%uint8 Reverse = 2~%uint8 Neutral = 3~%uint8 Drive = 4~%~%uint8 gear              # requested or reported gear number~%uint8 relays            # current relay values~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Shifter)))
  "Returns full string definition for message of type 'Shifter"
  (cl:format cl:nil "# ART shifter message~%#~%# Used to both request and report gear shifts.~%~%# $Id: Shifter.msg 644 2010-09-28 03:19:07Z jack.oquin $~%~%# Our Arens Controls hardware mechanism requires holding the shift~%# relay on for one second before resetting it.  A command node must~%# request the desired gear, then wait a second before sending the~%# Reset command.  To be safe, it should check that the shift actually~%# occurred before continuing.~%~%Header  header          # standard ROS message header~%~%# gear numbers~%uint8 Reset = 0         # request reset of shifter relays~%uint8 Park = 1~%uint8 Reverse = 2~%uint8 Neutral = 3~%uint8 Drive = 4~%~%uint8 gear              # requested or reported gear number~%uint8 relays            # current relay values~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Shifter>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Shifter>))
  "Converts a ROS message object to a list"
  (cl:list 'Shifter
    (cl:cons ':header (header msg))
    (cl:cons ':gear (gear msg))
    (cl:cons ':relays (relays msg))
))
