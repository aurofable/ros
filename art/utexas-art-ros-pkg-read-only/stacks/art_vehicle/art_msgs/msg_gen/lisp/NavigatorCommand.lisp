; Auto-generated. Do not edit!


(cl:in-package art_msgs-msg)


;//! \htmlinclude NavigatorCommand.msg.html

(cl:defclass <NavigatorCommand> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (order
    :reader order
    :initarg :order
    :type art_msgs-msg:Order
    :initform (cl:make-instance 'art_msgs-msg:Order)))
)

(cl:defclass NavigatorCommand (<NavigatorCommand>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NavigatorCommand>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NavigatorCommand)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name art_msgs-msg:<NavigatorCommand> is deprecated: use art_msgs-msg:NavigatorCommand instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <NavigatorCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader art_msgs-msg:header-val is deprecated.  Use art_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'order-val :lambda-list '(m))
(cl:defmethod order-val ((m <NavigatorCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader art_msgs-msg:order-val is deprecated.  Use art_msgs-msg:order instead.")
  (order m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NavigatorCommand>) ostream)
  "Serializes a message object of type '<NavigatorCommand>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'order) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NavigatorCommand>) istream)
  "Deserializes a message object of type '<NavigatorCommand>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'order) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NavigatorCommand>)))
  "Returns string type for a message object of type '<NavigatorCommand>"
  "art_msgs/NavigatorCommand")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NavigatorCommand)))
  "Returns string type for a message object of type 'NavigatorCommand"
  "art_msgs/NavigatorCommand")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NavigatorCommand>)))
  "Returns md5sum for a message object of type '<NavigatorCommand>"
  "415e5ee8b2ed1c9329a949ed123760f3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NavigatorCommand)))
  "Returns md5sum for a message object of type 'NavigatorCommand"
  "415e5ee8b2ed1c9329a949ed123760f3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NavigatorCommand>)))
  "Returns full string definition for message of type '<NavigatorCommand>"
  (cl:format cl:nil "# navigator command message~%# $Id: NavigatorCommand.msg 615 2010-09-24 16:07:50Z jack.oquin $~%~%Header header~%Order  order~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: art_msgs/Order~%# commander order for the navigator~%# $Id: Order.msg 615 2010-09-24 16:07:50Z jack.oquin $~%~%uint32 N_WAYPTS = 5     		# number of way-points in order~%uint32 N_CHKPTS = 2             	# number of checkpoints in order~%~%Behavior behavior			# requested behavior~%art_msgs/WayPoint[5] waypt       	# way-point array~%art_msgs/WayPoint[2] chkpt       	# next two goal checkpoints~%float32 min_speed			# in meters/sec~%float32 max_speed~%int32 replan_num~%int32 next_uturn         		# Uturn between [1] and [2]~%~%================================================================================~%MSG: art_msgs/Behavior~%# ART Navigator behaviors (lower numbers have higher priority)~%# $Id: Behavior.msg 996 2011-02-27 16:07:34Z jack.oquin $~%~%# enumerated behavior values~%int16 Abort       = 0~%int16 Quit        = 1~%int16 Pause       = 2~%int16 Run         = 3~%int16 Suspend     = 4~%int16 Initialize  = 5~%int16 Go          = 6~%int16 NONE        = 7~%int16 N_behaviors = 8~%~%int16 value~%~%================================================================================~%MSG: art_msgs/WayPoint~%# Way-point attributes~%# $Id: WayPoint.msg 614 2010-09-24 15:08:46Z jack.oquin $~%~%float64 latitude			# latitude in degrees~%float64 longitude			# longitude in degrees~%geometry_msgs/Point32 mapxy		# MapXY position~%MapID id				# way-point ID~%uint16 index    			# parser index of waypoint~%~%# way-point flags~%bool is_entry                           # lane or zone exit point~%bool is_exit				# lane or zone entry point~%bool is_goal				# this is a goal checkpoint~%bool is_lane_change			# change lanes after here~%bool is_spot				# parking spot~%bool is_stop				# stop line here~%bool is_perimeter			# zone perimeter point~%int32 checkpoint_id			# checkpoint ID or zero~%float32 lane_width~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: art_msgs/MapID~%# Road map identifier for segments, lanes and way-points.~%# $Id: MapID.msg 614 2010-09-24 15:08:46Z jack.oquin $~%~%uint16 NULL_ID = 65535~%~%uint16 seg      # segment ID~%uint16 lane     # lane ID~%uint16 pt       # way-point ID~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NavigatorCommand)))
  "Returns full string definition for message of type 'NavigatorCommand"
  (cl:format cl:nil "# navigator command message~%# $Id: NavigatorCommand.msg 615 2010-09-24 16:07:50Z jack.oquin $~%~%Header header~%Order  order~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: art_msgs/Order~%# commander order for the navigator~%# $Id: Order.msg 615 2010-09-24 16:07:50Z jack.oquin $~%~%uint32 N_WAYPTS = 5     		# number of way-points in order~%uint32 N_CHKPTS = 2             	# number of checkpoints in order~%~%Behavior behavior			# requested behavior~%art_msgs/WayPoint[5] waypt       	# way-point array~%art_msgs/WayPoint[2] chkpt       	# next two goal checkpoints~%float32 min_speed			# in meters/sec~%float32 max_speed~%int32 replan_num~%int32 next_uturn         		# Uturn between [1] and [2]~%~%================================================================================~%MSG: art_msgs/Behavior~%# ART Navigator behaviors (lower numbers have higher priority)~%# $Id: Behavior.msg 996 2011-02-27 16:07:34Z jack.oquin $~%~%# enumerated behavior values~%int16 Abort       = 0~%int16 Quit        = 1~%int16 Pause       = 2~%int16 Run         = 3~%int16 Suspend     = 4~%int16 Initialize  = 5~%int16 Go          = 6~%int16 NONE        = 7~%int16 N_behaviors = 8~%~%int16 value~%~%================================================================================~%MSG: art_msgs/WayPoint~%# Way-point attributes~%# $Id: WayPoint.msg 614 2010-09-24 15:08:46Z jack.oquin $~%~%float64 latitude			# latitude in degrees~%float64 longitude			# longitude in degrees~%geometry_msgs/Point32 mapxy		# MapXY position~%MapID id				# way-point ID~%uint16 index    			# parser index of waypoint~%~%# way-point flags~%bool is_entry                           # lane or zone exit point~%bool is_exit				# lane or zone entry point~%bool is_goal				# this is a goal checkpoint~%bool is_lane_change			# change lanes after here~%bool is_spot				# parking spot~%bool is_stop				# stop line here~%bool is_perimeter			# zone perimeter point~%int32 checkpoint_id			# checkpoint ID or zero~%float32 lane_width~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: art_msgs/MapID~%# Road map identifier for segments, lanes and way-points.~%# $Id: MapID.msg 614 2010-09-24 15:08:46Z jack.oquin $~%~%uint16 NULL_ID = 65535~%~%uint16 seg      # segment ID~%uint16 lane     # lane ID~%uint16 pt       # way-point ID~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NavigatorCommand>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'order))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NavigatorCommand>))
  "Converts a ROS message object to a list"
  (cl:list 'NavigatorCommand
    (cl:cons ':header (header msg))
    (cl:cons ':order (order msg))
))
