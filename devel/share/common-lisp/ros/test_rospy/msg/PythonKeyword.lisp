; Auto-generated. Do not edit!


(cl:in-package test_rospy-msg)


;//! \htmlinclude PythonKeyword.msg.html

(cl:defclass <PythonKeyword> (roslisp-msg-protocol:ros-message)
  ((yield
    :reader yield
    :initarg :yield
    :type cl:integer
    :initform 0))
)

(cl:defclass PythonKeyword (<PythonKeyword>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PythonKeyword>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PythonKeyword)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name test_rospy-msg:<PythonKeyword> is deprecated: use test_rospy-msg:PythonKeyword instead.")))

(cl:ensure-generic-function 'yield-val :lambda-list '(m))
(cl:defmethod yield-val ((m <PythonKeyword>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_rospy-msg:yield-val is deprecated.  Use test_rospy-msg:yield instead.")
  (yield m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PythonKeyword>) ostream)
  "Serializes a message object of type '<PythonKeyword>"
  (cl:let* ((signed (cl:slot-value msg 'yield)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PythonKeyword>) istream)
  "Deserializes a message object of type '<PythonKeyword>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'yield) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PythonKeyword>)))
  "Returns string type for a message object of type '<PythonKeyword>"
  "test_rospy/PythonKeyword")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PythonKeyword)))
  "Returns string type for a message object of type 'PythonKeyword"
  "test_rospy/PythonKeyword")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PythonKeyword>)))
  "Returns md5sum for a message object of type '<PythonKeyword>"
  "1330d6bbfad8e75334346fec949d5133")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PythonKeyword)))
  "Returns md5sum for a message object of type 'PythonKeyword"
  "1330d6bbfad8e75334346fec949d5133")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PythonKeyword>)))
  "Returns full string definition for message of type '<PythonKeyword>"
  (cl:format cl:nil "int32 yield~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PythonKeyword)))
  "Returns full string definition for message of type 'PythonKeyword"
  (cl:format cl:nil "int32 yield~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PythonKeyword>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PythonKeyword>))
  "Converts a ROS message object to a list"
  (cl:list 'PythonKeyword
    (cl:cons ':yield (yield msg))
))
