; Auto-generated. Do not edit!


(cl:in-package art_msgs-msg)


;//! \htmlinclude LaneMarking.msg.html

(cl:defclass <LaneMarking> (roslisp-msg-protocol:ros-message)
  ((lane_marking
    :reader lane_marking
    :initarg :lane_marking
    :type cl:fixnum
    :initform 0))
)

(cl:defclass LaneMarking (<LaneMarking>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LaneMarking>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LaneMarking)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name art_msgs-msg:<LaneMarking> is deprecated: use art_msgs-msg:LaneMarking instead.")))

(cl:ensure-generic-function 'lane_marking-val :lambda-list '(m))
(cl:defmethod lane_marking-val ((m <LaneMarking>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader art_msgs-msg:lane_marking-val is deprecated.  Use art_msgs-msg:lane_marking instead.")
  (lane_marking m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<LaneMarking>)))
    "Constants for message type '<LaneMarking>"
  '((:DOUBLE_YELLOW . 0)
    (:SOLID_YELLOW . 1)
    (:SOLID_WHITE . 2)
    (:BROKEN_WHITE . 3)
    (:UNDEFINED . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'LaneMarking)))
    "Constants for message type 'LaneMarking"
  '((:DOUBLE_YELLOW . 0)
    (:SOLID_YELLOW . 1)
    (:SOLID_WHITE . 2)
    (:BROKEN_WHITE . 3)
    (:UNDEFINED . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LaneMarking>) ostream)
  "Serializes a message object of type '<LaneMarking>"
  (cl:let* ((signed (cl:slot-value msg 'lane_marking)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LaneMarking>) istream)
  "Deserializes a message object of type '<LaneMarking>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'lane_marking) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LaneMarking>)))
  "Returns string type for a message object of type '<LaneMarking>"
  "art_msgs/LaneMarking")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LaneMarking)))
  "Returns string type for a message object of type 'LaneMarking"
  "art_msgs/LaneMarking")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LaneMarking>)))
  "Returns md5sum for a message object of type '<LaneMarking>"
  "39a90d328b8d3f3a2f63e9f13330afca")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LaneMarking)))
  "Returns md5sum for a message object of type 'LaneMarking"
  "39a90d328b8d3f3a2f63e9f13330afca")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LaneMarking>)))
  "Returns full string definition for message of type '<LaneMarking>"
  (cl:format cl:nil "# Route Network Definition File lane marking~%# $Id: LaneMarking.msg 614 2010-09-24 15:08:46Z jack.oquin $~%~%int16 DOUBLE_YELLOW = 0~%int16 SOLID_YELLOW = 1~%int16 SOLID_WHITE = 2~%int16 BROKEN_WHITE = 3~%int16 UNDEFINED = 4~%~%int16 lane_marking~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LaneMarking)))
  "Returns full string definition for message of type 'LaneMarking"
  (cl:format cl:nil "# Route Network Definition File lane marking~%# $Id: LaneMarking.msg 614 2010-09-24 15:08:46Z jack.oquin $~%~%int16 DOUBLE_YELLOW = 0~%int16 SOLID_YELLOW = 1~%int16 SOLID_WHITE = 2~%int16 BROKEN_WHITE = 3~%int16 UNDEFINED = 4~%~%int16 lane_marking~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LaneMarking>))
  (cl:+ 0
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LaneMarking>))
  "Converts a ROS message object to a list"
  (cl:list 'LaneMarking
    (cl:cons ':lane_marking (lane_marking msg))
))
