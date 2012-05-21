; Auto-generated. Do not edit!


(cl:in-package art_msgs-msg)


;//! \htmlinclude Observation.msg.html

(cl:defclass <Observation> (roslisp-msg-protocol:ros-message)
  ((oid
    :reader oid
    :initarg :oid
    :type cl:integer
    :initform 0)
   (name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (applicable
    :reader applicable
    :initarg :applicable
    :type cl:boolean
    :initform cl:nil)
   (clear
    :reader clear
    :initarg :clear
    :type cl:boolean
    :initform cl:nil)
   (time
    :reader time
    :initarg :time
    :type cl:float
    :initform 0.0)
   (distance
    :reader distance
    :initarg :distance
    :type cl:float
    :initform 0.0)
   (velocity
    :reader velocity
    :initarg :velocity
    :type cl:float
    :initform 0.0)
   (nobjects
    :reader nobjects
    :initarg :nobjects
    :type cl:integer
    :initform 0))
)

(cl:defclass Observation (<Observation>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Observation>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Observation)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name art_msgs-msg:<Observation> is deprecated: use art_msgs-msg:Observation instead.")))

(cl:ensure-generic-function 'oid-val :lambda-list '(m))
(cl:defmethod oid-val ((m <Observation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader art_msgs-msg:oid-val is deprecated.  Use art_msgs-msg:oid instead.")
  (oid m))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <Observation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader art_msgs-msg:name-val is deprecated.  Use art_msgs-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'applicable-val :lambda-list '(m))
(cl:defmethod applicable-val ((m <Observation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader art_msgs-msg:applicable-val is deprecated.  Use art_msgs-msg:applicable instead.")
  (applicable m))

(cl:ensure-generic-function 'clear-val :lambda-list '(m))
(cl:defmethod clear-val ((m <Observation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader art_msgs-msg:clear-val is deprecated.  Use art_msgs-msg:clear instead.")
  (clear m))

(cl:ensure-generic-function 'time-val :lambda-list '(m))
(cl:defmethod time-val ((m <Observation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader art_msgs-msg:time-val is deprecated.  Use art_msgs-msg:time instead.")
  (time m))

(cl:ensure-generic-function 'distance-val :lambda-list '(m))
(cl:defmethod distance-val ((m <Observation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader art_msgs-msg:distance-val is deprecated.  Use art_msgs-msg:distance instead.")
  (distance m))

(cl:ensure-generic-function 'velocity-val :lambda-list '(m))
(cl:defmethod velocity-val ((m <Observation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader art_msgs-msg:velocity-val is deprecated.  Use art_msgs-msg:velocity instead.")
  (velocity m))

(cl:ensure-generic-function 'nobjects-val :lambda-list '(m))
(cl:defmethod nobjects-val ((m <Observation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader art_msgs-msg:nobjects-val is deprecated.  Use art_msgs-msg:nobjects instead.")
  (nobjects m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Observation>)))
    "Constants for message type '<Observation>"
  '((:NEAREST_FORWARD . 0)
    (:NEAREST_BACKWARD . 1)
    (:ADJACENT_LEFT . 2)
    (:ADJACENT_RIGHT . 3)
    (:ALL_LEFT . 4)
    (:ALL_RIGHT . 5)
    (:MERGE_INTO_NEAREST . 6)
    (:MERGE_ACROSS_ALL . 7)
    (:INTERSECTION . 8)
    (:N_OBSERVERS . 9))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Observation)))
    "Constants for message type 'Observation"
  '((:NEAREST_FORWARD . 0)
    (:NEAREST_BACKWARD . 1)
    (:ADJACENT_LEFT . 2)
    (:ADJACENT_RIGHT . 3)
    (:ALL_LEFT . 4)
    (:ALL_RIGHT . 5)
    (:MERGE_INTO_NEAREST . 6)
    (:MERGE_ACROSS_ALL . 7)
    (:INTERSECTION . 8)
    (:N_OBSERVERS . 9))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Observation>) ostream)
  "Serializes a message object of type '<Observation>"
  (cl:let* ((signed (cl:slot-value msg 'oid)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'applicable) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'clear) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'velocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'nobjects)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Observation>) istream)
  "Deserializes a message object of type '<Observation>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'oid) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'applicable) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'clear) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'time) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'velocity) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'nobjects) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Observation>)))
  "Returns string type for a message object of type '<Observation>"
  "art_msgs/Observation")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Observation)))
  "Returns string type for a message object of type 'Observation"
  "art_msgs/Observation")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Observation>)))
  "Returns md5sum for a message object of type '<Observation>"
  "6c2160774352970d1e5208366926f25e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Observation)))
  "Returns md5sum for a message object of type 'Observation"
  "6c2160774352970d1e5208366926f25e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Observation>)))
  "Returns full string definition for message of type '<Observation>"
  (cl:format cl:nil "# result returned from a single observer~%# $Id: Observation.msg 1614 2011-08-06 21:02:59Z jack.oquin $~%~%# possible observer ID values~%int32 Nearest_forward    = 0		# current or closest lane~%int32 Nearest_backward   = 1                  ~%int32 Adjacent_left	 = 2		# adjacent left or right lane~%int32 Adjacent_right	 = 3~%int32 All_left		 = 4		# all left or right lanes~%int32 All_right 	 = 5~%int32 Merge_into_nearest = 6            # merge into nearest lane on diff seg~%int32 Merge_across_all   = 7            # merge across all lanes on diff seg~%int32 Intersection	 = 8		# stop sign intersection precedence~%int32 N_Observers        = 9~%~%int32  oid                      # observer ID~%string name                     # observer name~%~%bool applicable                 # true if obseravation is applicable~%bool clear                      # true if clear to go~%~%# optional time and distance to nearest obstacle~%# (only reported by some observers)~%float32 time~%float32 distance~%float32 velocity~%int32 nobjects  		# number of objects~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Observation)))
  "Returns full string definition for message of type 'Observation"
  (cl:format cl:nil "# result returned from a single observer~%# $Id: Observation.msg 1614 2011-08-06 21:02:59Z jack.oquin $~%~%# possible observer ID values~%int32 Nearest_forward    = 0		# current or closest lane~%int32 Nearest_backward   = 1                  ~%int32 Adjacent_left	 = 2		# adjacent left or right lane~%int32 Adjacent_right	 = 3~%int32 All_left		 = 4		# all left or right lanes~%int32 All_right 	 = 5~%int32 Merge_into_nearest = 6            # merge into nearest lane on diff seg~%int32 Merge_across_all   = 7            # merge across all lanes on diff seg~%int32 Intersection	 = 8		# stop sign intersection precedence~%int32 N_Observers        = 9~%~%int32  oid                      # observer ID~%string name                     # observer name~%~%bool applicable                 # true if obseravation is applicable~%bool clear                      # true if clear to go~%~%# optional time and distance to nearest obstacle~%# (only reported by some observers)~%float32 time~%float32 distance~%float32 velocity~%int32 nobjects  		# number of objects~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Observation>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'name))
     1
     1
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Observation>))
  "Converts a ROS message object to a list"
  (cl:list 'Observation
    (cl:cons ':oid (oid msg))
    (cl:cons ':name (name msg))
    (cl:cons ':applicable (applicable msg))
    (cl:cons ':clear (clear msg))
    (cl:cons ':time (time msg))
    (cl:cons ':distance (distance msg))
    (cl:cons ':velocity (velocity msg))
    (cl:cons ':nobjects (nobjects msg))
))
