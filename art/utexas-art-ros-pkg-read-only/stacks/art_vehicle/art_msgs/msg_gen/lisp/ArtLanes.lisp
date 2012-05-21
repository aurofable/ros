; Auto-generated. Do not edit!


(cl:in-package art_msgs-msg)


;//! \htmlinclude ArtLanes.msg.html

(cl:defclass <ArtLanes> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (polygons
    :reader polygons
    :initarg :polygons
    :type (cl:vector art_msgs-msg:ArtQuadrilateral)
   :initform (cl:make-array 0 :element-type 'art_msgs-msg:ArtQuadrilateral :initial-element (cl:make-instance 'art_msgs-msg:ArtQuadrilateral))))
)

(cl:defclass ArtLanes (<ArtLanes>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ArtLanes>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ArtLanes)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name art_msgs-msg:<ArtLanes> is deprecated: use art_msgs-msg:ArtLanes instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ArtLanes>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader art_msgs-msg:header-val is deprecated.  Use art_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'polygons-val :lambda-list '(m))
(cl:defmethod polygons-val ((m <ArtLanes>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader art_msgs-msg:polygons-val is deprecated.  Use art_msgs-msg:polygons instead.")
  (polygons m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ArtLanes>) ostream)
  "Serializes a message object of type '<ArtLanes>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'polygons))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'polygons))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ArtLanes>) istream)
  "Deserializes a message object of type '<ArtLanes>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'polygons) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'polygons)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'art_msgs-msg:ArtQuadrilateral))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ArtLanes>)))
  "Returns string type for a message object of type '<ArtLanes>"
  "art_msgs/ArtLanes")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ArtLanes)))
  "Returns string type for a message object of type 'ArtLanes"
  "art_msgs/ArtLanes")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ArtLanes>)))
  "Returns md5sum for a message object of type '<ArtLanes>"
  "384de56fb723b4265b396fcf86b17531")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ArtLanes)))
  "Returns md5sum for a message object of type 'ArtLanes"
  "384de56fb723b4265b396fcf86b17531")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ArtLanes>)))
  "Returns full string definition for message of type '<ArtLanes>"
  (cl:format cl:nil "# ART lanes message~%# $Id: ArtLanes.msg 614 2010-09-24 15:08:46Z jack.oquin $~%~%Header header~%ArtQuadrilateral[] polygons~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: art_msgs/ArtQuadrilateral~%# ART quadrilateral polygon~%# $Id: ArtQuadrilateral.msg 614 2010-09-24 15:08:46Z jack.oquin $~%~%# Each of these polygons is a quadrilateral.  The four vertex points~%# are ordered relative to the heading of the lane containing it.~%~%geometry_msgs/Polygon poly~%int32 bottom_left  = 0~%int32 top_left     = 1~%int32 top_right    = 2~%int32 bottom_right = 3~%int32 quad_size = 4~%~%geometry_msgs/Point midpoint # Middle of the polygon~%~%float32 heading         # average of right and left boundary headings~%float32 length          # length of the polygon~%int32 poly_id           # unique MapLanes ID~%~%bool is_stop            # this poly has a stop waypoint~%bool is_transition      # not a lane polygon, no waypoint~%bool contains_way       # both start_way and end_way are the contained waypoint~%~%MapID start_way~%MapID end_way~%~%LaneMarking left_boundary~%LaneMarking right_boundary~%~%================================================================================~%MSG: geometry_msgs/Polygon~%#A specification of a polygon where the first and last points are assumed to be connected~%geometry_msgs/Point32[] points~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: art_msgs/MapID~%# Road map identifier for segments, lanes and way-points.~%# $Id: MapID.msg 614 2010-09-24 15:08:46Z jack.oquin $~%~%uint16 NULL_ID = 65535~%~%uint16 seg      # segment ID~%uint16 lane     # lane ID~%uint16 pt       # way-point ID~%~%================================================================================~%MSG: art_msgs/LaneMarking~%# Route Network Definition File lane marking~%# $Id: LaneMarking.msg 614 2010-09-24 15:08:46Z jack.oquin $~%~%int16 DOUBLE_YELLOW = 0~%int16 SOLID_YELLOW = 1~%int16 SOLID_WHITE = 2~%int16 BROKEN_WHITE = 3~%int16 UNDEFINED = 4~%~%int16 lane_marking~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ArtLanes)))
  "Returns full string definition for message of type 'ArtLanes"
  (cl:format cl:nil "# ART lanes message~%# $Id: ArtLanes.msg 614 2010-09-24 15:08:46Z jack.oquin $~%~%Header header~%ArtQuadrilateral[] polygons~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: art_msgs/ArtQuadrilateral~%# ART quadrilateral polygon~%# $Id: ArtQuadrilateral.msg 614 2010-09-24 15:08:46Z jack.oquin $~%~%# Each of these polygons is a quadrilateral.  The four vertex points~%# are ordered relative to the heading of the lane containing it.~%~%geometry_msgs/Polygon poly~%int32 bottom_left  = 0~%int32 top_left     = 1~%int32 top_right    = 2~%int32 bottom_right = 3~%int32 quad_size = 4~%~%geometry_msgs/Point midpoint # Middle of the polygon~%~%float32 heading         # average of right and left boundary headings~%float32 length          # length of the polygon~%int32 poly_id           # unique MapLanes ID~%~%bool is_stop            # this poly has a stop waypoint~%bool is_transition      # not a lane polygon, no waypoint~%bool contains_way       # both start_way and end_way are the contained waypoint~%~%MapID start_way~%MapID end_way~%~%LaneMarking left_boundary~%LaneMarking right_boundary~%~%================================================================================~%MSG: geometry_msgs/Polygon~%#A specification of a polygon where the first and last points are assumed to be connected~%geometry_msgs/Point32[] points~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: art_msgs/MapID~%# Road map identifier for segments, lanes and way-points.~%# $Id: MapID.msg 614 2010-09-24 15:08:46Z jack.oquin $~%~%uint16 NULL_ID = 65535~%~%uint16 seg      # segment ID~%uint16 lane     # lane ID~%uint16 pt       # way-point ID~%~%================================================================================~%MSG: art_msgs/LaneMarking~%# Route Network Definition File lane marking~%# $Id: LaneMarking.msg 614 2010-09-24 15:08:46Z jack.oquin $~%~%int16 DOUBLE_YELLOW = 0~%int16 SOLID_YELLOW = 1~%int16 SOLID_WHITE = 2~%int16 BROKEN_WHITE = 3~%int16 UNDEFINED = 4~%~%int16 lane_marking~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ArtLanes>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'polygons) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ArtLanes>))
  "Converts a ROS message object to a list"
  (cl:list 'ArtLanes
    (cl:cons ':header (header msg))
    (cl:cons ':polygons (polygons msg))
))
