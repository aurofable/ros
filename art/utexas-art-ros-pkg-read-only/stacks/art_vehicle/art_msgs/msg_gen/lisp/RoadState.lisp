; Auto-generated. Do not edit!


(cl:in-package art_msgs-msg)


;//! \htmlinclude RoadState.msg.html

(cl:defclass <RoadState> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type cl:fixnum
    :initform 0))
)

(cl:defclass RoadState (<RoadState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RoadState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RoadState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name art_msgs-msg:<RoadState> is deprecated: use art_msgs-msg:RoadState instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <RoadState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader art_msgs-msg:state-val is deprecated.  Use art_msgs-msg:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<RoadState>)))
    "Constants for message type '<RoadState>"
  '((:INIT . 0)
    (:BLOCK . 1)
    (:EVADE . 2)
    (:FOLLOW . 3)
    (:PASS . 4)
    (:UTURN . 5)
    (:WAITCROSS . 6)
    (:WAITLANE . 7)
    (:WAITPASS . 8)
    (:WAITSTOP . 9)
    (:ZONE . 10)
    (:N_STATES . 11))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'RoadState)))
    "Constants for message type 'RoadState"
  '((:INIT . 0)
    (:BLOCK . 1)
    (:EVADE . 2)
    (:FOLLOW . 3)
    (:PASS . 4)
    (:UTURN . 5)
    (:WAITCROSS . 6)
    (:WAITLANE . 7)
    (:WAITPASS . 8)
    (:WAITSTOP . 9)
    (:ZONE . 10)
    (:N_STATES . 11))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RoadState>) ostream)
  "Serializes a message object of type '<RoadState>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'state)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RoadState>) istream)
  "Deserializes a message object of type '<RoadState>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'state)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RoadState>)))
  "Returns string type for a message object of type '<RoadState>"
  "art_msgs/RoadState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RoadState)))
  "Returns string type for a message object of type 'RoadState"
  "art_msgs/RoadState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RoadState>)))
  "Returns md5sum for a message object of type '<RoadState>"
  "e033b3ead3b77d2e264d454d67d06e4d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RoadState)))
  "Returns md5sum for a message object of type 'RoadState"
  "e033b3ead3b77d2e264d454d67d06e4d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RoadState>)))
  "Returns full string definition for message of type '<RoadState>"
  (cl:format cl:nil "# Navigator Road state values~%# $Id: RoadState.msg 615 2010-09-24 16:07:50Z jack.oquin $~%~%uint16 Init      = 0~%uint16 Block     = 1~%uint16 Evade     = 2~%uint16 Follow    = 3~%uint16 Pass      = 4~%uint16 Uturn     = 5~%uint16 WaitCross = 6~%uint16 WaitLane  = 7~%uint16 WaitPass  = 8~%uint16 WaitStop  = 9~%uint16 Zone      = 10~%uint16 N_states  = 11~%~%uint16 state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RoadState)))
  "Returns full string definition for message of type 'RoadState"
  (cl:format cl:nil "# Navigator Road state values~%# $Id: RoadState.msg 615 2010-09-24 16:07:50Z jack.oquin $~%~%uint16 Init      = 0~%uint16 Block     = 1~%uint16 Evade     = 2~%uint16 Follow    = 3~%uint16 Pass      = 4~%uint16 Uturn     = 5~%uint16 WaitCross = 6~%uint16 WaitLane  = 7~%uint16 WaitPass  = 8~%uint16 WaitStop  = 9~%uint16 Zone      = 10~%uint16 N_states  = 11~%~%uint16 state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RoadState>))
  (cl:+ 0
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RoadState>))
  "Converts a ROS message object to a list"
  (cl:list 'RoadState
    (cl:cons ':state (state msg))
))
