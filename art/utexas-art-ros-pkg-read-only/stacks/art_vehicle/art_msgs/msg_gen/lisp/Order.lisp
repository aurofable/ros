; Auto-generated. Do not edit!


(cl:in-package art_msgs-msg)


;//! \htmlinclude Order.msg.html

(cl:defclass <Order> (roslisp-msg-protocol:ros-message)
  ((behavior
    :reader behavior
    :initarg :behavior
    :type art_msgs-msg:Behavior
    :initform (cl:make-instance 'art_msgs-msg:Behavior))
   (waypt
    :reader waypt
    :initarg :waypt
    :type (cl:vector art_msgs-msg:WayPoint)
   :initform (cl:make-array 5 :element-type 'art_msgs-msg:WayPoint :initial-element (cl:make-instance 'art_msgs-msg:WayPoint)))
   (chkpt
    :reader chkpt
    :initarg :chkpt
    :type (cl:vector art_msgs-msg:WayPoint)
   :initform (cl:make-array 2 :element-type 'art_msgs-msg:WayPoint :initial-element (cl:make-instance 'art_msgs-msg:WayPoint)))
   (min_speed
    :reader min_speed
    :initarg :min_speed
    :type cl:float
    :initform 0.0)
   (max_speed
    :reader max_speed
    :initarg :max_speed
    :type cl:float
    :initform 0.0)
   (replan_num
    :reader replan_num
    :initarg :replan_num
    :type cl:integer
    :initform 0)
   (next_uturn
    :reader next_uturn
    :initarg :next_uturn
    :type cl:integer
    :initform 0))
)

(cl:defclass Order (<Order>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Order>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Order)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name art_msgs-msg:<Order> is deprecated: use art_msgs-msg:Order instead.")))

(cl:ensure-generic-function 'behavior-val :lambda-list '(m))
(cl:defmethod behavior-val ((m <Order>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader art_msgs-msg:behavior-val is deprecated.  Use art_msgs-msg:behavior instead.")
  (behavior m))

(cl:ensure-generic-function 'waypt-val :lambda-list '(m))
(cl:defmethod waypt-val ((m <Order>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader art_msgs-msg:waypt-val is deprecated.  Use art_msgs-msg:waypt instead.")
  (waypt m))

(cl:ensure-generic-function 'chkpt-val :lambda-list '(m))
(cl:defmethod chkpt-val ((m <Order>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader art_msgs-msg:chkpt-val is deprecated.  Use art_msgs-msg:chkpt instead.")
  (chkpt m))

(cl:ensure-generic-function 'min_speed-val :lambda-list '(m))
(cl:defmethod min_speed-val ((m <Order>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader art_msgs-msg:min_speed-val is deprecated.  Use art_msgs-msg:min_speed instead.")
  (min_speed m))

(cl:ensure-generic-function 'max_speed-val :lambda-list '(m))
(cl:defmethod max_speed-val ((m <Order>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader art_msgs-msg:max_speed-val is deprecated.  Use art_msgs-msg:max_speed instead.")
  (max_speed m))

(cl:ensure-generic-function 'replan_num-val :lambda-list '(m))
(cl:defmethod replan_num-val ((m <Order>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader art_msgs-msg:replan_num-val is deprecated.  Use art_msgs-msg:replan_num instead.")
  (replan_num m))

(cl:ensure-generic-function 'next_uturn-val :lambda-list '(m))
(cl:defmethod next_uturn-val ((m <Order>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader art_msgs-msg:next_uturn-val is deprecated.  Use art_msgs-msg:next_uturn instead.")
  (next_uturn m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Order>)))
    "Constants for message type '<Order>"
  '((:N_WAYPTS . 5)
    (:N_CHKPTS . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Order)))
    "Constants for message type 'Order"
  '((:N_WAYPTS . 5)
    (:N_CHKPTS . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Order>) ostream)
  "Serializes a message object of type '<Order>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'behavior) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'waypt))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'chkpt))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'min_speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'max_speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'replan_num)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'next_uturn)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Order>) istream)
  "Deserializes a message object of type '<Order>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'behavior) istream)
  (cl:setf (cl:slot-value msg 'waypt) (cl:make-array 5))
  (cl:let ((vals (cl:slot-value msg 'waypt)))
    (cl:dotimes (i 5)
    (cl:setf (cl:aref vals i) (cl:make-instance 'art_msgs-msg:WayPoint))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream)))
  (cl:setf (cl:slot-value msg 'chkpt) (cl:make-array 2))
  (cl:let ((vals (cl:slot-value msg 'chkpt)))
    (cl:dotimes (i 2)
    (cl:setf (cl:aref vals i) (cl:make-instance 'art_msgs-msg:WayPoint))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'min_speed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_speed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'replan_num) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'next_uturn) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Order>)))
  "Returns string type for a message object of type '<Order>"
  "art_msgs/Order")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Order)))
  "Returns string type for a message object of type 'Order"
  "art_msgs/Order")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Order>)))
  "Returns md5sum for a message object of type '<Order>"
  "f43d538cba2d46c585cc23d97b9223b2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Order)))
  "Returns md5sum for a message object of type 'Order"
  "f43d538cba2d46c585cc23d97b9223b2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Order>)))
  "Returns full string definition for message of type '<Order>"
  (cl:format cl:nil "# commander order for the navigator~%# $Id: Order.msg 615 2010-09-24 16:07:50Z jack.oquin $~%~%uint32 N_WAYPTS = 5     		# number of way-points in order~%uint32 N_CHKPTS = 2             	# number of checkpoints in order~%~%Behavior behavior			# requested behavior~%art_msgs/WayPoint[5] waypt       	# way-point array~%art_msgs/WayPoint[2] chkpt       	# next two goal checkpoints~%float32 min_speed			# in meters/sec~%float32 max_speed~%int32 replan_num~%int32 next_uturn         		# Uturn between [1] and [2]~%~%================================================================================~%MSG: art_msgs/Behavior~%# ART Navigator behaviors (lower numbers have higher priority)~%# $Id: Behavior.msg 996 2011-02-27 16:07:34Z jack.oquin $~%~%# enumerated behavior values~%int16 Abort       = 0~%int16 Quit        = 1~%int16 Pause       = 2~%int16 Run         = 3~%int16 Suspend     = 4~%int16 Initialize  = 5~%int16 Go          = 6~%int16 NONE        = 7~%int16 N_behaviors = 8~%~%int16 value~%~%================================================================================~%MSG: art_msgs/WayPoint~%# Way-point attributes~%# $Id: WayPoint.msg 614 2010-09-24 15:08:46Z jack.oquin $~%~%float64 latitude			# latitude in degrees~%float64 longitude			# longitude in degrees~%geometry_msgs/Point32 mapxy		# MapXY position~%MapID id				# way-point ID~%uint16 index    			# parser index of waypoint~%~%# way-point flags~%bool is_entry                           # lane or zone exit point~%bool is_exit				# lane or zone entry point~%bool is_goal				# this is a goal checkpoint~%bool is_lane_change			# change lanes after here~%bool is_spot				# parking spot~%bool is_stop				# stop line here~%bool is_perimeter			# zone perimeter point~%int32 checkpoint_id			# checkpoint ID or zero~%float32 lane_width~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: art_msgs/MapID~%# Road map identifier for segments, lanes and way-points.~%# $Id: MapID.msg 614 2010-09-24 15:08:46Z jack.oquin $~%~%uint16 NULL_ID = 65535~%~%uint16 seg      # segment ID~%uint16 lane     # lane ID~%uint16 pt       # way-point ID~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Order)))
  "Returns full string definition for message of type 'Order"
  (cl:format cl:nil "# commander order for the navigator~%# $Id: Order.msg 615 2010-09-24 16:07:50Z jack.oquin $~%~%uint32 N_WAYPTS = 5     		# number of way-points in order~%uint32 N_CHKPTS = 2             	# number of checkpoints in order~%~%Behavior behavior			# requested behavior~%art_msgs/WayPoint[5] waypt       	# way-point array~%art_msgs/WayPoint[2] chkpt       	# next two goal checkpoints~%float32 min_speed			# in meters/sec~%float32 max_speed~%int32 replan_num~%int32 next_uturn         		# Uturn between [1] and [2]~%~%================================================================================~%MSG: art_msgs/Behavior~%# ART Navigator behaviors (lower numbers have higher priority)~%# $Id: Behavior.msg 996 2011-02-27 16:07:34Z jack.oquin $~%~%# enumerated behavior values~%int16 Abort       = 0~%int16 Quit        = 1~%int16 Pause       = 2~%int16 Run         = 3~%int16 Suspend     = 4~%int16 Initialize  = 5~%int16 Go          = 6~%int16 NONE        = 7~%int16 N_behaviors = 8~%~%int16 value~%~%================================================================================~%MSG: art_msgs/WayPoint~%# Way-point attributes~%# $Id: WayPoint.msg 614 2010-09-24 15:08:46Z jack.oquin $~%~%float64 latitude			# latitude in degrees~%float64 longitude			# longitude in degrees~%geometry_msgs/Point32 mapxy		# MapXY position~%MapID id				# way-point ID~%uint16 index    			# parser index of waypoint~%~%# way-point flags~%bool is_entry                           # lane or zone exit point~%bool is_exit				# lane or zone entry point~%bool is_goal				# this is a goal checkpoint~%bool is_lane_change			# change lanes after here~%bool is_spot				# parking spot~%bool is_stop				# stop line here~%bool is_perimeter			# zone perimeter point~%int32 checkpoint_id			# checkpoint ID or zero~%float32 lane_width~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: art_msgs/MapID~%# Road map identifier for segments, lanes and way-points.~%# $Id: MapID.msg 614 2010-09-24 15:08:46Z jack.oquin $~%~%uint16 NULL_ID = 65535~%~%uint16 seg      # segment ID~%uint16 lane     # lane ID~%uint16 pt       # way-point ID~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Order>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'behavior))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'waypt) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'chkpt) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Order>))
  "Converts a ROS message object to a list"
  (cl:list 'Order
    (cl:cons ':behavior (behavior msg))
    (cl:cons ':waypt (waypt msg))
    (cl:cons ':chkpt (chkpt msg))
    (cl:cons ':min_speed (min_speed msg))
    (cl:cons ':max_speed (max_speed msg))
    (cl:cons ':replan_num (replan_num msg))
    (cl:cons ':next_uturn (next_uturn msg))
))
