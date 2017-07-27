; Auto-generated. Do not edit!


(cl:in-package test_roslib_comm-msg)


;//! \htmlinclude TypeNameChangeComplex2.msg.html

(cl:defclass <TypeNameChangeComplex2> (roslisp-msg-protocol:ros-message)
  ((a
    :reader a
    :initarg :a
    :type (cl:vector test_roslib_comm-msg:SameSubMsg2)
   :initform (cl:make-array 0 :element-type 'test_roslib_comm-msg:SameSubMsg2 :initial-element (cl:make-instance 'test_roslib_comm-msg:SameSubMsg2)))
   (b
    :reader b
    :initarg :b
    :type (cl:vector test_roslib_comm-msg:SameSubMsg3)
   :initform (cl:make-array 10 :element-type 'test_roslib_comm-msg:SameSubMsg3 :initial-element (cl:make-instance 'test_roslib_comm-msg:SameSubMsg3))))
)

(cl:defclass TypeNameChangeComplex2 (<TypeNameChangeComplex2>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TypeNameChangeComplex2>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TypeNameChangeComplex2)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name test_roslib_comm-msg:<TypeNameChangeComplex2> is deprecated: use test_roslib_comm-msg:TypeNameChangeComplex2 instead.")))

(cl:ensure-generic-function 'a-val :lambda-list '(m))
(cl:defmethod a-val ((m <TypeNameChangeComplex2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_roslib_comm-msg:a-val is deprecated.  Use test_roslib_comm-msg:a instead.")
  (a m))

(cl:ensure-generic-function 'b-val :lambda-list '(m))
(cl:defmethod b-val ((m <TypeNameChangeComplex2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_roslib_comm-msg:b-val is deprecated.  Use test_roslib_comm-msg:b instead.")
  (b m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TypeNameChangeComplex2>) ostream)
  "Serializes a message object of type '<TypeNameChangeComplex2>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'a))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'a))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'b))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TypeNameChangeComplex2>) istream)
  "Deserializes a message object of type '<TypeNameChangeComplex2>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'a) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'a)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'test_roslib_comm-msg:SameSubMsg2))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:setf (cl:slot-value msg 'b) (cl:make-array 10))
  (cl:let ((vals (cl:slot-value msg 'b)))
    (cl:dotimes (i 10)
    (cl:setf (cl:aref vals i) (cl:make-instance 'test_roslib_comm-msg:SameSubMsg3))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TypeNameChangeComplex2>)))
  "Returns string type for a message object of type '<TypeNameChangeComplex2>"
  "test_roslib_comm/TypeNameChangeComplex2")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TypeNameChangeComplex2)))
  "Returns string type for a message object of type 'TypeNameChangeComplex2"
  "test_roslib_comm/TypeNameChangeComplex2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TypeNameChangeComplex2>)))
  "Returns md5sum for a message object of type '<TypeNameChangeComplex2>"
  "a01688a0991b9d7d9facf6d94b993e93")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TypeNameChangeComplex2)))
  "Returns md5sum for a message object of type 'TypeNameChangeComplex2"
  "a01688a0991b9d7d9facf6d94b993e93")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TypeNameChangeComplex2>)))
  "Returns full string definition for message of type '<TypeNameChangeComplex2>"
  (cl:format cl:nil "SameSubMsg2[] a~%SameSubMsg3[10] b~%~%================================================================================~%MSG: test_roslib_comm/SameSubMsg2~%int32 a~%float32 b~%string c~%uint64[10] d~%float64[] e~%================================================================================~%MSG: test_roslib_comm/SameSubMsg3~%~%# Lots of comments~%int32 a  #And more comments~%float32 b~%string c~%# And also some white space~%~%~%uint64[10] d~% float64[] e~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TypeNameChangeComplex2)))
  "Returns full string definition for message of type 'TypeNameChangeComplex2"
  (cl:format cl:nil "SameSubMsg2[] a~%SameSubMsg3[10] b~%~%================================================================================~%MSG: test_roslib_comm/SameSubMsg2~%int32 a~%float32 b~%string c~%uint64[10] d~%float64[] e~%================================================================================~%MSG: test_roslib_comm/SameSubMsg3~%~%# Lots of comments~%int32 a  #And more comments~%float32 b~%string c~%# And also some white space~%~%~%uint64[10] d~% float64[] e~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TypeNameChangeComplex2>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'a) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'b) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TypeNameChangeComplex2>))
  "Converts a ROS message object to a list"
  (cl:list 'TypeNameChangeComplex2
    (cl:cons ':a (a msg))
    (cl:cons ':b (b msg))
))
