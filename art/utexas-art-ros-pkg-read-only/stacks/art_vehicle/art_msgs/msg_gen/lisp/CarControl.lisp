; Auto-generated. Do not edit!


(cl:in-package art_msgs-msg)


;//! \htmlinclude CarControl.msg.html

(cl:defclass <CarControl> (roslisp-msg-protocol:ros-message)
  ((velocity
    :reader velocity
    :initarg :velocity
    :type cl:float
    :initform 0.0)
   (angle
    :reader angle
    :initarg :angle
    :type cl:float
    :initform 0.0))
)

(cl:defclass CarControl (<CarControl>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CarControl>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CarControl)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name art_msgs-msg:<CarControl> is deprecated: use art_msgs-msg:CarControl instead.")))

(cl:ensure-generic-function 'velocity-val :lambda-list '(m))
(cl:defmethod velocity-val ((m <CarControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader art_msgs-msg:velocity-val is deprecated.  Use art_msgs-msg:velocity instead.")
  (velocity m))

(cl:ensure-generic-function 'angle-val :lambda-list '(m))
(cl:defmethod angle-val ((m <CarControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader art_msgs-msg:angle-val is deprecated.  Use art_msgs-msg:angle instead.")
  (angle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CarControl>) ostream)
  "Serializes a message object of type '<CarControl>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'velocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CarControl>) istream)
  "Deserializes a message object of type '<CarControl>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'velocity) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angle) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CarControl>)))
  "Returns string type for a message object of type '<CarControl>"
  "art_msgs/CarControl")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CarControl)))
  "Returns string type for a message object of type 'CarControl"
  "art_msgs/CarControl")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CarControl>)))
  "Returns md5sum for a message object of type '<CarControl>"
  "23ee9ebc4f65684302501539608c3833")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CarControl)))
  "Returns md5sum for a message object of type 'CarControl"
  "23ee9ebc4f65684302501539608c3833")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CarControl>)))
  "Returns full string definition for message of type '<CarControl>"
  (cl:format cl:nil "# car control command~%# $Id: CarControl.msg 1161 2011-03-26 02:10:49Z jack.oquin $~%~%float32 velocity                # forward velocity (m/s), negative is reverse~%float32 angle                   # steering angle (degrees)~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CarControl)))
  "Returns full string definition for message of type 'CarControl"
  (cl:format cl:nil "# car control command~%# $Id: CarControl.msg 1161 2011-03-26 02:10:49Z jack.oquin $~%~%float32 velocity                # forward velocity (m/s), negative is reverse~%float32 angle                   # steering angle (degrees)~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CarControl>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CarControl>))
  "Converts a ROS message object to a list"
  (cl:list 'CarControl
    (cl:cons ':velocity (velocity msg))
    (cl:cons ':angle (angle msg))
))
