; Auto-generated. Do not edit!


(cl:in-package art_msgs-msg)


;//! \htmlinclude NavigatorState.msg.html

(cl:defclass <NavigatorState> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (estop
    :reader estop
    :initarg :estop
    :type art_msgs-msg:EstopState
    :initform (cl:make-instance 'art_msgs-msg:EstopState))
   (road
    :reader road
    :initarg :road
    :type art_msgs-msg:RoadState
    :initform (cl:make-instance 'art_msgs-msg:RoadState))
   (last_waypt
    :reader last_waypt
    :initarg :last_waypt
    :type art_msgs-msg:MapID
    :initform (cl:make-instance 'art_msgs-msg:MapID))
   (replan_waypt
    :reader replan_waypt
    :initarg :replan_waypt
    :type art_msgs-msg:MapID
    :initform (cl:make-instance 'art_msgs-msg:MapID))
   (cur_poly
    :reader cur_poly
    :initarg :cur_poly
    :type cl:integer
    :initform 0)
   (alarm
    :reader alarm
    :initarg :alarm
    :type cl:boolean
    :initform cl:nil)
   (flasher
    :reader flasher
    :initarg :flasher
    :type cl:boolean
    :initform cl:nil)
   (lane_blocked
    :reader lane_blocked
    :initarg :lane_blocked
    :type cl:boolean
    :initform cl:nil)
   (road_blocked
    :reader road_blocked
    :initarg :road_blocked
    :type cl:boolean
    :initform cl:nil)
   (reverse
    :reader reverse
    :initarg :reverse
    :type cl:boolean
    :initform cl:nil)
   (signal_left
    :reader signal_left
    :initarg :signal_left
    :type cl:boolean
    :initform cl:nil)
   (signal_right
    :reader signal_right
    :initarg :signal_right
    :type cl:boolean
    :initform cl:nil)
   (stopped
    :reader stopped
    :initarg :stopped
    :type cl:boolean
    :initform cl:nil)
   (have_zones
    :reader have_zones
    :initarg :have_zones
    :type cl:boolean
    :initform cl:nil)
   (last_order
    :reader last_order
    :initarg :last_order
    :type art_msgs-msg:Order
    :initform (cl:make-instance 'art_msgs-msg:Order)))
)

(cl:defclass NavigatorState (<NavigatorState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NavigatorState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NavigatorState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name art_msgs-msg:<NavigatorState> is deprecated: use art_msgs-msg:NavigatorState instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <NavigatorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader art_msgs-msg:header-val is deprecated.  Use art_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'estop-val :lambda-list '(m))
(cl:defmethod estop-val ((m <NavigatorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader art_msgs-msg:estop-val is deprecated.  Use art_msgs-msg:estop instead.")
  (estop m))

(cl:ensure-generic-function 'road-val :lambda-list '(m))
(cl:defmethod road-val ((m <NavigatorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader art_msgs-msg:road-val is deprecated.  Use art_msgs-msg:road instead.")
  (road m))

(cl:ensure-generic-function 'last_waypt-val :lambda-list '(m))
(cl:defmethod last_waypt-val ((m <NavigatorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader art_msgs-msg:last_waypt-val is deprecated.  Use art_msgs-msg:last_waypt instead.")
  (last_waypt m))

(cl:ensure-generic-function 'replan_waypt-val :lambda-list '(m))
(cl:defmethod replan_waypt-val ((m <NavigatorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader art_msgs-msg:replan_waypt-val is deprecated.  Use art_msgs-msg:replan_waypt instead.")
  (replan_waypt m))

(cl:ensure-generic-function 'cur_poly-val :lambda-list '(m))
(cl:defmethod cur_poly-val ((m <NavigatorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader art_msgs-msg:cur_poly-val is deprecated.  Use art_msgs-msg:cur_poly instead.")
  (cur_poly m))

(cl:ensure-generic-function 'alarm-val :lambda-list '(m))
(cl:defmethod alarm-val ((m <NavigatorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader art_msgs-msg:alarm-val is deprecated.  Use art_msgs-msg:alarm instead.")
  (alarm m))

(cl:ensure-generic-function 'flasher-val :lambda-list '(m))
(cl:defmethod flasher-val ((m <NavigatorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader art_msgs-msg:flasher-val is deprecated.  Use art_msgs-msg:flasher instead.")
  (flasher m))

(cl:ensure-generic-function 'lane_blocked-val :lambda-list '(m))
(cl:defmethod lane_blocked-val ((m <NavigatorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader art_msgs-msg:lane_blocked-val is deprecated.  Use art_msgs-msg:lane_blocked instead.")
  (lane_blocked m))

(cl:ensure-generic-function 'road_blocked-val :lambda-list '(m))
(cl:defmethod road_blocked-val ((m <NavigatorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader art_msgs-msg:road_blocked-val is deprecated.  Use art_msgs-msg:road_blocked instead.")
  (road_blocked m))

(cl:ensure-generic-function 'reverse-val :lambda-list '(m))
(cl:defmethod reverse-val ((m <NavigatorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader art_msgs-msg:reverse-val is deprecated.  Use art_msgs-msg:reverse instead.")
  (reverse m))

(cl:ensure-generic-function 'signal_left-val :lambda-list '(m))
(cl:defmethod signal_left-val ((m <NavigatorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader art_msgs-msg:signal_left-val is deprecated.  Use art_msgs-msg:signal_left instead.")
  (signal_left m))

(cl:ensure-generic-function 'signal_right-val :lambda-list '(m))
(cl:defmethod signal_right-val ((m <NavigatorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader art_msgs-msg:signal_right-val is deprecated.  Use art_msgs-msg:signal_right instead.")
  (signal_right m))

(cl:ensure-generic-function 'stopped-val :lambda-list '(m))
(cl:defmethod stopped-val ((m <NavigatorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader art_msgs-msg:stopped-val is deprecated.  Use art_msgs-msg:stopped instead.")
  (stopped m))

(cl:ensure-generic-function 'have_zones-val :lambda-list '(m))
(cl:defmethod have_zones-val ((m <NavigatorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader art_msgs-msg:have_zones-val is deprecated.  Use art_msgs-msg:have_zones instead.")
  (have_zones m))

(cl:ensure-generic-function 'last_order-val :lambda-list '(m))
(cl:defmethod last_order-val ((m <NavigatorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader art_msgs-msg:last_order-val is deprecated.  Use art_msgs-msg:last_order instead.")
  (last_order m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NavigatorState>) ostream)
  "Serializes a message object of type '<NavigatorState>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'estop) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'road) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'last_waypt) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'replan_waypt) ostream)
  (cl:let* ((signed (cl:slot-value msg 'cur_poly)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'alarm) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'flasher) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'lane_blocked) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'road_blocked) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'reverse) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'signal_left) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'signal_right) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'stopped) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'have_zones) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'last_order) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NavigatorState>) istream)
  "Deserializes a message object of type '<NavigatorState>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'estop) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'road) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'last_waypt) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'replan_waypt) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cur_poly) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:slot-value msg 'alarm) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'flasher) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'lane_blocked) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'road_blocked) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'reverse) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'signal_left) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'signal_right) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'stopped) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'have_zones) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'last_order) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NavigatorState>)))
  "Returns string type for a message object of type '<NavigatorState>"
  "art_msgs/NavigatorState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NavigatorState)))
  "Returns string type for a message object of type 'NavigatorState"
  "art_msgs/NavigatorState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NavigatorState>)))
  "Returns md5sum for a message object of type '<NavigatorState>"
  "c40e5f1fdc1b82b80af736960035d5c8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NavigatorState)))
  "Returns md5sum for a message object of type 'NavigatorState"
  "c40e5f1fdc1b82b80af736960035d5c8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NavigatorState>)))
  "Returns full string definition for message of type '<NavigatorState>"
  (cl:format cl:nil "# navigator state message~%# $Id: NavigatorState.msg 615 2010-09-24 16:07:50Z jack.oquin $~%~%Header header~%~%EstopState estop~%RoadState road~%~%art_msgs/MapID last_waypt		# last way-point reached~%art_msgs/MapID replan_waypt		# next way-point for replan~%~%int32 cur_poly                          # current polygon, -1 if none~%~%# status flags~%bool alarm~%bool flasher~%bool lane_blocked~%bool road_blocked~%bool reverse~%bool signal_left~%bool signal_right~%bool stopped~%bool have_zones~%~%Order last_order			# last commander order received~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: art_msgs/EstopState~%# Navigator E-stop state values~%# $Id: EstopState.msg 996 2011-02-27 16:07:34Z jack.oquin $~%~%uint16 Pause    = 0			# E-stop pause (initial state)~%uint16 Run      = 1			# E-stop run enabled~%uint16 Done     = 2			# mission finished (disabled)~%uint16 Suspend  = 3			# suspend autonomous operation~%uint16 N_states = 4~%~%uint16 state~%~%================================================================================~%MSG: art_msgs/RoadState~%# Navigator Road state values~%# $Id: RoadState.msg 615 2010-09-24 16:07:50Z jack.oquin $~%~%uint16 Init      = 0~%uint16 Block     = 1~%uint16 Evade     = 2~%uint16 Follow    = 3~%uint16 Pass      = 4~%uint16 Uturn     = 5~%uint16 WaitCross = 6~%uint16 WaitLane  = 7~%uint16 WaitPass  = 8~%uint16 WaitStop  = 9~%uint16 Zone      = 10~%uint16 N_states  = 11~%~%uint16 state~%~%================================================================================~%MSG: art_msgs/MapID~%# Road map identifier for segments, lanes and way-points.~%# $Id: MapID.msg 614 2010-09-24 15:08:46Z jack.oquin $~%~%uint16 NULL_ID = 65535~%~%uint16 seg      # segment ID~%uint16 lane     # lane ID~%uint16 pt       # way-point ID~%~%================================================================================~%MSG: art_msgs/Order~%# commander order for the navigator~%# $Id: Order.msg 615 2010-09-24 16:07:50Z jack.oquin $~%~%uint32 N_WAYPTS = 5     		# number of way-points in order~%uint32 N_CHKPTS = 2             	# number of checkpoints in order~%~%Behavior behavior			# requested behavior~%art_msgs/WayPoint[5] waypt       	# way-point array~%art_msgs/WayPoint[2] chkpt       	# next two goal checkpoints~%float32 min_speed			# in meters/sec~%float32 max_speed~%int32 replan_num~%int32 next_uturn         		# Uturn between [1] and [2]~%~%================================================================================~%MSG: art_msgs/Behavior~%# ART Navigator behaviors (lower numbers have higher priority)~%# $Id: Behavior.msg 996 2011-02-27 16:07:34Z jack.oquin $~%~%# enumerated behavior values~%int16 Abort       = 0~%int16 Quit        = 1~%int16 Pause       = 2~%int16 Run         = 3~%int16 Suspend     = 4~%int16 Initialize  = 5~%int16 Go          = 6~%int16 NONE        = 7~%int16 N_behaviors = 8~%~%int16 value~%~%================================================================================~%MSG: art_msgs/WayPoint~%# Way-point attributes~%# $Id: WayPoint.msg 614 2010-09-24 15:08:46Z jack.oquin $~%~%float64 latitude			# latitude in degrees~%float64 longitude			# longitude in degrees~%geometry_msgs/Point32 mapxy		# MapXY position~%MapID id				# way-point ID~%uint16 index    			# parser index of waypoint~%~%# way-point flags~%bool is_entry                           # lane or zone exit point~%bool is_exit				# lane or zone entry point~%bool is_goal				# this is a goal checkpoint~%bool is_lane_change			# change lanes after here~%bool is_spot				# parking spot~%bool is_stop				# stop line here~%bool is_perimeter			# zone perimeter point~%int32 checkpoint_id			# checkpoint ID or zero~%float32 lane_width~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NavigatorState)))
  "Returns full string definition for message of type 'NavigatorState"
  (cl:format cl:nil "# navigator state message~%# $Id: NavigatorState.msg 615 2010-09-24 16:07:50Z jack.oquin $~%~%Header header~%~%EstopState estop~%RoadState road~%~%art_msgs/MapID last_waypt		# last way-point reached~%art_msgs/MapID replan_waypt		# next way-point for replan~%~%int32 cur_poly                          # current polygon, -1 if none~%~%# status flags~%bool alarm~%bool flasher~%bool lane_blocked~%bool road_blocked~%bool reverse~%bool signal_left~%bool signal_right~%bool stopped~%bool have_zones~%~%Order last_order			# last commander order received~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: art_msgs/EstopState~%# Navigator E-stop state values~%# $Id: EstopState.msg 996 2011-02-27 16:07:34Z jack.oquin $~%~%uint16 Pause    = 0			# E-stop pause (initial state)~%uint16 Run      = 1			# E-stop run enabled~%uint16 Done     = 2			# mission finished (disabled)~%uint16 Suspend  = 3			# suspend autonomous operation~%uint16 N_states = 4~%~%uint16 state~%~%================================================================================~%MSG: art_msgs/RoadState~%# Navigator Road state values~%# $Id: RoadState.msg 615 2010-09-24 16:07:50Z jack.oquin $~%~%uint16 Init      = 0~%uint16 Block     = 1~%uint16 Evade     = 2~%uint16 Follow    = 3~%uint16 Pass      = 4~%uint16 Uturn     = 5~%uint16 WaitCross = 6~%uint16 WaitLane  = 7~%uint16 WaitPass  = 8~%uint16 WaitStop  = 9~%uint16 Zone      = 10~%uint16 N_states  = 11~%~%uint16 state~%~%================================================================================~%MSG: art_msgs/MapID~%# Road map identifier for segments, lanes and way-points.~%# $Id: MapID.msg 614 2010-09-24 15:08:46Z jack.oquin $~%~%uint16 NULL_ID = 65535~%~%uint16 seg      # segment ID~%uint16 lane     # lane ID~%uint16 pt       # way-point ID~%~%================================================================================~%MSG: art_msgs/Order~%# commander order for the navigator~%# $Id: Order.msg 615 2010-09-24 16:07:50Z jack.oquin $~%~%uint32 N_WAYPTS = 5     		# number of way-points in order~%uint32 N_CHKPTS = 2             	# number of checkpoints in order~%~%Behavior behavior			# requested behavior~%art_msgs/WayPoint[5] waypt       	# way-point array~%art_msgs/WayPoint[2] chkpt       	# next two goal checkpoints~%float32 min_speed			# in meters/sec~%float32 max_speed~%int32 replan_num~%int32 next_uturn         		# Uturn between [1] and [2]~%~%================================================================================~%MSG: art_msgs/Behavior~%# ART Navigator behaviors (lower numbers have higher priority)~%# $Id: Behavior.msg 996 2011-02-27 16:07:34Z jack.oquin $~%~%# enumerated behavior values~%int16 Abort       = 0~%int16 Quit        = 1~%int16 Pause       = 2~%int16 Run         = 3~%int16 Suspend     = 4~%int16 Initialize  = 5~%int16 Go          = 6~%int16 NONE        = 7~%int16 N_behaviors = 8~%~%int16 value~%~%================================================================================~%MSG: art_msgs/WayPoint~%# Way-point attributes~%# $Id: WayPoint.msg 614 2010-09-24 15:08:46Z jack.oquin $~%~%float64 latitude			# latitude in degrees~%float64 longitude			# longitude in degrees~%geometry_msgs/Point32 mapxy		# MapXY position~%MapID id				# way-point ID~%uint16 index    			# parser index of waypoint~%~%# way-point flags~%bool is_entry                           # lane or zone exit point~%bool is_exit				# lane or zone entry point~%bool is_goal				# this is a goal checkpoint~%bool is_lane_change			# change lanes after here~%bool is_spot				# parking spot~%bool is_stop				# stop line here~%bool is_perimeter			# zone perimeter point~%int32 checkpoint_id			# checkpoint ID or zero~%float32 lane_width~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NavigatorState>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'estop))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'road))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'last_waypt))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'replan_waypt))
     4
     1
     1
     1
     1
     1
     1
     1
     1
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'last_order))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NavigatorState>))
  "Converts a ROS message object to a list"
  (cl:list 'NavigatorState
    (cl:cons ':header (header msg))
    (cl:cons ':estop (estop msg))
    (cl:cons ':road (road msg))
    (cl:cons ':last_waypt (last_waypt msg))
    (cl:cons ':replan_waypt (replan_waypt msg))
    (cl:cons ':cur_poly (cur_poly msg))
    (cl:cons ':alarm (alarm msg))
    (cl:cons ':flasher (flasher msg))
    (cl:cons ':lane_blocked (lane_blocked msg))
    (cl:cons ':road_blocked (road_blocked msg))
    (cl:cons ':reverse (reverse msg))
    (cl:cons ':signal_left (signal_left msg))
    (cl:cons ':signal_right (signal_right msg))
    (cl:cons ':stopped (stopped msg))
    (cl:cons ':have_zones (have_zones msg))
    (cl:cons ':last_order (last_order msg))
))
