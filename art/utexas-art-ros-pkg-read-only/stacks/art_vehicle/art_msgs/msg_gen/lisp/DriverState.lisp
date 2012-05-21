; Auto-generated. Do not edit!


(cl:in-package art_msgs-msg)


;//! \htmlinclude DriverState.msg.html

(cl:defclass <DriverState> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type cl:integer
    :initform 0))
)

(cl:defclass DriverState (<DriverState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DriverState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DriverState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name art_msgs-msg:<DriverState> is deprecated: use art_msgs-msg:DriverState instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <DriverState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader art_msgs-msg:state-val is deprecated.  Use art_msgs-msg:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<DriverState>)))
    "Constants for message type '<DriverState>"
  '((:CLOSED . 0)
    (:OPENED . 1)
    (:RUNNING . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'DriverState)))
    "Constants for message type 'DriverState"
  '((:CLOSED . 0)
    (:OPENED . 1)
    (:RUNNING . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DriverState>) ostream)
  "Serializes a message object of type '<DriverState>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'state)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'state)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'state)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DriverState>) istream)
  "Deserializes a message object of type '<DriverState>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'state)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'state)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'state)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DriverState>)))
  "Returns string type for a message object of type '<DriverState>"
  "art_msgs/DriverState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DriverState)))
  "Returns string type for a message object of type 'DriverState"
  "art_msgs/DriverState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DriverState>)))
  "Returns md5sum for a message object of type '<DriverState>"
  "92d8e6361001072f038b293728a430f0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DriverState)))
  "Returns md5sum for a message object of type 'DriverState"
  "92d8e6361001072f038b293728a430f0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DriverState>)))
  "Returns full string definition for message of type '<DriverState>"
  (cl:format cl:nil "# ART driver states -- similar to those in driver_base.~%~%# $Id: DriverState.msg 1161 2011-03-26 02:10:49Z jack.oquin $~%~%# constants~%uint32 CLOSED = 0       # Not connected to the hardware~%uint32 OPENED = 1       # Passively connected to the hardware~%uint32 RUNNING = 2      # Sending hardware commands~%~%uint32 state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DriverState)))
  "Returns full string definition for message of type 'DriverState"
  (cl:format cl:nil "# ART driver states -- similar to those in driver_base.~%~%# $Id: DriverState.msg 1161 2011-03-26 02:10:49Z jack.oquin $~%~%# constants~%uint32 CLOSED = 0       # Not connected to the hardware~%uint32 OPENED = 1       # Passively connected to the hardware~%uint32 RUNNING = 2      # Sending hardware commands~%~%uint32 state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DriverState>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DriverState>))
  "Converts a ROS message object to a list"
  (cl:list 'DriverState
    (cl:cons ':state (state msg))
))
