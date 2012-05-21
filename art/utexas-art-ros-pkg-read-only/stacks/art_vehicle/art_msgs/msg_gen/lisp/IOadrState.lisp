; Auto-generated. Do not edit!


(cl:in-package art_msgs-msg)


;//! \htmlinclude IOadrState.msg.html

(cl:defclass <IOadrState> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (relays
    :reader relays
    :initarg :relays
    :type cl:fixnum
    :initform 0)
   (digitalB
    :reader digitalB
    :initarg :digitalB
    :type cl:fixnum
    :initform 0)
   (voltages
    :reader voltages
    :initarg :voltages
    :type (cl:vector cl:float)
   :initform (cl:make-array 3 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass IOadrState (<IOadrState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <IOadrState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'IOadrState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name art_msgs-msg:<IOadrState> is deprecated: use art_msgs-msg:IOadrState instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <IOadrState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader art_msgs-msg:header-val is deprecated.  Use art_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'relays-val :lambda-list '(m))
(cl:defmethod relays-val ((m <IOadrState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader art_msgs-msg:relays-val is deprecated.  Use art_msgs-msg:relays instead.")
  (relays m))

(cl:ensure-generic-function 'digitalB-val :lambda-list '(m))
(cl:defmethod digitalB-val ((m <IOadrState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader art_msgs-msg:digitalB-val is deprecated.  Use art_msgs-msg:digitalB instead.")
  (digitalB m))

(cl:ensure-generic-function 'voltages-val :lambda-list '(m))
(cl:defmethod voltages-val ((m <IOadrState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader art_msgs-msg:voltages-val is deprecated.  Use art_msgs-msg:voltages instead.")
  (voltages m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<IOadrState>)))
    "Constants for message type '<IOadrState>"
  '((:ENABLED . 1)
    (:RUN . 2)
    (:FLASHER . 4)
    (:ALARM . 8)
    (:LASER_FRONT . 16)
    (:LASER_TOP . 32)
    (:TURN_LEFT . 64)
    (:TURN_RIGHT . 128)
    (:N_VOLTAGES . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'IOadrState)))
    "Constants for message type 'IOadrState"
  '((:ENABLED . 1)
    (:RUN . 2)
    (:FLASHER . 4)
    (:ALARM . 8)
    (:LASER_FRONT . 16)
    (:LASER_TOP . 32)
    (:TURN_LEFT . 64)
    (:TURN_RIGHT . 128)
    (:N_VOLTAGES . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <IOadrState>) ostream)
  "Serializes a message object of type '<IOadrState>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'relays)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'digitalB)) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'voltages))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <IOadrState>) istream)
  "Deserializes a message object of type '<IOadrState>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'relays)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'digitalB)) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'voltages) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'voltages)))
    (cl:dotimes (i 3)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<IOadrState>)))
  "Returns string type for a message object of type '<IOadrState>"
  "art_msgs/IOadrState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IOadrState)))
  "Returns string type for a message object of type 'IOadrState"
  "art_msgs/IOadrState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<IOadrState>)))
  "Returns md5sum for a message object of type '<IOadrState>"
  "990cf1675736cc78e57b4a0463dd540e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'IOadrState)))
  "Returns md5sum for a message object of type 'IOadrState"
  "990cf1675736cc78e57b4a0463dd540e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<IOadrState>)))
  "Returns full string definition for message of type '<IOadrState>"
  (cl:format cl:nil "# NCD IOADR8x controller state message for ART vehicle~%~%# $Id: IOadrState.msg 644 2010-09-28 03:19:07Z jack.oquin $~%~%Header  header~%~%# constant bit values for relays and digitalB inputs~%uint8 ENABLED      =   1~%uint8 RUN          =   2~%uint8 FLASHER      =   4~%uint8 ALARM        =   8~%uint8 LASER_FRONT  =  16~%uint8 LASER_TOP    =  32~%uint8 TURN_LEFT    =  64~%uint8 TURN_RIGHT   = 128~%~%uint8   relays                  # current relays settings~%~%uint8   digitalB                # digital input B~%~%# generally, voltages[0] is the steering position sensor~%int32 N_VOLTAGES = 3            # number of analog voltages~%float32[3] voltages             # analog voltages [A, B, C]~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'IOadrState)))
  "Returns full string definition for message of type 'IOadrState"
  (cl:format cl:nil "# NCD IOADR8x controller state message for ART vehicle~%~%# $Id: IOadrState.msg 644 2010-09-28 03:19:07Z jack.oquin $~%~%Header  header~%~%# constant bit values for relays and digitalB inputs~%uint8 ENABLED      =   1~%uint8 RUN          =   2~%uint8 FLASHER      =   4~%uint8 ALARM        =   8~%uint8 LASER_FRONT  =  16~%uint8 LASER_TOP    =  32~%uint8 TURN_LEFT    =  64~%uint8 TURN_RIGHT   = 128~%~%uint8   relays                  # current relays settings~%~%uint8   digitalB                # digital input B~%~%# generally, voltages[0] is the steering position sensor~%int32 N_VOLTAGES = 3            # number of analog voltages~%float32[3] voltages             # analog voltages [A, B, C]~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <IOadrState>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'voltages) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <IOadrState>))
  "Converts a ROS message object to a list"
  (cl:list 'IOadrState
    (cl:cons ':header (header msg))
    (cl:cons ':relays (relays msg))
    (cl:cons ':digitalB (digitalB msg))
    (cl:cons ':voltages (voltages msg))
))
