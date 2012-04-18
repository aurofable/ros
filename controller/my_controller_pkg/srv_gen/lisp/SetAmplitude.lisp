; Auto-generated. Do not edit!


(cl:in-package my_controller_pkg-srv)


;//! \htmlinclude SetAmplitude-request.msg.html

(cl:defclass <SetAmplitude-request> (roslisp-msg-protocol:ros-message)
  ((amplitude
    :reader amplitude
    :initarg :amplitude
    :type cl:float
    :initform 0.0))
)

(cl:defclass SetAmplitude-request (<SetAmplitude-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetAmplitude-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetAmplitude-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name my_controller_pkg-srv:<SetAmplitude-request> is deprecated: use my_controller_pkg-srv:SetAmplitude-request instead.")))

(cl:ensure-generic-function 'amplitude-val :lambda-list '(m))
(cl:defmethod amplitude-val ((m <SetAmplitude-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_controller_pkg-srv:amplitude-val is deprecated.  Use my_controller_pkg-srv:amplitude instead.")
  (amplitude m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetAmplitude-request>) ostream)
  "Serializes a message object of type '<SetAmplitude-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'amplitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetAmplitude-request>) istream)
  "Deserializes a message object of type '<SetAmplitude-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'amplitude) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetAmplitude-request>)))
  "Returns string type for a service object of type '<SetAmplitude-request>"
  "my_controller_pkg/SetAmplitudeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetAmplitude-request)))
  "Returns string type for a service object of type 'SetAmplitude-request"
  "my_controller_pkg/SetAmplitudeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetAmplitude-request>)))
  "Returns md5sum for a message object of type '<SetAmplitude-request>"
  "e68e53e50ad5dca32bcdd4bd08619ffb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetAmplitude-request)))
  "Returns md5sum for a message object of type 'SetAmplitude-request"
  "e68e53e50ad5dca32bcdd4bd08619ffb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetAmplitude-request>)))
  "Returns full string definition for message of type '<SetAmplitude-request>"
  (cl:format cl:nil "float64 amplitude~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetAmplitude-request)))
  "Returns full string definition for message of type 'SetAmplitude-request"
  (cl:format cl:nil "float64 amplitude~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetAmplitude-request>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetAmplitude-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetAmplitude-request
    (cl:cons ':amplitude (amplitude msg))
))
;//! \htmlinclude SetAmplitude-response.msg.html

(cl:defclass <SetAmplitude-response> (roslisp-msg-protocol:ros-message)
  ((amplitude
    :reader amplitude
    :initarg :amplitude
    :type cl:float
    :initform 0.0))
)

(cl:defclass SetAmplitude-response (<SetAmplitude-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetAmplitude-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetAmplitude-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name my_controller_pkg-srv:<SetAmplitude-response> is deprecated: use my_controller_pkg-srv:SetAmplitude-response instead.")))

(cl:ensure-generic-function 'amplitude-val :lambda-list '(m))
(cl:defmethod amplitude-val ((m <SetAmplitude-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_controller_pkg-srv:amplitude-val is deprecated.  Use my_controller_pkg-srv:amplitude instead.")
  (amplitude m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetAmplitude-response>) ostream)
  "Serializes a message object of type '<SetAmplitude-response>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'amplitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetAmplitude-response>) istream)
  "Deserializes a message object of type '<SetAmplitude-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'amplitude) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetAmplitude-response>)))
  "Returns string type for a service object of type '<SetAmplitude-response>"
  "my_controller_pkg/SetAmplitudeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetAmplitude-response)))
  "Returns string type for a service object of type 'SetAmplitude-response"
  "my_controller_pkg/SetAmplitudeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetAmplitude-response>)))
  "Returns md5sum for a message object of type '<SetAmplitude-response>"
  "e68e53e50ad5dca32bcdd4bd08619ffb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetAmplitude-response)))
  "Returns md5sum for a message object of type 'SetAmplitude-response"
  "e68e53e50ad5dca32bcdd4bd08619ffb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetAmplitude-response>)))
  "Returns full string definition for message of type '<SetAmplitude-response>"
  (cl:format cl:nil "float64 amplitude~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetAmplitude-response)))
  "Returns full string definition for message of type 'SetAmplitude-response"
  (cl:format cl:nil "float64 amplitude~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetAmplitude-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetAmplitude-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetAmplitude-response
    (cl:cons ':amplitude (amplitude msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetAmplitude)))
  'SetAmplitude-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetAmplitude)))
  'SetAmplitude-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetAmplitude)))
  "Returns string type for a service object of type '<SetAmplitude>"
  "my_controller_pkg/SetAmplitude")