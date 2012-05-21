; Auto-generated. Do not edit!


(cl:in-package art_msgs-msg)


;//! \htmlinclude ArtHertz.msg.html

(cl:defclass <ArtHertz> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass ArtHertz (<ArtHertz>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ArtHertz>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ArtHertz)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name art_msgs-msg:<ArtHertz> is deprecated: use art_msgs-msg:ArtHertz instead.")))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ArtHertz>)))
    "Constants for message type '<ArtHertz>"
  '((:APPLANIX . 20.0)
    (:BRAKE . 20.0)
    (:COMMANDER . 10.0)
    (:IOADR . 10.0)
    (:LASER_FUSION . 10.0)
    (:LASER_NOISE . 10.0)
    (:MAPLANES . 5.0)
    (:NAVIGATOR . 20.0)
    (:OBSERVERS . 10.0)
    (:PILOT . 20.0)
    (:PSEUDO_LASER . 10.0)
    (:SICKFAST . 10.0)
    (:STEERING . 20.0)
    (:THROTTLE . 20.0)
    (:VEHICLE_TF . 5.0))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ArtHertz)))
    "Constants for message type 'ArtHertz"
  '((:APPLANIX . 20.0)
    (:BRAKE . 20.0)
    (:COMMANDER . 10.0)
    (:IOADR . 10.0)
    (:LASER_FUSION . 10.0)
    (:LASER_NOISE . 10.0)
    (:MAPLANES . 5.0)
    (:NAVIGATOR . 20.0)
    (:OBSERVERS . 10.0)
    (:PILOT . 20.0)
    (:PSEUDO_LASER . 10.0)
    (:SICKFAST . 10.0)
    (:STEERING . 20.0)
    (:THROTTLE . 20.0)
    (:VEHICLE_TF . 5.0))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ArtHertz>) ostream)
  "Serializes a message object of type '<ArtHertz>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ArtHertz>) istream)
  "Deserializes a message object of type '<ArtHertz>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ArtHertz>)))
  "Returns string type for a message object of type '<ArtHertz>"
  "art_msgs/ArtHertz")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ArtHertz)))
  "Returns string type for a message object of type 'ArtHertz"
  "art_msgs/ArtHertz")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ArtHertz>)))
  "Returns md5sum for a message object of type '<ArtHertz>"
  "fe3d67243941cb078e664e9bc369f978")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ArtHertz)))
  "Returns md5sum for a message object of type 'ArtHertz"
  "fe3d67243941cb078e664e9bc369f978")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ArtHertz>)))
  "Returns full string definition for message of type '<ArtHertz>"
  (cl:format cl:nil "#  Real-time cycle rates for various ART vehicle nodes.~%# $Id: ArtHertz.msg 620 2010-09-25 01:11:51Z jack.oquin $~%~%#  All units are hertz (cycles/second).  This is not a published~%#  message, it defines multi-language constants.~%~%float64 APPLANIX        = 20.0~%float64 BRAKE           = 20.0~%float64 COMMANDER       = 10.0~%float64 IOADR           = 10.0~%float64 LASER_FUSION    = 10.0~%float64 LASER_NOISE     = 10.0~%float64 MAPLANES        = 5.0~%float64 NAVIGATOR       = 20.0~%float64 OBSERVERS       = 10.0~%float64 PILOT           = 20.0~%float64 PSEUDO_LASER    = 10.0~%float64 SICKFAST        = 10.0~%float64 STEERING        = 20.0~%float64 THROTTLE        = 20.0~%float64 VEHICLE_TF      = 5.0~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ArtHertz)))
  "Returns full string definition for message of type 'ArtHertz"
  (cl:format cl:nil "#  Real-time cycle rates for various ART vehicle nodes.~%# $Id: ArtHertz.msg 620 2010-09-25 01:11:51Z jack.oquin $~%~%#  All units are hertz (cycles/second).  This is not a published~%#  message, it defines multi-language constants.~%~%float64 APPLANIX        = 20.0~%float64 BRAKE           = 20.0~%float64 COMMANDER       = 10.0~%float64 IOADR           = 10.0~%float64 LASER_FUSION    = 10.0~%float64 LASER_NOISE     = 10.0~%float64 MAPLANES        = 5.0~%float64 NAVIGATOR       = 20.0~%float64 OBSERVERS       = 10.0~%float64 PILOT           = 20.0~%float64 PSEUDO_LASER    = 10.0~%float64 SICKFAST        = 10.0~%float64 STEERING        = 20.0~%float64 THROTTLE        = 20.0~%float64 VEHICLE_TF      = 5.0~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ArtHertz>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ArtHertz>))
  "Converts a ROS message object to a list"
  (cl:list 'ArtHertz
))
