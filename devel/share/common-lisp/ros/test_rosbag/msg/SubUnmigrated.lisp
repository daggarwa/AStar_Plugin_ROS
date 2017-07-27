; Auto-generated. Do not edit!


(cl:in-package test_rosbag-msg)


;//! \htmlinclude SubUnmigrated.msg.html

(cl:defclass <SubUnmigrated> (roslisp-msg-protocol:ros-message)
  ((field1
    :reader field1
    :initarg :field1
    :type cl:integer
    :initform 0)
   (field2
    :reader field2
    :initarg :field2
    :type test_rosbag-msg:Unmigrated
    :initform (cl:make-instance 'test_rosbag-msg:Unmigrated)))
)

(cl:defclass SubUnmigrated (<SubUnmigrated>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SubUnmigrated>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SubUnmigrated)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name test_rosbag-msg:<SubUnmigrated> is deprecated: use test_rosbag-msg:SubUnmigrated instead.")))

(cl:ensure-generic-function 'field1-val :lambda-list '(m))
(cl:defmethod field1-val ((m <SubUnmigrated>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_rosbag-msg:field1-val is deprecated.  Use test_rosbag-msg:field1 instead.")
  (field1 m))

(cl:ensure-generic-function 'field2-val :lambda-list '(m))
(cl:defmethod field2-val ((m <SubUnmigrated>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_rosbag-msg:field2-val is deprecated.  Use test_rosbag-msg:field2 instead.")
  (field2 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SubUnmigrated>) ostream)
  "Serializes a message object of type '<SubUnmigrated>"
  (cl:let* ((signed (cl:slot-value msg 'field1)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'field2) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SubUnmigrated>) istream)
  "Deserializes a message object of type '<SubUnmigrated>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'field1) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'field2) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SubUnmigrated>)))
  "Returns string type for a message object of type '<SubUnmigrated>"
  "test_rosbag/SubUnmigrated")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SubUnmigrated)))
  "Returns string type for a message object of type 'SubUnmigrated"
  "test_rosbag/SubUnmigrated")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SubUnmigrated>)))
  "Returns md5sum for a message object of type '<SubUnmigrated>"
  "f5b2916c606d6720ed1e99762dae845f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SubUnmigrated)))
  "Returns md5sum for a message object of type 'SubUnmigrated"
  "f5b2916c606d6720ed1e99762dae845f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SubUnmigrated>)))
  "Returns full string definition for message of type '<SubUnmigrated>"
  (cl:format cl:nil "int32      field1 # 92~%Unmigrated field2 # (12, \"uuiasjs\", 61.7)~%~%================================================================================~%MSG: test_rosbag/Unmigrated~%int32   field1 #12~%string  field2 #\"uuiasjs\"~%float32 field3 #61.7~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SubUnmigrated)))
  "Returns full string definition for message of type 'SubUnmigrated"
  (cl:format cl:nil "int32      field1 # 92~%Unmigrated field2 # (12, \"uuiasjs\", 61.7)~%~%================================================================================~%MSG: test_rosbag/Unmigrated~%int32   field1 #12~%string  field2 #\"uuiasjs\"~%float32 field3 #61.7~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SubUnmigrated>))
  (cl:+ 0
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'field2))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SubUnmigrated>))
  "Converts a ROS message object to a list"
  (cl:list 'SubUnmigrated
    (cl:cons ':field1 (field1 msg))
    (cl:cons ':field2 (field2 msg))
))
