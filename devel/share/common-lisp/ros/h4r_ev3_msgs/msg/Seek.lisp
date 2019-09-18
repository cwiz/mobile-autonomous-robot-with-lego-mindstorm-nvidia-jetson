; Auto-generated. Do not edit!


(cl:in-package h4r_ev3_msgs-msg)


;//! \htmlinclude Seek.msg.html

(cl:defclass <Seek> (roslisp-msg-protocol:ros-message)
  ((heading
    :reader heading
    :initarg :heading
    :type cl:float
    :initform 0.0)
   (distance
    :reader distance
    :initarg :distance
    :type cl:float
    :initform 0.0))
)

(cl:defclass Seek (<Seek>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Seek>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Seek)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name h4r_ev3_msgs-msg:<Seek> is deprecated: use h4r_ev3_msgs-msg:Seek instead.")))

(cl:ensure-generic-function 'heading-val :lambda-list '(m))
(cl:defmethod heading-val ((m <Seek>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader h4r_ev3_msgs-msg:heading-val is deprecated.  Use h4r_ev3_msgs-msg:heading instead.")
  (heading m))

(cl:ensure-generic-function 'distance-val :lambda-list '(m))
(cl:defmethod distance-val ((m <Seek>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader h4r_ev3_msgs-msg:distance-val is deprecated.  Use h4r_ev3_msgs-msg:distance instead.")
  (distance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Seek>) ostream)
  "Serializes a message object of type '<Seek>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'heading))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Seek>) istream)
  "Deserializes a message object of type '<Seek>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'heading) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Seek>)))
  "Returns string type for a message object of type '<Seek>"
  "h4r_ev3_msgs/Seek")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Seek)))
  "Returns string type for a message object of type 'Seek"
  "h4r_ev3_msgs/Seek")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Seek>)))
  "Returns md5sum for a message object of type '<Seek>"
  "3897b918b84041e153db3b3eea1a1e19")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Seek)))
  "Returns md5sum for a message object of type 'Seek"
  "3897b918b84041e153db3b3eea1a1e19")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Seek>)))
  "Returns full string definition for message of type '<Seek>"
  (cl:format cl:nil "float64 heading~%float64 distance~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Seek)))
  "Returns full string definition for message of type 'Seek"
  (cl:format cl:nil "float64 heading~%float64 distance~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Seek>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Seek>))
  "Converts a ROS message object to a list"
  (cl:list 'Seek
    (cl:cons ':heading (heading msg))
    (cl:cons ':distance (distance msg))
))
