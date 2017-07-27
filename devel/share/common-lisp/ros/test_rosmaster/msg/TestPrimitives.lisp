; Auto-generated. Do not edit!


(cl:in-package test_rosmaster-msg)


;//! \htmlinclude TestPrimitives.msg.html

(cl:defclass <TestPrimitives> (roslisp-msg-protocol:ros-message)
  ((caller_id
    :reader caller_id
    :initarg :caller_id
    :type cl:string
    :initform "")
   (orig_caller_id
    :reader orig_caller_id
    :initarg :orig_caller_id
    :type cl:string
    :initform "")
   (str
    :reader str
    :initarg :str
    :type cl:string
    :initform "")
   (b
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
   (float32
    :reader float32
    :initarg :float32
    :type cl:float
    :initform 0.0)
   (float64
    :reader float64
    :initarg :float64
    :type cl:float
    :initform 0.0)
   (t
    :reader t
    :initarg :t
    :type cl:real
    :initform 0)
   (d
    :reader d
    :initarg :d
    :type cl:real
    :initform 0))
)

(cl:defclass TestPrimitives (<TestPrimitives>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TestPrimitives>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TestPrimitives)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name test_rosmaster-msg:<TestPrimitives> is deprecated: use test_rosmaster-msg:TestPrimitives instead.")))

(cl:ensure-generic-function 'caller_id-val :lambda-list '(m))
(cl:defmethod caller_id-val ((m <TestPrimitives>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_rosmaster-msg:caller_id-val is deprecated.  Use test_rosmaster-msg:caller_id instead.")
  (caller_id m))

(cl:ensure-generic-function 'orig_caller_id-val :lambda-list '(m))
(cl:defmethod orig_caller_id-val ((m <TestPrimitives>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_rosmaster-msg:orig_caller_id-val is deprecated.  Use test_rosmaster-msg:orig_caller_id instead.")
  (orig_caller_id m))

(cl:ensure-generic-function 'str-val :lambda-list '(m))
(cl:defmethod str-val ((m <TestPrimitives>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_rosmaster-msg:str-val is deprecated.  Use test_rosmaster-msg:str instead.")
  (str m))

(cl:ensure-generic-function 'b-val :lambda-list '(m))
(cl:defmethod b-val ((m <TestPrimitives>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_rosmaster-msg:b-val is deprecated.  Use test_rosmaster-msg:b instead.")
  (b m))

(cl:ensure-generic-function 'int16-val :lambda-list '(m))
(cl:defmethod int16-val ((m <TestPrimitives>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_rosmaster-msg:int16-val is deprecated.  Use test_rosmaster-msg:int16 instead.")
  (int16 m))

(cl:ensure-generic-function 'int32-val :lambda-list '(m))
(cl:defmethod int32-val ((m <TestPrimitives>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_rosmaster-msg:int32-val is deprecated.  Use test_rosmaster-msg:int32 instead.")
  (int32 m))

(cl:ensure-generic-function 'int64-val :lambda-list '(m))
(cl:defmethod int64-val ((m <TestPrimitives>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_rosmaster-msg:int64-val is deprecated.  Use test_rosmaster-msg:int64 instead.")
  (int64 m))

(cl:ensure-generic-function 'c-val :lambda-list '(m))
(cl:defmethod c-val ((m <TestPrimitives>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_rosmaster-msg:c-val is deprecated.  Use test_rosmaster-msg:c instead.")
  (c m))

(cl:ensure-generic-function 'uint16-val :lambda-list '(m))
(cl:defmethod uint16-val ((m <TestPrimitives>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_rosmaster-msg:uint16-val is deprecated.  Use test_rosmaster-msg:uint16 instead.")
  (uint16 m))

(cl:ensure-generic-function 'uint32-val :lambda-list '(m))
(cl:defmethod uint32-val ((m <TestPrimitives>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_rosmaster-msg:uint32-val is deprecated.  Use test_rosmaster-msg:uint32 instead.")
  (uint32 m))

(cl:ensure-generic-function 'uint64-val :lambda-list '(m))
(cl:defmethod uint64-val ((m <TestPrimitives>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_rosmaster-msg:uint64-val is deprecated.  Use test_rosmaster-msg:uint64 instead.")
  (uint64 m))

(cl:ensure-generic-function 'float32-val :lambda-list '(m))
(cl:defmethod float32-val ((m <TestPrimitives>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_rosmaster-msg:float32-val is deprecated.  Use test_rosmaster-msg:float32 instead.")
  (float32 m))

(cl:ensure-generic-function 'float64-val :lambda-list '(m))
(cl:defmethod float64-val ((m <TestPrimitives>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_rosmaster-msg:float64-val is deprecated.  Use test_rosmaster-msg:float64 instead.")
  (float64 m))

(cl:ensure-generic-function 't-val :lambda-list '(m))
(cl:defmethod t-val ((m <TestPrimitives>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_rosmaster-msg:t-val is deprecated.  Use test_rosmaster-msg:t instead.")
  (t m))

(cl:ensure-generic-function 'd-val :lambda-list '(m))
(cl:defmethod d-val ((m <TestPrimitives>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_rosmaster-msg:d-val is deprecated.  Use test_rosmaster-msg:d instead.")
  (d m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TestPrimitives>) ostream)
  "Serializes a message object of type '<TestPrimitives>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'caller_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'caller_id))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'orig_caller_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'orig_caller_id))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'str))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'str))
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
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'float32))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'float64))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((__sec (cl:floor (cl:slot-value msg 't)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 't) (cl:floor (cl:slot-value msg 't)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'd)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'd) (cl:floor (cl:slot-value msg 'd)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TestPrimitives>) istream)
  "Deserializes a message object of type '<TestPrimitives>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'caller_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'caller_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'orig_caller_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'orig_caller_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'str) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'str) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
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
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'float32) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'float64) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 't) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'd) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TestPrimitives>)))
  "Returns string type for a message object of type '<TestPrimitives>"
  "test_rosmaster/TestPrimitives")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TestPrimitives)))
  "Returns string type for a message object of type 'TestPrimitives"
  "test_rosmaster/TestPrimitives")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TestPrimitives>)))
  "Returns md5sum for a message object of type '<TestPrimitives>"
  "3e70f428a22c0d26ca67f87802c8e00f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TestPrimitives)))
  "Returns md5sum for a message object of type 'TestPrimitives"
  "3e70f428a22c0d26ca67f87802c8e00f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TestPrimitives>)))
  "Returns full string definition for message of type '<TestPrimitives>"
  (cl:format cl:nil "# Integration test message of all primitive types~%~%# caller_id of most recent node to send this message~%string caller_id~%# caller_id of the original node to send this message~%string orig_caller_id~%~%string str~%byte b~%int16 int16~%int32 int32~%int64 int64~%char c~%uint16 uint16~%uint32 uint32~%uint64 uint64~%float32 float32~%float64 float64~%time t~%duration d~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TestPrimitives)))
  "Returns full string definition for message of type 'TestPrimitives"
  (cl:format cl:nil "# Integration test message of all primitive types~%~%# caller_id of most recent node to send this message~%string caller_id~%# caller_id of the original node to send this message~%string orig_caller_id~%~%string str~%byte b~%int16 int16~%int32 int32~%int64 int64~%char c~%uint16 uint16~%uint32 uint32~%uint64 uint64~%float32 float32~%float64 float64~%time t~%duration d~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TestPrimitives>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'caller_id))
     4 (cl:length (cl:slot-value msg 'orig_caller_id))
     4 (cl:length (cl:slot-value msg 'str))
     1
     2
     4
     8
     1
     2
     4
     8
     4
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TestPrimitives>))
  "Converts a ROS message object to a list"
  (cl:list 'TestPrimitives
    (cl:cons ':caller_id (caller_id msg))
    (cl:cons ':orig_caller_id (orig_caller_id msg))
    (cl:cons ':str (str msg))
    (cl:cons ':b (b msg))
    (cl:cons ':int16 (int16 msg))
    (cl:cons ':int32 (int32 msg))
    (cl:cons ':int64 (int64 msg))
    (cl:cons ':c (c msg))
    (cl:cons ':uint16 (uint16 msg))
    (cl:cons ':uint32 (uint32 msg))
    (cl:cons ':uint64 (uint64 msg))
    (cl:cons ':float32 (float32 msg))
    (cl:cons ':float64 (float64 msg))
    (cl:cons ':t (t msg))
    (cl:cons ':d (d msg))
))
