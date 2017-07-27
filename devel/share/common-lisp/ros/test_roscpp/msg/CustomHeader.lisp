; Auto-generated. Do not edit!


(cl:in-package test_roscpp-msg)


;//! \htmlinclude CustomHeader.msg.html

(cl:defclass <CustomHeader> (roslisp-msg-protocol:ros-message)
  ((a
    :reader a
    :initarg :a
    :type cl:integer
    :initform 0))
)

(cl:defclass CustomHeader (<CustomHeader>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CustomHeader>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CustomHeader)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name test_roscpp-msg:<CustomHeader> is deprecated: use test_roscpp-msg:CustomHeader instead.")))

(cl:ensure-generic-function 'a-val :lambda-list '(m))
(cl:defmethod a-val ((m <CustomHeader>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_roscpp-msg:a-val is deprecated.  Use test_roscpp-msg:a instead.")
  (a m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CustomHeader>) ostream)
  "Serializes a message object of type '<CustomHeader>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'a)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'a)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'a)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'a)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CustomHeader>) istream)
  "Deserializes a message object of type '<CustomHeader>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'a)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'a)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'a)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'a)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CustomHeader>)))
  "Returns string type for a message object of type '<CustomHeader>"
  "test_roscpp/CustomHeader")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CustomHeader)))
  "Returns string type for a message object of type 'CustomHeader"
  "test_roscpp/CustomHeader")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CustomHeader>)))
  "Returns md5sum for a message object of type '<CustomHeader>"
  "a5233fa4f3f6e00d1d85da1779d19d1e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CustomHeader)))
  "Returns md5sum for a message object of type 'CustomHeader"
  "a5233fa4f3f6e00d1d85da1779d19d1e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CustomHeader>)))
  "Returns full string definition for message of type '<CustomHeader>"
  (cl:format cl:nil "uint32 a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CustomHeader)))
  "Returns full string definition for message of type 'CustomHeader"
  (cl:format cl:nil "uint32 a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CustomHeader>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CustomHeader>))
  "Converts a ROS message object to a list"
  (cl:list 'CustomHeader
    (cl:cons ':a (a msg))
))
