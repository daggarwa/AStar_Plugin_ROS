; Auto-generated. Do not edit!


(cl:in-package test_rosbag-msg)


;//! \htmlinclude SimpleMigrated.msg.html

(cl:defclass <SimpleMigrated> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type cl:integer
    :initform 0))
)

(cl:defclass SimpleMigrated (<SimpleMigrated>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SimpleMigrated>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SimpleMigrated)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name test_rosbag-msg:<SimpleMigrated> is deprecated: use test_rosbag-msg:SimpleMigrated instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <SimpleMigrated>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_rosbag-msg:data-val is deprecated.  Use test_rosbag-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SimpleMigrated>) ostream)
  "Serializes a message object of type '<SimpleMigrated>"
  (cl:let* ((signed (cl:slot-value msg 'data)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SimpleMigrated>) istream)
  "Deserializes a message object of type '<SimpleMigrated>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'data) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SimpleMigrated>)))
  "Returns string type for a message object of type '<SimpleMigrated>"
  "test_rosbag/SimpleMigrated")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SimpleMigrated)))
  "Returns string type for a message object of type 'SimpleMigrated"
  "test_rosbag/SimpleMigrated")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SimpleMigrated>)))
  "Returns md5sum for a message object of type '<SimpleMigrated>"
  "da5909fbe378aeaf85e547e830cc1bb7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SimpleMigrated)))
  "Returns md5sum for a message object of type 'SimpleMigrated"
  "da5909fbe378aeaf85e547e830cc1bb7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SimpleMigrated>)))
  "Returns full string definition for message of type '<SimpleMigrated>"
  (cl:format cl:nil "int32 data # 42~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SimpleMigrated)))
  "Returns full string definition for message of type 'SimpleMigrated"
  (cl:format cl:nil "int32 data # 42~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SimpleMigrated>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SimpleMigrated>))
  "Converts a ROS message object to a list"
  (cl:list 'SimpleMigrated
    (cl:cons ':data (data msg))
))
