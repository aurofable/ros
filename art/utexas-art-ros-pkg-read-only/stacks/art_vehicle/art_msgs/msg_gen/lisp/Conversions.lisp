; Auto-generated. Do not edit!


(cl:in-package art_msgs-msg)


;//! \htmlinclude Conversions.msg.html

(cl:defclass <Conversions> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass Conversions (<Conversions>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Conversions>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Conversions)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name art_msgs-msg:<Conversions> is deprecated: use art_msgs-msg:Conversions instead.")))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Conversions>)))
    "Constants for message type '<Conversions>"
  '((:CM_PER_INCH . 2.54)
    (:CM_PER_METER . 100.0)
    (:INCHES_PER_FOOT . 12.0)
    (:METERS_PER_FOOT . 0.3048)
    (:METERS_PER_MILE . 1609.344)
    (:MMETERS_PER_KM . 1000000.0)
    (:MMETERS_PER_MILE . 1609344.0)
    (:MINUTES_PER_HOUR . 60)
    (:SECONDS_PER_MINUTE . 60)
    (:SECONDS_PER_HOUR . 3600))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Conversions)))
    "Constants for message type 'Conversions"
  '((:CM_PER_INCH . 2.54)
    (:CM_PER_METER . 100.0)
    (:INCHES_PER_FOOT . 12.0)
    (:METERS_PER_FOOT . 0.3048)
    (:METERS_PER_MILE . 1609.344)
    (:MMETERS_PER_KM . 1000000.0)
    (:MMETERS_PER_MILE . 1609344.0)
    (:MINUTES_PER_HOUR . 60)
    (:SECONDS_PER_MINUTE . 60)
    (:SECONDS_PER_HOUR . 3600))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Conversions>) ostream)
  "Serializes a message object of type '<Conversions>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Conversions>) istream)
  "Deserializes a message object of type '<Conversions>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Conversions>)))
  "Returns string type for a message object of type '<Conversions>"
  "art_msgs/Conversions")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Conversions)))
  "Returns string type for a message object of type 'Conversions"
  "art_msgs/Conversions")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Conversions>)))
  "Returns md5sum for a message object of type '<Conversions>"
  "44629a726979d07e4fc2da05a3fca804")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Conversions)))
  "Returns md5sum for a message object of type 'Conversions"
  "44629a726979d07e4fc2da05a3fca804")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Conversions>)))
  "Returns full string definition for message of type '<Conversions>"
  (cl:format cl:nil "#  Units conversion constants~%#~%#  Copyright (C) 2007, 2009 Austin Robot Technology                    ~%#  License: Modified BSD Software License Agreement~%~%#  $Id: Conversions.msg 620 2010-09-25 01:11:51Z jack.oquin $~%~%# Unit conversion constants:~%~%float64 CM_PER_INCH = 2.54~%float64 CM_PER_METER = 100.0~%float64 INCHES_PER_FOOT = 12.0~%float64 METERS_PER_FOOT = 0.3048~%float64 METERS_PER_MILE = 1609.344~%float64 MMETERS_PER_KM = 1000000.0~%float64 MMETERS_PER_MILE = 1609344.0~%~%int64 MINUTES_PER_HOUR = 60~%int64 SECONDS_PER_MINUTE = 60~%int64 SECONDS_PER_HOUR = 3600~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Conversions)))
  "Returns full string definition for message of type 'Conversions"
  (cl:format cl:nil "#  Units conversion constants~%#~%#  Copyright (C) 2007, 2009 Austin Robot Technology                    ~%#  License: Modified BSD Software License Agreement~%~%#  $Id: Conversions.msg 620 2010-09-25 01:11:51Z jack.oquin $~%~%# Unit conversion constants:~%~%float64 CM_PER_INCH = 2.54~%float64 CM_PER_METER = 100.0~%float64 INCHES_PER_FOOT = 12.0~%float64 METERS_PER_FOOT = 0.3048~%float64 METERS_PER_MILE = 1609.344~%float64 MMETERS_PER_KM = 1000000.0~%float64 MMETERS_PER_MILE = 1609344.0~%~%int64 MINUTES_PER_HOUR = 60~%int64 SECONDS_PER_MINUTE = 60~%int64 SECONDS_PER_HOUR = 3600~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Conversions>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Conversions>))
  "Converts a ROS message object to a list"
  (cl:list 'Conversions
))
