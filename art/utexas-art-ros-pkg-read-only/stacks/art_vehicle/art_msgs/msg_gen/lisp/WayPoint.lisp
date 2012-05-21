; Auto-generated. Do not edit!


(cl:in-package art_msgs-msg)


;//! \htmlinclude WayPoint.msg.html

(cl:defclass <WayPoint> (roslisp-msg-protocol:ros-message)
  ((latitude
    :reader latitude
    :initarg :latitude
    :type cl:float
    :initform 0.0)
   (longitude
    :reader longitude
    :initarg :longitude
    :type cl:float
    :initform 0.0)
   (mapxy
    :reader mapxy
    :initarg :mapxy
    :type geometry_msgs-msg:Point32
    :initform (cl:make-instance 'geometry_msgs-msg:Point32))
   (id
    :reader id
    :initarg :id
    :type art_msgs-msg:MapID
    :initform (cl:make-instance 'art_msgs-msg:MapID))
   (index
    :reader index
    :initarg :index
    :type cl:fixnum
    :initform 0)
   (is_entry
    :reader is_entry
    :initarg :is_entry
    :type cl:boolean
    :initform cl:nil)
   (is_exit
    :reader is_exit
    :initarg :is_exit
    :type cl:boolean
    :initform cl:nil)
   (is_goal
    :reader is_goal
    :initarg :is_goal
    :type cl:boolean
    :initform cl:nil)
   (is_lane_change
    :reader is_lane_change
    :initarg :is_lane_change
    :type cl:boolean
    :initform cl:nil)
   (is_spot
    :reader is_spot
    :initarg :is_spot
    :type cl:boolean
    :initform cl:nil)
   (is_stop
    :reader is_stop
    :initarg :is_stop
    :type cl:boolean
    :initform cl:nil)
   (is_perimeter
    :reader is_perimeter
    :initarg :is_perimeter
    :type cl:boolean
    :initform cl:nil)
   (checkpoint_id
    :reader checkpoint_id
    :initarg :checkpoint_id
    :type cl:integer
    :initform 0)
   (lane_width
    :reader lane_width
    :initarg :lane_width
    :type cl:float
    :initform 0.0))
)

(cl:defclass WayPoint (<WayPoint>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WayPoint>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WayPoint)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name art_msgs-msg:<WayPoint> is deprecated: use art_msgs-msg:WayPoint instead.")))

(cl:ensure-generic-function 'latitude-val :lambda-list '(m))
(cl:defmethod latitude-val ((m <WayPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader art_msgs-msg:latitude-val is deprecated.  Use art_msgs-msg:latitude instead.")
  (latitude m))

(cl:ensure-generic-function 'longitude-val :lambda-list '(m))
(cl:defmethod longitude-val ((m <WayPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader art_msgs-msg:longitude-val is deprecated.  Use art_msgs-msg:longitude instead.")
  (longitude m))

(cl:ensure-generic-function 'mapxy-val :lambda-list '(m))
(cl:defmethod mapxy-val ((m <WayPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader art_msgs-msg:mapxy-val is deprecated.  Use art_msgs-msg:mapxy instead.")
  (mapxy m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <WayPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader art_msgs-msg:id-val is deprecated.  Use art_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'index-val :lambda-list '(m))
(cl:defmethod index-val ((m <WayPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader art_msgs-msg:index-val is deprecated.  Use art_msgs-msg:index instead.")
  (index m))

(cl:ensure-generic-function 'is_entry-val :lambda-list '(m))
(cl:defmethod is_entry-val ((m <WayPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader art_msgs-msg:is_entry-val is deprecated.  Use art_msgs-msg:is_entry instead.")
  (is_entry m))

(cl:ensure-generic-function 'is_exit-val :lambda-list '(m))
(cl:defmethod is_exit-val ((m <WayPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader art_msgs-msg:is_exit-val is deprecated.  Use art_msgs-msg:is_exit instead.")
  (is_exit m))

(cl:ensure-generic-function 'is_goal-val :lambda-list '(m))
(cl:defmethod is_goal-val ((m <WayPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader art_msgs-msg:is_goal-val is deprecated.  Use art_msgs-msg:is_goal instead.")
  (is_goal m))

(cl:ensure-generic-function 'is_lane_change-val :lambda-list '(m))
(cl:defmethod is_lane_change-val ((m <WayPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader art_msgs-msg:is_lane_change-val is deprecated.  Use art_msgs-msg:is_lane_change instead.")
  (is_lane_change m))

(cl:ensure-generic-function 'is_spot-val :lambda-list '(m))
(cl:defmethod is_spot-val ((m <WayPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader art_msgs-msg:is_spot-val is deprecated.  Use art_msgs-msg:is_spot instead.")
  (is_spot m))

(cl:ensure-generic-function 'is_stop-val :lambda-list '(m))
(cl:defmethod is_stop-val ((m <WayPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader art_msgs-msg:is_stop-val is deprecated.  Use art_msgs-msg:is_stop instead.")
  (is_stop m))

(cl:ensure-generic-function 'is_perimeter-val :lambda-list '(m))
(cl:defmethod is_perimeter-val ((m <WayPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader art_msgs-msg:is_perimeter-val is deprecated.  Use art_msgs-msg:is_perimeter instead.")
  (is_perimeter m))

(cl:ensure-generic-function 'checkpoint_id-val :lambda-list '(m))
(cl:defmethod checkpoint_id-val ((m <WayPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader art_msgs-msg:checkpoint_id-val is deprecated.  Use art_msgs-msg:checkpoint_id instead.")
  (checkpoint_id m))

(cl:ensure-generic-function 'lane_width-val :lambda-list '(m))
(cl:defmethod lane_width-val ((m <WayPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader art_msgs-msg:lane_width-val is deprecated.  Use art_msgs-msg:lane_width instead.")
  (lane_width m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WayPoint>) ostream)
  "Serializes a message object of type '<WayPoint>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'latitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'longitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'mapxy) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'id) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'index)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'index)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_entry) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_exit) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_goal) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_lane_change) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_spot) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_stop) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_perimeter) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'checkpoint_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'lane_width))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WayPoint>) istream)
  "Deserializes a message object of type '<WayPoint>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'latitude) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'longitude) (roslisp-utils:decode-double-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'mapxy) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'id) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'index)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'index)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'is_entry) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'is_exit) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'is_goal) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'is_lane_change) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'is_spot) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'is_stop) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'is_perimeter) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'checkpoint_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'lane_width) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WayPoint>)))
  "Returns string type for a message object of type '<WayPoint>"
  "art_msgs/WayPoint")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WayPoint)))
  "Returns string type for a message object of type 'WayPoint"
  "art_msgs/WayPoint")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WayPoint>)))
  "Returns md5sum for a message object of type '<WayPoint>"
  "93d7bd4ade2e33f8e836f5cd46c71e50")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WayPoint)))
  "Returns md5sum for a message object of type 'WayPoint"
  "93d7bd4ade2e33f8e836f5cd46c71e50")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WayPoint>)))
  "Returns full string definition for message of type '<WayPoint>"
  (cl:format cl:nil "# Way-point attributes~%# $Id: WayPoint.msg 614 2010-09-24 15:08:46Z jack.oquin $~%~%float64 latitude			# latitude in degrees~%float64 longitude			# longitude in degrees~%geometry_msgs/Point32 mapxy		# MapXY position~%MapID id				# way-point ID~%uint16 index    			# parser index of waypoint~%~%# way-point flags~%bool is_entry                           # lane or zone exit point~%bool is_exit				# lane or zone entry point~%bool is_goal				# this is a goal checkpoint~%bool is_lane_change			# change lanes after here~%bool is_spot				# parking spot~%bool is_stop				# stop line here~%bool is_perimeter			# zone perimeter point~%int32 checkpoint_id			# checkpoint ID or zero~%float32 lane_width~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: art_msgs/MapID~%# Road map identifier for segments, lanes and way-points.~%# $Id: MapID.msg 614 2010-09-24 15:08:46Z jack.oquin $~%~%uint16 NULL_ID = 65535~%~%uint16 seg      # segment ID~%uint16 lane     # lane ID~%uint16 pt       # way-point ID~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WayPoint)))
  "Returns full string definition for message of type 'WayPoint"
  (cl:format cl:nil "# Way-point attributes~%# $Id: WayPoint.msg 614 2010-09-24 15:08:46Z jack.oquin $~%~%float64 latitude			# latitude in degrees~%float64 longitude			# longitude in degrees~%geometry_msgs/Point32 mapxy		# MapXY position~%MapID id				# way-point ID~%uint16 index    			# parser index of waypoint~%~%# way-point flags~%bool is_entry                           # lane or zone exit point~%bool is_exit				# lane or zone entry point~%bool is_goal				# this is a goal checkpoint~%bool is_lane_change			# change lanes after here~%bool is_spot				# parking spot~%bool is_stop				# stop line here~%bool is_perimeter			# zone perimeter point~%int32 checkpoint_id			# checkpoint ID or zero~%float32 lane_width~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: art_msgs/MapID~%# Road map identifier for segments, lanes and way-points.~%# $Id: MapID.msg 614 2010-09-24 15:08:46Z jack.oquin $~%~%uint16 NULL_ID = 65535~%~%uint16 seg      # segment ID~%uint16 lane     # lane ID~%uint16 pt       # way-point ID~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WayPoint>))
  (cl:+ 0
     8
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'mapxy))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'id))
     2
     1
     1
     1
     1
     1
     1
     1
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WayPoint>))
  "Converts a ROS message object to a list"
  (cl:list 'WayPoint
    (cl:cons ':latitude (latitude msg))
    (cl:cons ':longitude (longitude msg))
    (cl:cons ':mapxy (mapxy msg))
    (cl:cons ':id (id msg))
    (cl:cons ':index (index msg))
    (cl:cons ':is_entry (is_entry msg))
    (cl:cons ':is_exit (is_exit msg))
    (cl:cons ':is_goal (is_goal msg))
    (cl:cons ':is_lane_change (is_lane_change msg))
    (cl:cons ':is_spot (is_spot msg))
    (cl:cons ':is_stop (is_stop msg))
    (cl:cons ':is_perimeter (is_perimeter msg))
    (cl:cons ':checkpoint_id (checkpoint_id msg))
    (cl:cons ':lane_width (lane_width msg))
))
