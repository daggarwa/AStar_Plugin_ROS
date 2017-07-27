; Auto-generated. Do not edit!


(cl:in-package test_rosmaster-msg)


;//! \htmlinclude Simple.msg.html

(cl:defclass <Simple> (roslisp-msg-protocol:ros-message)
  ((b
    :reader b
    :initarg :b
    :type cl:integer
    :initform 0)
   (int16
    :reader int16
    :initarg :int16
    :type cl:fixnum
    :initform 0)
   (int32
    :reader int32
    :initarg :int32
    :type cl:integer
    :initform 0)
   (int64
    :reader int64
    :initarg :int64
    :type cl:integer
    :initform 0)
   (c
    :reader c
    :initarg :c
    :type cl:integer
    :initform 0)
   (uint16
    :reader uint16
    :initarg :uint16
    :type cl:fixnum
    :initform 0)
   (uint32
    :reader uint32
    :initarg :uint32
    :type cl:integer
    :initform 0)
   (uint64
    :reader uint64
    :initarg :uint64
    :type cl:integer
    :initform 0)
   (str
    :reader str
    :initarg :str
    :type cl:string
    :initform ""))
)

(cl:defclass Simple (<Simple>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Simple>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Simple)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name test_rosmaster-msg:<Simple> is deprecated: use test_rosmaster-msg:Simple instead.")))

(cl:ensure-generic-function 'b-val :lambda-list '(m))
(cl:defmethod b-val ((m <Simple>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_rosmaster-msg:b-val is deprecated.  Use test_rosmaster-msg:b instead.")
  (b m))

(cl:ensure-generic-function 'int16-val :lambda-list '(m))
(cl:defmethod int16-val ((m <Simple>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_rosmaster-msg:int16-val is deprecated.  Use test_rosmaster-msg:int16 instead.")
  (int16 m))

(cl:ensure-generic-function 'int32-val :lambda-list '(m))
(cl:defmethod int32-val ((m <Simple>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_rosmaster-msg:int32-val is deprecated.  Use test_rosmaster-msg:int32 instead.")
  (int32 m))

(cl:ensure-generic-function 'int64-val :lambda-list '(m))
(cl:defmethod int64-val ((m <Simple>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_rosmaster-msg:int64-val is deprecated.  Use test_rosmaster-msg:int64 instead.")
  (int64 m))

(cl:ensure-generic-function 'c-val :lambda-list '(m))
(cl:defmethod c-val ((m <Simple>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_rosmaster-msg:c-val is deprecated.  Use test_rosmaster-msg:c instead.")
  (c m))

(cl:ensure-generic-function 'uint16-val :lambda-list '(m))
(cl:defmethod uint16-val ((m <Simple>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_rosmaster-msg:uint16-val is deprecated.  Use test_rosmaster-msg:uint16 instead.")
  (uint16 m))

(cl:ensure-generic-function 'uint32-val :lambda-list '(m))
(cl:defmethod uint32-val ((m <Simple>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_rosmaster-msg:uint32-val is deprecated.  Use test_rosmaster-msg:uint32 instead.")
  (uint32 m))

(cl:ensure-generic-function 'uint64-val :lambda-list '(m))
(cl:defmethod uint64-val ((m <Simple>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_rosmaster-msg:uint64-val is deprecated.  Use test_rosmaster-msg:uint64 instead.")
  (uint64 m))

(cl:ensure-generic-function 'str-val :lambda-list '(m))
(cl:defmethod str-val ((m <Simple>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_rosmaster-msg:str-val is deprecated.  Use test_rosmaster-msg:str instead.")
  (str m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Simple>) ostream)
  "Serializes a message object of type '<Simple>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'b)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'int16)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'int32)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'int64)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'c)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'uint16)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'uint16)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'uint32)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'uint32)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'uint32)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'uint32)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'uint64)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'uint64)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'uint64)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'uint64)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'uint64)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'uint64)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'uint64)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'uint64)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'str))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'str))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Simple>) istream)
  "Deserializes a message object of type '<Simple>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'b)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'int16) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'int32) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'int64) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'c)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'uint16)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'uint16)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'uint32)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'uint32)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'uint32)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'uint32)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'uint64)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'uint64)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'uint64)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'uint64)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'uint64)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'uint64)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'uint64)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'uint64)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'str) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'str) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Simple>)))
  "Returns string type for a message object of type '<Simple>"
  "test_rosmaster/Simple")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Simple)))
  "Returns string type for a message object of type 'Simple"
  "test_rosmaster/Simple")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Simple>)))
  "Returns md5sum for a message object of type '<Simple>"
  "c9940b1313e61fed87cd22c50742578f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Simple)))
  "Returns md5sum for a message object of type 'Simple"
  "c9940b1313e61fed87cd22c50742578f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Simple>)))
  "Returns full string definition for message of type '<Simple>"
  (cl:format cl:nil "# for rostopic tests~%byte b~%int16 int16~%int32 int32~%int64 int64~%char c~%uint16 uint16~%uint32 uint32~%uint64 uint64~%string str~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Simple)))
  "Returns full string definition for message of type 'Simple"
  (cl:format cl:nil "# for rostopic tests~%byte b~%int16 int16~%int32 int32~%int64 int64~%char c~%uint16 uint16~%uint32 uint32~%uint64 uint64~%string str~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Simple>))
  (cl:+ 0
     1
     2
     4
     8
     1
     2
     4
     8
     4 (cl:length (cl:slot-value msg 'str))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Simple>))
  "Converts a ROS message object to a list"
  (cl:list 'Simple
    (cl:cons ':b (b msg))
    (cl:cons ':int16 (int16 msg))
    (cl:cons ':int32 (int32 msg))
    (cl:cons ':int64 (int64 msg))
    (cl:cons ':c (c msg))
    (cl:cons ':uint16 (uint16 msg))
    (cl:cons ':uint32 (uint32 msg))
    (cl:cons ':uint64 (uint64 msg))
    (cl:cons ':str (str msg))
))
