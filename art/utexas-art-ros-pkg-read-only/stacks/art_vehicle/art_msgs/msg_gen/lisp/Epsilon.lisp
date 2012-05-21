; Auto-generated. Do not edit!


(cl:in-package art_msgs-msg)


;//! \htmlinclude Epsilon.msg.html

(cl:defclass <Epsilon> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass Epsilon (<Epsilon>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Epsilon>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Epsilon)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name art_msgs-msg:<Epsilon> is deprecated: use art_msgs-msg:Epsilon instead.")))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Epsilon>)))
    "Constants for message type '<Epsilon>"
  '((:FLOAT_VALUE . 1e-05)
    (:DISTANCE . 0.01)
    (:SPEED . 0.01)
    (:BRAKE_POSITION . 0.01)
    (:STEERING_ANGLE . 0.001)
    (:THROTTLE_POSITION . 0.01))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Epsilon)))
    "Constants for message type 'Epsilon"
  '((:FLOAT_VALUE . 1e-05)
    (:DISTANCE . 0.01)
    (:SPEED . 0.01)
    (:BRAKE_POSITION . 0.01)
    (:STEERING_ANGLE . 0.001)
    (:THROTTLE_POSITION . 0.01))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Epsilon>) ostream)
  "Serializes a message object of type '<Epsilon>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Epsilon>) istream)
  "Deserializes a message object of type '<Epsilon>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Epsilon>)))
  "Returns string type for a message object of type '<Epsilon>"
  "art_msgs/Epsilon")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Epsilon)))
  "Returns string type for a message object of type 'Epsilon"
  "art_msgs/Epsilon")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Epsilon>)))
  "Returns md5sum for a message object of type '<Epsilon>"
  "0d2bf0d163e0062abbee50aa67ba8a3a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Epsilon)))
  "Returns md5sum for a message object of type 'Epsilon"
  "0d2bf0d163e0062abbee50aa67ba8a3a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Epsilon>)))
  "Returns full string definition for message of type '<Epsilon>"
  (cl:format cl:nil "# ART epsilon constants~%#~%#   These constants represent trivial differences in distance, speed,~%#   angle, etc.~%~%# $Id: Epsilon.msg 1539 2011-05-09 04:09:20Z jack.oquin $~%~%# constants~%float32 float_value = 1e-5~%float32 distance = 0.01~%float32 speed = 0.01~%~%# epsilon values for servo requests~%float32 brake_position = 0.01~%float32 steering_angle = 0.001~%float32 throttle_position = 0.01~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Epsilon)))
  "Returns full string definition for message of type 'Epsilon"
  (cl:format cl:nil "# ART epsilon constants~%#~%#   These constants represent trivial differences in distance, speed,~%#   angle, etc.~%~%# $Id: Epsilon.msg 1539 2011-05-09 04:09:20Z jack.oquin $~%~%# constants~%float32 float_value = 1e-5~%float32 distance = 0.01~%float32 speed = 0.01~%~%# epsilon values for servo requests~%float32 brake_position = 0.01~%float32 steering_angle = 0.001~%float32 throttle_position = 0.01~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Epsilon>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Epsilon>))
  "Converts a ROS message object to a list"
  (cl:list 'Epsilon
))
