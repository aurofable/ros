; Auto-generated. Do not edit!


(cl:in-package art_msgs-msg)


;//! \htmlinclude PilotBehavior.msg.html

(cl:defclass <PilotBehavior> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass PilotBehavior (<PilotBehavior>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PilotBehavior>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PilotBehavior)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name art_msgs-msg:<PilotBehavior> is deprecated: use art_msgs-msg:PilotBehavior instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <PilotBehavior>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader art_msgs-msg:value-val is deprecated.  Use art_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<PilotBehavior>)))
    "Constants for message type '<PilotBehavior>"
  '((:RUN . 0)
    (:PAUSE . 1)
    (:OFF . 2)
    (:N_BEHAVIORS . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'PilotBehavior)))
    "Constants for message type 'PilotBehavior"
  '((:RUN . 0)
    (:PAUSE . 1)
    (:OFF . 2)
    (:N_BEHAVIORS . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PilotBehavior>) ostream)
  "Serializes a message object of type '<PilotBehavior>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PilotBehavior>) istream)
  "Deserializes a message object of type '<PilotBehavior>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PilotBehavior>)))
  "Returns string type for a message object of type '<PilotBehavior>"
  "art_msgs/PilotBehavior")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PilotBehavior)))
  "Returns string type for a message object of type 'PilotBehavior"
  "art_msgs/PilotBehavior")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PilotBehavior>)))
  "Returns md5sum for a message object of type '<PilotBehavior>"
  "ee280e8dd8b427f32f9742e8b4885525")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PilotBehavior)))
  "Returns md5sum for a message object of type 'PilotBehavior"
  "ee280e8dd8b427f32f9742e8b4885525")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PilotBehavior>)))
  "Returns full string definition for message of type '<PilotBehavior>"
  (cl:format cl:nil "# ART autonomous vehicle pilot node behaviors.~%#~%# Normally, the pilot node does Run, continually sending commands to~%# the servo device actuators and monitoring their state.  With Pause,~%# the pilot becomes passive, allowing a learning algorithm or human~%# controller direct access to those devices.  In the Off state,~%# various devices are shut down: the transmission in Park, the brake~%# released, the throttle at idle.  The engine is not turned off, but~%# it could be.~%~%# $Id: PilotBehavior.msg 1539 2011-05-09 04:09:20Z jack.oquin $~%~%# Behavior value~%uint8 value~%~%# Behavior numbers:~%uint8 Run = 0                   # normal driving~%uint8 Pause = 1                 # stop issuing servo commands~%uint8 Off = 2                   # turn off devices~%uint8 N_behaviors = 3~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PilotBehavior)))
  "Returns full string definition for message of type 'PilotBehavior"
  (cl:format cl:nil "# ART autonomous vehicle pilot node behaviors.~%#~%# Normally, the pilot node does Run, continually sending commands to~%# the servo device actuators and monitoring their state.  With Pause,~%# the pilot becomes passive, allowing a learning algorithm or human~%# controller direct access to those devices.  In the Off state,~%# various devices are shut down: the transmission in Park, the brake~%# released, the throttle at idle.  The engine is not turned off, but~%# it could be.~%~%# $Id: PilotBehavior.msg 1539 2011-05-09 04:09:20Z jack.oquin $~%~%# Behavior value~%uint8 value~%~%# Behavior numbers:~%uint8 Run = 0                   # normal driving~%uint8 Pause = 1                 # stop issuing servo commands~%uint8 Off = 2                   # turn off devices~%uint8 N_behaviors = 3~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PilotBehavior>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PilotBehavior>))
  "Converts a ROS message object to a list"
  (cl:list 'PilotBehavior
    (cl:cons ':value (value msg))
))
