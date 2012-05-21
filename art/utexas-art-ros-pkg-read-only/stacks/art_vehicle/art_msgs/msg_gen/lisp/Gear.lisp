; Auto-generated. Do not edit!


(cl:in-package art_msgs-msg)


;//! \htmlinclude Gear.msg.html

(cl:defclass <Gear> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Gear (<Gear>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Gear>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Gear)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name art_msgs-msg:<Gear> is deprecated: use art_msgs-msg:Gear instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <Gear>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader art_msgs-msg:value-val is deprecated.  Use art_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Gear>)))
    "Constants for message type '<Gear>"
  '((:NAUGHT . 0)
    (:PARK . 1)
    (:REVERSE . 2)
    (:NEUTRAL . 3)
    (:DRIVE . 4)
    (:N_GEARS . 5))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Gear)))
    "Constants for message type 'Gear"
  '((:NAUGHT . 0)
    (:PARK . 1)
    (:REVERSE . 2)
    (:NEUTRAL . 3)
    (:DRIVE . 4)
    (:N_GEARS . 5))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Gear>) ostream)
  "Serializes a message object of type '<Gear>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Gear>) istream)
  "Deserializes a message object of type '<Gear>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Gear>)))
  "Returns string type for a message object of type '<Gear>"
  "art_msgs/Gear")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Gear)))
  "Returns string type for a message object of type 'Gear"
  "art_msgs/Gear")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Gear>)))
  "Returns md5sum for a message object of type '<Gear>"
  "29fb8bb2d87a1850e27a57ff47d6dd35")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Gear)))
  "Returns md5sum for a message object of type 'Gear"
  "29fb8bb2d87a1850e27a57ff47d6dd35")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Gear>)))
  "Returns full string definition for message of type '<Gear>"
  (cl:format cl:nil "# ART vehicle transmission gear numbers~%#~%# Used by several different messages.~%~%# $Id: Gear.msg 1539 2011-05-09 04:09:20Z jack.oquin $~%~%# Gear numbers. ~%#~%# Naught means: reset all Shifter relays; no change of CarDrive gear.~%uint8 Naught = 0~%uint8 Park = 1~%uint8 Reverse = 2~%uint8 Neutral = 3~%uint8 Drive = 4~%uint8 N_gears = 5~%~%uint8 value		# requested or reported gear number~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Gear)))
  "Returns full string definition for message of type 'Gear"
  (cl:format cl:nil "# ART vehicle transmission gear numbers~%#~%# Used by several different messages.~%~%# $Id: Gear.msg 1539 2011-05-09 04:09:20Z jack.oquin $~%~%# Gear numbers. ~%#~%# Naught means: reset all Shifter relays; no change of CarDrive gear.~%uint8 Naught = 0~%uint8 Park = 1~%uint8 Reverse = 2~%uint8 Neutral = 3~%uint8 Drive = 4~%uint8 N_gears = 5~%~%uint8 value		# requested or reported gear number~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Gear>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Gear>))
  "Converts a ROS message object to a list"
  (cl:list 'Gear
    (cl:cons ':value (value msg))
))
