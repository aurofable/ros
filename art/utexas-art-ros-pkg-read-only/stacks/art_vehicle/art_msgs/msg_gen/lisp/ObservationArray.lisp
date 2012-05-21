; Auto-generated. Do not edit!


(cl:in-package art_msgs-msg)


;//! \htmlinclude ObservationArray.msg.html

(cl:defclass <ObservationArray> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (obs
    :reader obs
    :initarg :obs
    :type (cl:vector art_msgs-msg:Observation)
   :initform (cl:make-array 0 :element-type 'art_msgs-msg:Observation :initial-element (cl:make-instance 'art_msgs-msg:Observation))))
)

(cl:defclass ObservationArray (<ObservationArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ObservationArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ObservationArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name art_msgs-msg:<ObservationArray> is deprecated: use art_msgs-msg:ObservationArray instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ObservationArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader art_msgs-msg:header-val is deprecated.  Use art_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'obs-val :lambda-list '(m))
(cl:defmethod obs-val ((m <ObservationArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader art_msgs-msg:obs-val is deprecated.  Use art_msgs-msg:obs instead.")
  (obs m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ObservationArray>) ostream)
  "Serializes a message object of type '<ObservationArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'obs))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'obs))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ObservationArray>) istream)
  "Deserializes a message object of type '<ObservationArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'obs) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'obs)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'art_msgs-msg:Observation))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ObservationArray>)))
  "Returns string type for a message object of type '<ObservationArray>"
  "art_msgs/ObservationArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ObservationArray)))
  "Returns string type for a message object of type 'ObservationArray"
  "art_msgs/ObservationArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ObservationArray>)))
  "Returns md5sum for a message object of type '<ObservationArray>"
  "b5eeab09687abc64c329078cb1e9065a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ObservationArray)))
  "Returns md5sum for a message object of type 'ObservationArray"
  "b5eeab09687abc64c329078cb1e9065a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ObservationArray>)))
  "Returns full string definition for message of type '<ObservationArray>"
  (cl:format cl:nil "# Observations from a set of observers~%# $Id: ObservationArray.msg 1628 2011-08-09 21:51:35Z jack.oquin $~%~%Header header~%Observation[] obs                       # vector of observations~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: art_msgs/Observation~%# result returned from a single observer~%# $Id: Observation.msg 1614 2011-08-06 21:02:59Z jack.oquin $~%~%# possible observer ID values~%int32 Nearest_forward    = 0		# current or closest lane~%int32 Nearest_backward   = 1                  ~%int32 Adjacent_left	 = 2		# adjacent left or right lane~%int32 Adjacent_right	 = 3~%int32 All_left		 = 4		# all left or right lanes~%int32 All_right 	 = 5~%int32 Merge_into_nearest = 6            # merge into nearest lane on diff seg~%int32 Merge_across_all   = 7            # merge across all lanes on diff seg~%int32 Intersection	 = 8		# stop sign intersection precedence~%int32 N_Observers        = 9~%~%int32  oid                      # observer ID~%string name                     # observer name~%~%bool applicable                 # true if obseravation is applicable~%bool clear                      # true if clear to go~%~%# optional time and distance to nearest obstacle~%# (only reported by some observers)~%float32 time~%float32 distance~%float32 velocity~%int32 nobjects  		# number of objects~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ObservationArray)))
  "Returns full string definition for message of type 'ObservationArray"
  (cl:format cl:nil "# Observations from a set of observers~%# $Id: ObservationArray.msg 1628 2011-08-09 21:51:35Z jack.oquin $~%~%Header header~%Observation[] obs                       # vector of observations~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: art_msgs/Observation~%# result returned from a single observer~%# $Id: Observation.msg 1614 2011-08-06 21:02:59Z jack.oquin $~%~%# possible observer ID values~%int32 Nearest_forward    = 0		# current or closest lane~%int32 Nearest_backward   = 1                  ~%int32 Adjacent_left	 = 2		# adjacent left or right lane~%int32 Adjacent_right	 = 3~%int32 All_left		 = 4		# all left or right lanes~%int32 All_right 	 = 5~%int32 Merge_into_nearest = 6            # merge into nearest lane on diff seg~%int32 Merge_across_all   = 7            # merge across all lanes on diff seg~%int32 Intersection	 = 8		# stop sign intersection precedence~%int32 N_Observers        = 9~%~%int32  oid                      # observer ID~%string name                     # observer name~%~%bool applicable                 # true if obseravation is applicable~%bool clear                      # true if clear to go~%~%# optional time and distance to nearest obstacle~%# (only reported by some observers)~%float32 time~%float32 distance~%float32 velocity~%int32 nobjects  		# number of objects~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ObservationArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'obs) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ObservationArray>))
  "Converts a ROS message object to a list"
  (cl:list 'ObservationArray
    (cl:cons ':header (header msg))
    (cl:cons ':obs (obs msg))
))
