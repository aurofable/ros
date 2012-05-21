; Auto-generated. Do not edit!


(cl:in-package art_msgs-msg)


;//! \htmlinclude MapID.msg.html

(cl:defclass <MapID> (roslisp-msg-protocol:ros-message)
  ((seg
    :reader seg
    :initarg :seg
    :type cl:fixnum
    :initform 0)
   (lane
    :reader lane
    :initarg :lane
    :type cl:fixnum
    :initform 0)
   (pt
    :reader pt
    :initarg :pt
    :type cl:fixnum
    :initform 0))
)

(cl:defclass MapID (<MapID>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MapID>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MapID)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name art_msgs-msg:<MapID> is deprecated: use art_msgs-msg:MapID instead.")))

(cl:ensure-generic-function 'seg-val :lambda-list '(m))
(cl:defmethod seg-val ((m <MapID>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader art_msgs-msg:seg-val is deprecated.  Use art_msgs-msg:seg instead.")
  (seg m))

(cl:ensure-generic-function 'lane-val :lambda-list '(m))
(cl:defmethod lane-val ((m <MapID>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader art_msgs-msg:lane-val is deprecated.  Use art_msgs-msg:lane instead.")
  (lane m))

(cl:ensure-generic-function 'pt-val :lambda-list '(m))
(cl:defmethod pt-val ((m <MapID>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader art_msgs-msg:pt-val is deprecated.  Use art_msgs-msg:pt instead.")
  (pt m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<MapID>)))
    "Constants for message type '<MapID>"
  '((:NULL_ID . 65535))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'MapID)))
    "Constants for message type 'MapID"
  '((:NULL_ID . 65535))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MapID>) ostream)
  "Serializes a message object of type '<MapID>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'seg)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'seg)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lane)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'lane)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pt)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'pt)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MapID>) istream)
  "Deserializes a message object of type '<MapID>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'seg)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'seg)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lane)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'lane)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pt)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'pt)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MapID>)))
  "Returns string type for a message object of type '<MapID>"
  "art_msgs/MapID")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MapID)))
  "Returns string type for a message object of type 'MapID"
  "art_msgs/MapID")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MapID>)))
  "Returns md5sum for a message object of type '<MapID>"
  "19289d0a831d333d542743932b12dadc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MapID)))
  "Returns md5sum for a message object of type 'MapID"
  "19289d0a831d333d542743932b12dadc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MapID>)))
  "Returns full string definition for message of type '<MapID>"
  (cl:format cl:nil "# Road map identifier for segments, lanes and way-points.~%# $Id: MapID.msg 614 2010-09-24 15:08:46Z jack.oquin $~%~%uint16 NULL_ID = 65535~%~%uint16 seg      # segment ID~%uint16 lane     # lane ID~%uint16 pt       # way-point ID~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MapID)))
  "Returns full string definition for message of type 'MapID"
  (cl:format cl:nil "# Road map identifier for segments, lanes and way-points.~%# $Id: MapID.msg 614 2010-09-24 15:08:46Z jack.oquin $~%~%uint16 NULL_ID = 65535~%~%uint16 seg      # segment ID~%uint16 lane     # lane ID~%uint16 pt       # way-point ID~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MapID>))
  (cl:+ 0
     2
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MapID>))
  "Converts a ROS message object to a list"
  (cl:list 'MapID
    (cl:cons ':seg (seg msg))
    (cl:cons ':lane (lane msg))
    (cl:cons ':pt (pt msg))
))
