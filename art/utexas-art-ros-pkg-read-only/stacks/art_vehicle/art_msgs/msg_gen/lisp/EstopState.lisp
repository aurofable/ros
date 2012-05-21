; Auto-generated. Do not edit!


(cl:in-package art_msgs-msg)


;//! \htmlinclude EstopState.msg.html

(cl:defclass <EstopState> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type cl:fixnum
    :initform 0))
)

(cl:defclass EstopState (<EstopState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EstopState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EstopState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name art_msgs-msg:<EstopState> is deprecated: use art_msgs-msg:EstopState instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <EstopState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader art_msgs-msg:state-val is deprecated.  Use art_msgs-msg:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<EstopState>)))
    "Constants for message type '<EstopState>"
  '((:PAUSE . 0)
    (:RUN . 1)
    (:DONE . 2)
    (:SUSPEND . 3)
    (:N_STATES . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'EstopState)))
    "Constants for message type 'EstopState"
  '((:PAUSE . 0)
    (:RUN . 1)
    (:DONE . 2)
    (:SUSPEND . 3)
    (:N_STATES . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EstopState>) ostream)
  "Serializes a message object of type '<EstopState>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'state)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EstopState>) istream)
  "Deserializes a message object of type '<EstopState>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'state)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EstopState>)))
  "Returns string type for a message object of type '<EstopState>"
  "art_msgs/EstopState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EstopState)))
  "Returns string type for a message object of type 'EstopState"
  "art_msgs/EstopState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EstopState>)))
  "Returns md5sum for a message object of type '<EstopState>"
  "195d9329d308e6ca2b9145be58b92e7e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EstopState)))
  "Returns md5sum for a message object of type 'EstopState"
  "195d9329d308e6ca2b9145be58b92e7e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EstopState>)))
  "Returns full string definition for message of type '<EstopState>"
  (cl:format cl:nil "# Navigator E-stop state values~%# $Id: EstopState.msg 996 2011-02-27 16:07:34Z jack.oquin $~%~%uint16 Pause    = 0			# E-stop pause (initial state)~%uint16 Run      = 1			# E-stop run enabled~%uint16 Done     = 2			# mission finished (disabled)~%uint16 Suspend  = 3			# suspend autonomous operation~%uint16 N_states = 4~%~%uint16 state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EstopState)))
  "Returns full string definition for message of type 'EstopState"
  (cl:format cl:nil "# Navigator E-stop state values~%# $Id: EstopState.msg 996 2011-02-27 16:07:34Z jack.oquin $~%~%uint16 Pause    = 0			# E-stop pause (initial state)~%uint16 Run      = 1			# E-stop run enabled~%uint16 Done     = 2			# mission finished (disabled)~%uint16 Suspend  = 3			# suspend autonomous operation~%uint16 N_states = 4~%~%uint16 state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EstopState>))
  (cl:+ 0
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EstopState>))
  "Converts a ROS message object to a list"
  (cl:list 'EstopState
    (cl:cons ':state (state msg))
))
