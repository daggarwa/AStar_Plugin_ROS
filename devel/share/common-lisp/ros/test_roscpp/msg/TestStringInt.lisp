; Auto-generated. Do not edit!


(cl:in-package test_roscpp-msg)


;//! \htmlinclude TestStringInt.msg.html

(cl:defclass <TestStringInt> (roslisp-msg-protocol:ros-message)
  ((str
    :reader str
    :initarg :str
    :type cl:string
    :initform "")
   (counter
    :reader counter
    :initarg :counter
    :type cl:integer
    :initform 0))
)

(cl:defclass TestStringInt (<TestStringInt>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TestStringInt>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TestStringInt)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name test_roscpp-msg:<TestStringInt> is deprecated: use test_roscpp-msg:TestStringInt instead.")))

(cl:ensure-generic-function 'str-val :lambda-list '(m))
(cl:defmethod str-val ((m <TestStringInt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_roscpp-msg:str-val is deprecated.  Use test_roscpp-msg:str instead.")
  (str m))

(cl:ensure-generic-function 'counter-val :lambda-list '(m))
(cl:defmethod counter-val ((m <TestStringInt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_roscpp-msg:counter-val is deprecated.  Use test_roscpp-msg:counter instead.")
  (counter m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TestStringInt>) ostream)
  "Serializes a message object of type '<TestStringInt>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'str))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'str))
  (cl:let* ((signed (cl:slot-value msg 'counter)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TestStringInt>) istream)
  "Deserializes a message object of type '<TestStringInt>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'str) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'str) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'counter) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TestStringInt>)))
  "Returns string type for a message object of type '<TestStringInt>"
  "test_roscpp/TestStringInt")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TestStringInt)))
  "Returns string type for a message object of type 'TestStringInt"
  "test_roscpp/TestStringInt")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TestStringInt>)))
  "Returns md5sum for a message object of type '<TestStringInt>"
  "2f0ceb8aa4bbf4dbd240039d0bf240ca")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TestStringInt)))
  "Returns md5sum for a message object of type 'TestStringInt"
  "2f0ceb8aa4bbf4dbd240039d0bf240ca")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TestStringInt>)))
  "Returns full string definition for message of type '<TestStringInt>"
  (cl:format cl:nil "string str~%int32 counter~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TestStringInt)))
  "Returns full string definition for message of type 'TestStringInt"
  (cl:format cl:nil "string str~%int32 counter~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TestStringInt>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'str))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TestStringInt>))
  "Converts a ROS message object to a list"
  (cl:list 'TestStringInt
    (cl:cons ':str (str msg))
    (cl:cons ':counter (counter msg))
))
