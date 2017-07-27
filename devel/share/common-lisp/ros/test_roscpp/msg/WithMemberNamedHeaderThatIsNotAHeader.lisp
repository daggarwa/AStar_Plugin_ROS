; Auto-generated. Do not edit!


(cl:in-package test_roscpp-msg)


;//! \htmlinclude WithMemberNamedHeaderThatIsNotAHeader.msg.html

(cl:defclass <WithMemberNamedHeaderThatIsNotAHeader> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type test_roscpp-msg:CustomHeader
    :initform (cl:make-instance 'test_roscpp-msg:CustomHeader))
   (a
    :reader a
    :initarg :a
    :type cl:integer
    :initform 0))
)

(cl:defclass WithMemberNamedHeaderThatIsNotAHeader (<WithMemberNamedHeaderThatIsNotAHeader>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WithMemberNamedHeaderThatIsNotAHeader>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WithMemberNamedHeaderThatIsNotAHeader)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name test_roscpp-msg:<WithMemberNamedHeaderThatIsNotAHeader> is deprecated: use test_roscpp-msg:WithMemberNamedHeaderThatIsNotAHeader instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <WithMemberNamedHeaderThatIsNotAHeader>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_roscpp-msg:header-val is deprecated.  Use test_roscpp-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'a-val :lambda-list '(m))
(cl:defmethod a-val ((m <WithMemberNamedHeaderThatIsNotAHeader>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_roscpp-msg:a-val is deprecated.  Use test_roscpp-msg:a instead.")
  (a m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WithMemberNamedHeaderThatIsNotAHeader>) ostream)
  "Serializes a message object of type '<WithMemberNamedHeaderThatIsNotAHeader>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'a)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'a)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'a)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'a)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WithMemberNamedHeaderThatIsNotAHeader>) istream)
  "Deserializes a message object of type '<WithMemberNamedHeaderThatIsNotAHeader>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'a)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'a)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'a)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'a)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WithMemberNamedHeaderThatIsNotAHeader>)))
  "Returns string type for a message object of type '<WithMemberNamedHeaderThatIsNotAHeader>"
  "test_roscpp/WithMemberNamedHeaderThatIsNotAHeader")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WithMemberNamedHeaderThatIsNotAHeader)))
  "Returns string type for a message object of type 'WithMemberNamedHeaderThatIsNotAHeader"
  "test_roscpp/WithMemberNamedHeaderThatIsNotAHeader")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WithMemberNamedHeaderThatIsNotAHeader>)))
  "Returns md5sum for a message object of type '<WithMemberNamedHeaderThatIsNotAHeader>"
  "59a71bc6c7b0e5643fa9d213cdf4c63c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WithMemberNamedHeaderThatIsNotAHeader)))
  "Returns md5sum for a message object of type 'WithMemberNamedHeaderThatIsNotAHeader"
  "59a71bc6c7b0e5643fa9d213cdf4c63c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WithMemberNamedHeaderThatIsNotAHeader>)))
  "Returns full string definition for message of type '<WithMemberNamedHeaderThatIsNotAHeader>"
  (cl:format cl:nil "CustomHeader header~%uint32 a~%================================================================================~%MSG: test_roscpp/CustomHeader~%uint32 a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WithMemberNamedHeaderThatIsNotAHeader)))
  "Returns full string definition for message of type 'WithMemberNamedHeaderThatIsNotAHeader"
  (cl:format cl:nil "CustomHeader header~%uint32 a~%================================================================================~%MSG: test_roscpp/CustomHeader~%uint32 a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WithMemberNamedHeaderThatIsNotAHeader>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WithMemberNamedHeaderThatIsNotAHeader>))
  "Converts a ROS message object to a list"
  (cl:list 'WithMemberNamedHeaderThatIsNotAHeader
    (cl:cons ':header (header msg))
    (cl:cons ':a (a msg))
))
