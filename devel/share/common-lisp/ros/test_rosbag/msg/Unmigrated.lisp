; Auto-generated. Do not edit!


(cl:in-package test_rosbag-msg)


;//! \htmlinclude Unmigrated.msg.html

(cl:defclass <Unmigrated> (roslisp-msg-protocol:ros-message)
  ((field1
    :reader field1
    :initarg :field1
    :type cl:integer
    :initform 0)
   (field2
    :reader field2
    :initarg :field2
    :type cl:string
    :initform "")
   (field3
    :reader field3
    :initarg :field3
    :type cl:float
    :initform 0.0))
)

(cl:defclass Unmigrated (<Unmigrated>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Unmigrated>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Unmigrated)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name test_rosbag-msg:<Unmigrated> is deprecated: use test_rosbag-msg:Unmigrated instead.")))

(cl:ensure-generic-function 'field1-val :lambda-list '(m))
(cl:defmethod field1-val ((m <Unmigrated>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_rosbag-msg:field1-val is deprecated.  Use test_rosbag-msg:field1 instead.")
  (field1 m))

(cl:ensure-generic-function 'field2-val :lambda-list '(m))
(cl:defmethod field2-val ((m <Unmigrated>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_rosbag-msg:field2-val is deprecated.  Use test_rosbag-msg:field2 instead.")
  (field2 m))

(cl:ensure-generic-function 'field3-val :lambda-list '(m))
(cl:defmethod field3-val ((m <Unmigrated>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_rosbag-msg:field3-val is deprecated.  Use test_rosbag-msg:field3 instead.")
  (field3 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Unmigrated>) ostream)
  "Serializes a message object of type '<Unmigrated>"
  (cl:let* ((signed (cl:slot-value msg 'field1)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'field2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'field2))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'field3))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Unmigrated>) istream)
  "Deserializes a message object of type '<Unmigrated>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'field1) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'field2) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'field2) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'field3) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Unmigrated>)))
  "Returns string type for a message object of type '<Unmigrated>"
  "test_rosbag/Unmigrated")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Unmigrated)))
  "Returns string type for a message object of type 'Unmigrated"
  "test_rosbag/Unmigrated")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Unmigrated>)))
  "Returns md5sum for a message object of type '<Unmigrated>"
  "b5d640967dccef2a24697ec4b8a571ec")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Unmigrated)))
  "Returns md5sum for a message object of type 'Unmigrated"
  "b5d640967dccef2a24697ec4b8a571ec")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Unmigrated>)))
  "Returns full string definition for message of type '<Unmigrated>"
  (cl:format cl:nil "int32   field1 #12~%string  field2 #\"uuiasjs\"~%float32 field3 #61.7~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Unmigrated)))
  "Returns full string definition for message of type 'Unmigrated"
  (cl:format cl:nil "int32   field1 #12~%string  field2 #\"uuiasjs\"~%float32 field3 #61.7~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Unmigrated>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'field2))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Unmigrated>))
  "Converts a ROS message object to a list"
  (cl:list 'Unmigrated
    (cl:cons ':field1 (field1 msg))
    (cl:cons ':field2 (field2 msg))
    (cl:cons ':field3 (field3 msg))
))
