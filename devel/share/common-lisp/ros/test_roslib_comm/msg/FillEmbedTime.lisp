; Auto-generated. Do not edit!


(cl:in-package test_roslib_comm-msg)


;//! \htmlinclude FillEmbedTime.msg.html

(cl:defclass <FillEmbedTime> (roslisp-msg-protocol:ros-message)
  ((t
    :reader t
    :initarg :t
    :type cl:real
    :initform 0)
   (d
    :reader d
    :initarg :d
    :type cl:real
    :initform 0)
   (str_msg
    :reader str_msg
    :initarg :str_msg
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String))
   (str_msg_array
    :reader str_msg_array
    :initarg :str_msg_array
    :type (cl:vector std_msgs-msg:String)
   :initform (cl:make-array 0 :element-type 'std_msgs-msg:String :initial-element (cl:make-instance 'std_msgs-msg:String)))
   (i32
    :reader i32
    :initarg :i32
    :type cl:integer
    :initform 0))
)

(cl:defclass FillEmbedTime (<FillEmbedTime>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FillEmbedTime>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FillEmbedTime)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name test_roslib_comm-msg:<FillEmbedTime> is deprecated: use test_roslib_comm-msg:FillEmbedTime instead.")))

(cl:ensure-generic-function 't-val :lambda-list '(m))
(cl:defmethod t-val ((m <FillEmbedTime>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_roslib_comm-msg:t-val is deprecated.  Use test_roslib_comm-msg:t instead.")
  (t m))

(cl:ensure-generic-function 'd-val :lambda-list '(m))
(cl:defmethod d-val ((m <FillEmbedTime>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_roslib_comm-msg:d-val is deprecated.  Use test_roslib_comm-msg:d instead.")
  (d m))

(cl:ensure-generic-function 'str_msg-val :lambda-list '(m))
(cl:defmethod str_msg-val ((m <FillEmbedTime>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_roslib_comm-msg:str_msg-val is deprecated.  Use test_roslib_comm-msg:str_msg instead.")
  (str_msg m))

(cl:ensure-generic-function 'str_msg_array-val :lambda-list '(m))
(cl:defmethod str_msg_array-val ((m <FillEmbedTime>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_roslib_comm-msg:str_msg_array-val is deprecated.  Use test_roslib_comm-msg:str_msg_array instead.")
  (str_msg_array m))

(cl:ensure-generic-function 'i32-val :lambda-list '(m))
(cl:defmethod i32-val ((m <FillEmbedTime>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_roslib_comm-msg:i32-val is deprecated.  Use test_roslib_comm-msg:i32 instead.")
  (i32 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FillEmbedTime>) ostream)
  "Serializes a message object of type '<FillEmbedTime>"
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
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'str_msg) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'str_msg_array))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'str_msg_array))
  (cl:let* ((signed (cl:slot-value msg 'i32)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FillEmbedTime>) istream)
  "Deserializes a message object of type '<FillEmbedTime>"
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
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'str_msg) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'str_msg_array) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'str_msg_array)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'std_msgs-msg:String))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'i32) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FillEmbedTime>)))
  "Returns string type for a message object of type '<FillEmbedTime>"
  "test_roslib_comm/FillEmbedTime")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FillEmbedTime)))
  "Returns string type for a message object of type 'FillEmbedTime"
  "test_roslib_comm/FillEmbedTime")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FillEmbedTime>)))
  "Returns md5sum for a message object of type '<FillEmbedTime>"
  "90e08039be001a899b8c20e680c289b0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FillEmbedTime)))
  "Returns md5sum for a message object of type 'FillEmbedTime"
  "90e08039be001a899b8c20e680c289b0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FillEmbedTime>)))
  "Returns full string definition for message of type '<FillEmbedTime>"
  (cl:format cl:nil "time t~%duration d~%std_msgs/String str_msg~%std_msgs/String[] str_msg_array~%int32 i32~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FillEmbedTime)))
  "Returns full string definition for message of type 'FillEmbedTime"
  (cl:format cl:nil "time t~%duration d~%std_msgs/String str_msg~%std_msgs/String[] str_msg_array~%int32 i32~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FillEmbedTime>))
  (cl:+ 0
     8
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'str_msg))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'str_msg_array) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FillEmbedTime>))
  "Converts a ROS message object to a list"
  (cl:list 'FillEmbedTime
    (cl:cons ':t (t msg))
    (cl:cons ':d (d msg))
    (cl:cons ':str_msg (str_msg msg))
    (cl:cons ':str_msg_array (str_msg_array msg))
    (cl:cons ':i32 (i32 msg))
))
