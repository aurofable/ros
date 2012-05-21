; Auto-generated. Do not edit!


(cl:in-package art_msgs-msg)


;//! \htmlinclude ArtQuadrilateral.msg.html

(cl:defclass <ArtQuadrilateral> (roslisp-msg-protocol:ros-message)
  ((poly
    :reader poly
    :initarg :poly
    :type geometry_msgs-msg:Polygon
    :initform (cl:make-instance 'geometry_msgs-msg:Polygon))
   (midpoint
    :reader midpoint
    :initarg :midpoint
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (heading
    :reader heading
    :initarg :heading
    :type cl:float
    :initform 0.0)
   (length
    :reader length
    :initarg :length
    :type cl:float
    :initform 0.0)
   (poly_id
    :reader poly_id
    :initarg :poly_id
    :type cl:integer
    :initform 0)
   (is_stop
    :reader is_stop
    :initarg :is_stop
    :type cl:boolean
    :initform cl:nil)
   (is_transition
    :reader is_transition
    :initarg :is_transition
    :type cl:boolean
    :initform cl:nil)
   (contains_way
    :reader contains_way
    :initarg :contains_way
    :type cl:boolean
    :initform cl:nil)
   (start_way
    :reader start_way
    :initarg :start_way
    :type art_msgs-msg:MapID
    :initform (cl:make-instance 'art_msgs-msg:MapID))
   (end_way
    :reader end_way
    :initarg :end_way
    :type art_msgs-msg:MapID
    :initform (cl:make-instance 'art_msgs-msg:MapID))
   (left_boundary
    :reader left_boundary
    :initarg :left_boundary
    :type art_msgs-msg:LaneMarking
    :initform (cl:make-instance 'art_msgs-msg:LaneMarking))
   (right_boundary
    :reader right_boundary
    :initarg :right_boundary
    :type art_msgs-msg:LaneMarking
    :initform (cl:make-instance 'art_msgs-msg:LaneMarking)))
)

(cl:defclass ArtQuadrilateral (<ArtQuadrilateral>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ArtQuadrilateral>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ArtQuadrilateral)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name art_msgs-msg:<ArtQuadrilateral> is deprecated: use art_msgs-msg:ArtQuadrilateral instead.")))

(cl:ensure-generic-function 'poly-val :lambda-list '(m))
(cl:defmethod poly-val ((m <ArtQuadrilateral>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader art_msgs-msg:poly-val is deprecated.  Use art_msgs-msg:poly instead.")
  (poly m))

(cl:ensure-generic-function 'midpoint-val :lambda-list '(m))
(cl:defmethod midpoint-val ((m <ArtQuadrilateral>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader art_msgs-msg:midpoint-val is deprecated.  Use art_msgs-msg:midpoint instead.")
  (midpoint m))

(cl:ensure-generic-function 'heading-val :lambda-list '(m))
(cl:defmethod heading-val ((m <ArtQuadrilateral>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader art_msgs-msg:heading-val is deprecated.  Use art_msgs-msg:heading instead.")
  (heading m))

(cl:ensure-generic-function 'length-val :lambda-list '(m))
(cl:defmethod length-val ((m <ArtQuadrilateral>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader art_msgs-msg:length-val is deprecated.  Use art_msgs-msg:length instead.")
  (length m))

(cl:ensure-generic-function 'poly_id-val :lambda-list '(m))
(cl:defmethod poly_id-val ((m <ArtQuadrilateral>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader art_msgs-msg:poly_id-val is deprecated.  Use art_msgs-msg:poly_id instead.")
  (poly_id m))

(cl:ensure-generic-function 'is_stop-val :lambda-list '(m))
(cl:defmethod is_stop-val ((m <ArtQuadrilateral>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader art_msgs-msg:is_stop-val is deprecated.  Use art_msgs-msg:is_stop instead.")
  (is_stop m))

(cl:ensure-generic-function 'is_transition-val :lambda-list '(m))
(cl:defmethod is_transition-val ((m <ArtQuadrilateral>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader art_msgs-msg:is_transition-val is deprecated.  Use art_msgs-msg:is_transition instead.")
  (is_transition m))

(cl:ensure-generic-function 'contains_way-val :lambda-list '(m))
(cl:defmethod contains_way-val ((m <ArtQuadrilateral>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader art_msgs-msg:contains_way-val is deprecated.  Use art_msgs-msg:contains_way instead.")
  (contains_way m))

(cl:ensure-generic-function 'start_way-val :lambda-list '(m))
(cl:defmethod start_way-val ((m <ArtQuadrilateral>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader art_msgs-msg:start_way-val is deprecated.  Use art_msgs-msg:start_way instead.")
  (start_way m))

(cl:ensure-generic-function 'end_way-val :lambda-list '(m))
(cl:defmethod end_way-val ((m <ArtQuadrilateral>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader art_msgs-msg:end_way-val is deprecated.  Use art_msgs-msg:end_way instead.")
  (end_way m))

(cl:ensure-generic-function 'left_boundary-val :lambda-list '(m))
(cl:defmethod left_boundary-val ((m <ArtQuadrilateral>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader art_msgs-msg:left_boundary-val is deprecated.  Use art_msgs-msg:left_boundary instead.")
  (left_boundary m))

(cl:ensure-generic-function 'right_boundary-val :lambda-list '(m))
(cl:defmethod right_boundary-val ((m <ArtQuadrilateral>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader art_msgs-msg:right_boundary-val is deprecated.  Use art_msgs-msg:right_boundary instead.")
  (right_boundary m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ArtQuadrilateral>)))
    "Constants for message type '<ArtQuadrilateral>"
  '((:BOTTOM_LEFT . 0)
    (:TOP_LEFT . 1)
    (:TOP_RIGHT . 2)
    (:BOTTOM_RIGHT . 3)
    (:QUAD_SIZE . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ArtQuadrilateral)))
    "Constants for message type 'ArtQuadrilateral"
  '((:BOTTOM_LEFT . 0)
    (:TOP_LEFT . 1)
    (:TOP_RIGHT . 2)
    (:BOTTOM_RIGHT . 3)
    (:QUAD_SIZE . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ArtQuadrilateral>) ostream)
  "Serializes a message object of type '<ArtQuadrilateral>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'poly) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'midpoint) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'heading))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'length))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'poly_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_stop) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_transition) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'contains_way) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'start_way) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'end_way) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'left_boundary) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'right_boundary) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ArtQuadrilateral>) istream)
  "Deserializes a message object of type '<ArtQuadrilateral>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'poly) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'midpoint) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'heading) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'length) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'poly_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:slot-value msg 'is_stop) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'is_transition) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'contains_way) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'start_way) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'end_way) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'left_boundary) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'right_boundary) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ArtQuadrilateral>)))
  "Returns string type for a message object of type '<ArtQuadrilateral>"
  "art_msgs/ArtQuadrilateral")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ArtQuadrilateral)))
  "Returns string type for a message object of type 'ArtQuadrilateral"
  "art_msgs/ArtQuadrilateral")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ArtQuadrilateral>)))
  "Returns md5sum for a message object of type '<ArtQuadrilateral>"
  "d704c9f78f17e5d333efb87e5729a41e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ArtQuadrilateral)))
  "Returns md5sum for a message object of type 'ArtQuadrilateral"
  "d704c9f78f17e5d333efb87e5729a41e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ArtQuadrilateral>)))
  "Returns full string definition for message of type '<ArtQuadrilateral>"
  (cl:format cl:nil "# ART quadrilateral polygon~%# $Id: ArtQuadrilateral.msg 614 2010-09-24 15:08:46Z jack.oquin $~%~%# Each of these polygons is a quadrilateral.  The four vertex points~%# are ordered relative to the heading of the lane containing it.~%~%geometry_msgs/Polygon poly~%int32 bottom_left  = 0~%int32 top_left     = 1~%int32 top_right    = 2~%int32 bottom_right = 3~%int32 quad_size = 4~%~%geometry_msgs/Point midpoint # Middle of the polygon~%~%float32 heading         # average of right and left boundary headings~%float32 length          # length of the polygon~%int32 poly_id           # unique MapLanes ID~%~%bool is_stop            # this poly has a stop waypoint~%bool is_transition      # not a lane polygon, no waypoint~%bool contains_way       # both start_way and end_way are the contained waypoint~%~%MapID start_way~%MapID end_way~%~%LaneMarking left_boundary~%LaneMarking right_boundary~%~%================================================================================~%MSG: geometry_msgs/Polygon~%#A specification of a polygon where the first and last points are assumed to be connected~%geometry_msgs/Point32[] points~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: art_msgs/MapID~%# Road map identifier for segments, lanes and way-points.~%# $Id: MapID.msg 614 2010-09-24 15:08:46Z jack.oquin $~%~%uint16 NULL_ID = 65535~%~%uint16 seg      # segment ID~%uint16 lane     # lane ID~%uint16 pt       # way-point ID~%~%================================================================================~%MSG: art_msgs/LaneMarking~%# Route Network Definition File lane marking~%# $Id: LaneMarking.msg 614 2010-09-24 15:08:46Z jack.oquin $~%~%int16 DOUBLE_YELLOW = 0~%int16 SOLID_YELLOW = 1~%int16 SOLID_WHITE = 2~%int16 BROKEN_WHITE = 3~%int16 UNDEFINED = 4~%~%int16 lane_marking~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ArtQuadrilateral)))
  "Returns full string definition for message of type 'ArtQuadrilateral"
  (cl:format cl:nil "# ART quadrilateral polygon~%# $Id: ArtQuadrilateral.msg 614 2010-09-24 15:08:46Z jack.oquin $~%~%# Each of these polygons is a quadrilateral.  The four vertex points~%# are ordered relative to the heading of the lane containing it.~%~%geometry_msgs/Polygon poly~%int32 bottom_left  = 0~%int32 top_left     = 1~%int32 top_right    = 2~%int32 bottom_right = 3~%int32 quad_size = 4~%~%geometry_msgs/Point midpoint # Middle of the polygon~%~%float32 heading         # average of right and left boundary headings~%float32 length          # length of the polygon~%int32 poly_id           # unique MapLanes ID~%~%bool is_stop            # this poly has a stop waypoint~%bool is_transition      # not a lane polygon, no waypoint~%bool contains_way       # both start_way and end_way are the contained waypoint~%~%MapID start_way~%MapID end_way~%~%LaneMarking left_boundary~%LaneMarking right_boundary~%~%================================================================================~%MSG: geometry_msgs/Polygon~%#A specification of a polygon where the first and last points are assumed to be connected~%geometry_msgs/Point32[] points~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: art_msgs/MapID~%# Road map identifier for segments, lanes and way-points.~%# $Id: MapID.msg 614 2010-09-24 15:08:46Z jack.oquin $~%~%uint16 NULL_ID = 65535~%~%uint16 seg      # segment ID~%uint16 lane     # lane ID~%uint16 pt       # way-point ID~%~%================================================================================~%MSG: art_msgs/LaneMarking~%# Route Network Definition File lane marking~%# $Id: LaneMarking.msg 614 2010-09-24 15:08:46Z jack.oquin $~%~%int16 DOUBLE_YELLOW = 0~%int16 SOLID_YELLOW = 1~%int16 SOLID_WHITE = 2~%int16 BROKEN_WHITE = 3~%int16 UNDEFINED = 4~%~%int16 lane_marking~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ArtQuadrilateral>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'poly))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'midpoint))
     4
     4
     4
     1
     1
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'start_way))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'end_way))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'left_boundary))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'right_boundary))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ArtQuadrilateral>))
  "Converts a ROS message object to a list"
  (cl:list 'ArtQuadrilateral
    (cl:cons ':poly (poly msg))
    (cl:cons ':midpoint (midpoint msg))
    (cl:cons ':heading (heading msg))
    (cl:cons ':length (length msg))
    (cl:cons ':poly_id (poly_id msg))
    (cl:cons ':is_stop (is_stop msg))
    (cl:cons ':is_transition (is_transition msg))
    (cl:cons ':contains_way (contains_way msg))
    (cl:cons ':start_way (start_way msg))
    (cl:cons ':end_way (end_way msg))
    (cl:cons ':left_boundary (left_boundary msg))
    (cl:cons ':right_boundary (right_boundary msg))
))
