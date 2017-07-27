; Auto-generated. Do not edit!


(cl:in-package test_rospy-msg)


;//! \htmlinclude EmbedTest.msg.html

(cl:defclass <EmbedTest> (roslisp-msg-protocol:ros-message)
  ((str1
    :reader str1
    :initarg :str1
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String))
   (int1
    :reader int1
    :initarg :int1
    :type std_msgs-msg:Int32
    :initform (cl:make-instance 'std_msgs-msg:Int32))
   (ints
    :reader ints
    :initarg :ints
    :type (cl:vector std_msgs-msg:Int32)
   :initform (cl:make-array 0 :element-type 'std_msgs-msg:Int32 :initial-element (cl:make-instance 'std_msgs-msg:Int32)))
   (val
    :reader val
    :initarg :val
    :type test_rospy-msg:Val
    :initform (cl:make-instance 'test_rospy-msg:Val))
   (vals
    :reader vals
    :initarg :vals
    :type (cl:vector test_rospy-msg:Val)
   :initform (cl:make-array 0 :element-type 'test_rospy-msg:Val :initial-element (cl:make-instance 'test_rospy-msg:Val)))
   (arrayval
    :reader arrayval
    :initarg :arrayval
    :type (cl:vector test_rospy-msg:ArrayVal)
   :initform (cl:make-array 0 :element-type 'test_rospy-msg:ArrayVal :initial-element (cl:make-instance 'test_rospy-msg:ArrayVal))))
)

(cl:defclass EmbedTest (<EmbedTest>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EmbedTest>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EmbedTest)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name test_rospy-msg:<EmbedTest> is deprecated: use test_rospy-msg:EmbedTest instead.")))

(cl:ensure-generic-function 'str1-val :lambda-list '(m))
(cl:defmethod str1-val ((m <EmbedTest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_rospy-msg:str1-val is deprecated.  Use test_rospy-msg:str1 instead.")
  (str1 m))

(cl:ensure-generic-function 'int1-val :lambda-list '(m))
(cl:defmethod int1-val ((m <EmbedTest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_rospy-msg:int1-val is deprecated.  Use test_rospy-msg:int1 instead.")
  (int1 m))

(cl:ensure-generic-function 'ints-val :lambda-list '(m))
(cl:defmethod ints-val ((m <EmbedTest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_rospy-msg:ints-val is deprecated.  Use test_rospy-msg:ints instead.")
  (ints m))

(cl:ensure-generic-function 'val-val :lambda-list '(m))
(cl:defmethod val-val ((m <EmbedTest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_rospy-msg:val-val is deprecated.  Use test_rospy-msg:val instead.")
  (val m))

(cl:ensure-generic-function 'vals-val :lambda-list '(m))
(cl:defmethod vals-val ((m <EmbedTest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_rospy-msg:vals-val is deprecated.  Use test_rospy-msg:vals instead.")
  (vals m))

(cl:ensure-generic-function 'arrayval-val :lambda-list '(m))
(cl:defmethod arrayval-val ((m <EmbedTest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_rospy-msg:arrayval-val is deprecated.  Use test_rospy-msg:arrayval instead.")
  (arrayval m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EmbedTest>) ostream)
  "Serializes a message object of type '<EmbedTest>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'str1) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'int1) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'ints))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'ints))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'val) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'vals))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'vals))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'arrayval))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'arrayval))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EmbedTest>) istream)
  "Deserializes a message object of type '<EmbedTest>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'str1) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'int1) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'ints) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'ints)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'std_msgs-msg:Int32))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'val) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'vals) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'vals)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'test_rospy-msg:Val))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'arrayval) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'arrayval)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'test_rospy-msg:ArrayVal))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EmbedTest>)))
  "Returns string type for a message object of type '<EmbedTest>"
  "test_rospy/EmbedTest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EmbedTest)))
  "Returns string type for a message object of type 'EmbedTest"
  "test_rospy/EmbedTest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EmbedTest>)))
  "Returns md5sum for a message object of type '<EmbedTest>"
  "f8b1fc6a0f70f541c9d6bd2886b9e249")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EmbedTest)))
  "Returns md5sum for a message object of type 'EmbedTest"
  "f8b1fc6a0f70f541c9d6bd2886b9e249")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EmbedTest>)))
  "Returns full string definition for message of type '<EmbedTest>"
  (cl:format cl:nil "std_msgs/String str1~%std_msgs/Int32 int1~%std_msgs/Int32[] ints~%Val val~%Val[] vals~%ArrayVal[] arrayval~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%================================================================================~%MSG: std_msgs/Int32~%int32 data~%================================================================================~%MSG: test_rospy/Val~%string val~%================================================================================~%MSG: test_rospy/ArrayVal~%Val[] vals~%#Val[10] vals_fixed~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EmbedTest)))
  "Returns full string definition for message of type 'EmbedTest"
  (cl:format cl:nil "std_msgs/String str1~%std_msgs/Int32 int1~%std_msgs/Int32[] ints~%Val val~%Val[] vals~%ArrayVal[] arrayval~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%================================================================================~%MSG: std_msgs/Int32~%int32 data~%================================================================================~%MSG: test_rospy/Val~%string val~%================================================================================~%MSG: test_rospy/ArrayVal~%Val[] vals~%#Val[10] vals_fixed~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EmbedTest>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'str1))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'int1))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'ints) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'val))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'vals) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'arrayval) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EmbedTest>))
  "Converts a ROS message object to a list"
  (cl:list 'EmbedTest
    (cl:cons ':str1 (str1 msg))
    (cl:cons ':int1 (int1 msg))
    (cl:cons ':ints (ints msg))
    (cl:cons ':val (val msg))
    (cl:cons ':vals (vals msg))
    (cl:cons ':arrayval (arrayval msg))
))
