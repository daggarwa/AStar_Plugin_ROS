; Auto-generated. Do not edit!


(cl:in-package test_roslib_comm-msg)


;//! \htmlinclude TypeNameChangeArray1.msg.html

(cl:defclass <TypeNameChangeArray1> (roslisp-msg-protocol:ros-message)
  ((a
    :reader a
    :initarg :a
    :type (cl:vector test_roslib_comm-msg:SameSubMsg1)
   :initform (cl:make-array 0 :element-type 'test_roslib_comm-msg:SameSubMsg1 :initial-element (cl:make-instance 'test_roslib_comm-msg:SameSubMsg1))))
)

(cl:defclass TypeNameChangeArray1 (<TypeNameChangeArray1>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TypeNameChangeArray1>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TypeNameChangeArray1)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name test_roslib_comm-msg:<TypeNameChangeArray1> is deprecated: use test_roslib_comm-msg:TypeNameChangeArray1 instead.")))

(cl:ensure-generic-function 'a-val :lambda-list '(m))
(cl:defmethod a-val ((m <TypeNameChangeArray1>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_roslib_comm-msg:a-val is deprecated.  Use test_roslib_comm-msg:a instead.")
  (a m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TypeNameChangeArray1>) ostream)
  "Serializes a message object of type '<TypeNameChangeArray1>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'a))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'a))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TypeNameChangeArray1>) istream)
  "Deserializes a message object of type '<TypeNameChangeArray1>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'a) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'a)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'test_roslib_comm-msg:SameSubMsg1))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TypeNameChangeArray1>)))
  "Returns string type for a message object of type '<TypeNameChangeArray1>"
  "test_roslib_comm/TypeNameChangeArray1")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TypeNameChangeArray1)))
  "Returns string type for a message object of type 'TypeNameChangeArray1"
  "test_roslib_comm/TypeNameChangeArray1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TypeNameChangeArray1>)))
  "Returns md5sum for a message object of type '<TypeNameChangeArray1>"
  "31a9992534c4d020bfc4045e7dc1a786")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TypeNameChangeArray1)))
  "Returns md5sum for a message object of type 'TypeNameChangeArray1"
  "31a9992534c4d020bfc4045e7dc1a786")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TypeNameChangeArray1>)))
  "Returns full string definition for message of type '<TypeNameChangeArray1>"
  (cl:format cl:nil "SameSubMsg1[] a~%================================================================================~%MSG: test_roslib_comm/SameSubMsg1~%int32 a~%float32 b~%string c~%uint64[10] d~%float64[] e~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TypeNameChangeArray1)))
  "Returns full string definition for message of type 'TypeNameChangeArray1"
  (cl:format cl:nil "SameSubMsg1[] a~%================================================================================~%MSG: test_roslib_comm/SameSubMsg1~%int32 a~%float32 b~%string c~%uint64[10] d~%float64[] e~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TypeNameChangeArray1>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'a) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TypeNameChangeArray1>))
  "Converts a ROS message object to a list"
  (cl:list 'TypeNameChangeArray1
    (cl:cons ':a (a msg))
))
