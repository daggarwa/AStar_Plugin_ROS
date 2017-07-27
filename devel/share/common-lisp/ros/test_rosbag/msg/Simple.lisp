; Auto-generated. Do not edit!


(cl:in-package test_rosbag-msg)


;//! \htmlinclude Simple.msg.html

(cl:defclass <Simple> (roslisp-msg-protocol:ros-message)
  ((field1
    :reader field1
    :initarg :field1
    :type cl:integer
    :initform 0))
)

(cl:defclass Simple (<Simple>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Simple>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Simple)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name test_rosbag-msg:<Simple> is deprecated: use test_rosbag-msg:Simple instead.")))

(cl:ensure-generic-function 'field1-val :lambda-list '(m))
(cl:defmethod field1-val ((m <Simple>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_rosbag-msg:field1-val is deprecated.  Use test_rosbag-msg:field1 instead.")
  (field1 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Simple>) ostream)
  "Serializes a message object of type '<Simple>"
  (cl:let* ((signed (cl:slot-value msg 'field1)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Simple>) istream)
  "Deserializes a message object of type '<Simple>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'field1) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Simple>)))
  "Returns string type for a message object of type '<Simple>"
  "test_rosbag/Simple")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Simple)))
  "Returns string type for a message object of type 'Simple"
  "test_rosbag/Simple")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Simple>)))
  "Returns md5sum for a message object of type '<Simple>"
  "d13c87301de1ed73a1dd65764ac6019b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Simple)))
  "Returns md5sum for a message object of type 'Simple"
  "d13c87301de1ed73a1dd65764ac6019b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Simple>)))
  "Returns full string definition for message of type '<Simple>"
  (cl:format cl:nil "int32 field1 #42~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Simple)))
  "Returns full string definition for message of type 'Simple"
  (cl:format cl:nil "int32 field1 #42~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Simple>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Simple>))
  "Converts a ROS message object to a list"
  (cl:list 'Simple
    (cl:cons ':field1 (field1 msg))
))
