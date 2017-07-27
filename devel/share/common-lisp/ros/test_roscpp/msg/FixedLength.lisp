; Auto-generated. Do not edit!


(cl:in-package test_roscpp-msg)


;//! \htmlinclude FixedLength.msg.html

(cl:defclass <FixedLength> (roslisp-msg-protocol:ros-message)
  ((a
    :reader a
    :initarg :a
    :type cl:integer
    :initform 0)
   (b
    :reader b
    :initarg :b
    :type cl:float
    :initform 0.0))
)

(cl:defclass FixedLength (<FixedLength>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FixedLength>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FixedLength)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name test_roscpp-msg:<FixedLength> is deprecated: use test_roscpp-msg:FixedLength instead.")))

(cl:ensure-generic-function 'a-val :lambda-list '(m))
(cl:defmethod a-val ((m <FixedLength>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_roscpp-msg:a-val is deprecated.  Use test_roscpp-msg:a instead.")
  (a m))

(cl:ensure-generic-function 'b-val :lambda-list '(m))
(cl:defmethod b-val ((m <FixedLength>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_roscpp-msg:b-val is deprecated.  Use test_roscpp-msg:b instead.")
  (b m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FixedLength>) ostream)
  "Serializes a message object of type '<FixedLength>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'a)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'a)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'a)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'a)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'b))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FixedLength>) istream)
  "Deserializes a message object of type '<FixedLength>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'a)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'a)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'a)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'a)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'b) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FixedLength>)))
  "Returns string type for a message object of type '<FixedLength>"
  "test_roscpp/FixedLength")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FixedLength)))
  "Returns string type for a message object of type 'FixedLength"
  "test_roscpp/FixedLength")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FixedLength>)))
  "Returns md5sum for a message object of type '<FixedLength>"
  "74143e1090cf694294f589605908b555")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FixedLength)))
  "Returns md5sum for a message object of type 'FixedLength"
  "74143e1090cf694294f589605908b555")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FixedLength>)))
  "Returns full string definition for message of type '<FixedLength>"
  (cl:format cl:nil "uint32 a~%float32 b~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FixedLength)))
  "Returns full string definition for message of type 'FixedLength"
  (cl:format cl:nil "uint32 a~%float32 b~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FixedLength>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FixedLength>))
  "Converts a ROS message object to a list"
  (cl:list 'FixedLength
    (cl:cons ':a (a msg))
    (cl:cons ':b (b msg))
))
