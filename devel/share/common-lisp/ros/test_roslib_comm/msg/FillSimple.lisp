; Auto-generated. Do not edit!


(cl:in-package test_roslib_comm-msg)


;//! \htmlinclude FillSimple.msg.html

(cl:defclass <FillSimple> (roslisp-msg-protocol:ros-message)
  ((i32
    :reader i32
    :initarg :i32
    :type cl:integer
    :initform 0)
   (str
    :reader str
    :initarg :str
    :type cl:string
    :initform "")
   (i32_array
    :reader i32_array
    :initarg :i32_array
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (b
    :reader b
    :initarg :b
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass FillSimple (<FillSimple>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FillSimple>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FillSimple)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name test_roslib_comm-msg:<FillSimple> is deprecated: use test_roslib_comm-msg:FillSimple instead.")))

(cl:ensure-generic-function 'i32-val :lambda-list '(m))
(cl:defmethod i32-val ((m <FillSimple>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_roslib_comm-msg:i32-val is deprecated.  Use test_roslib_comm-msg:i32 instead.")
  (i32 m))

(cl:ensure-generic-function 'str-val :lambda-list '(m))
(cl:defmethod str-val ((m <FillSimple>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_roslib_comm-msg:str-val is deprecated.  Use test_roslib_comm-msg:str instead.")
  (str m))

(cl:ensure-generic-function 'i32_array-val :lambda-list '(m))
(cl:defmethod i32_array-val ((m <FillSimple>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_roslib_comm-msg:i32_array-val is deprecated.  Use test_roslib_comm-msg:i32_array instead.")
  (i32_array m))

(cl:ensure-generic-function 'b-val :lambda-list '(m))
(cl:defmethod b-val ((m <FillSimple>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_roslib_comm-msg:b-val is deprecated.  Use test_roslib_comm-msg:b instead.")
  (b m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FillSimple>) ostream)
  "Serializes a message object of type '<FillSimple>"
  (cl:let* ((signed (cl:slot-value msg 'i32)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'str))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'str))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'i32_array))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'i32_array))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'b) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FillSimple>) istream)
  "Deserializes a message object of type '<FillSimple>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'i32) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'str) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'str) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'i32_array) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'i32_array)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
    (cl:setf (cl:slot-value msg 'b) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FillSimple>)))
  "Returns string type for a message object of type '<FillSimple>"
  "test_roslib_comm/FillSimple")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FillSimple)))
  "Returns string type for a message object of type 'FillSimple"
  "test_roslib_comm/FillSimple")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FillSimple>)))
  "Returns md5sum for a message object of type '<FillSimple>"
  "da04a60d03fa22f7d301f9bd5f9a08ab")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FillSimple)))
  "Returns md5sum for a message object of type 'FillSimple"
  "da04a60d03fa22f7d301f9bd5f9a08ab")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FillSimple>)))
  "Returns full string definition for message of type '<FillSimple>"
  (cl:format cl:nil "int32 i32~%string str~%int32[] i32_array~%bool b~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FillSimple)))
  "Returns full string definition for message of type 'FillSimple"
  (cl:format cl:nil "int32 i32~%string str~%int32[] i32_array~%bool b~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FillSimple>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'str))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'i32_array) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FillSimple>))
  "Converts a ROS message object to a list"
  (cl:list 'FillSimple
    (cl:cons ':i32 (i32 msg))
    (cl:cons ':str (str msg))
    (cl:cons ':i32_array (i32_array msg))
    (cl:cons ':b (b msg))
))
