; Auto-generated. Do not edit!


(cl:in-package test_roslib_comm-msg)


;//! \htmlinclude TypeNameChangeArray2.msg.html

(cl:defclass <TypeNameChangeArray2> (roslisp-msg-protocol:ros-message)
  ((a
    :reader a
    :initarg :a
    :type (cl:vector test_roslib_comm-msg:SameSubMsg2)
   :initform (cl:make-array 0 :element-type 'test_roslib_comm-msg:SameSubMsg2 :initial-element (cl:make-instance 'test_roslib_comm-msg:SameSubMsg2))))
)

(cl:defclass TypeNameChangeArray2 (<TypeNameChangeArray2>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TypeNameChangeArray2>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TypeNameChangeArray2)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name test_roslib_comm-msg:<TypeNameChangeArray2> is deprecated: use test_roslib_comm-msg:TypeNameChangeArray2 instead.")))

(cl:ensure-generic-function 'a-val :lambda-list '(m))
(cl:defmethod a-val ((m <TypeNameChangeArray2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_roslib_comm-msg:a-val is deprecated.  Use test_roslib_comm-msg:a instead.")
  (a m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TypeNameChangeArray2>) ostream)
  "Serializes a message object of type '<TypeNameChangeArray2>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'a))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'a))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TypeNameChangeArray2>) istream)
  "Deserializes a message object of type '<TypeNameChangeArray2>"
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
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TypeNameChangeArray2>)))
  "Returns string type for a message object of type '<TypeNameChangeArray2>"
  "test_roslib_comm/TypeNameChangeArray2")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TypeNameChangeArray2)))
  "Returns string type for a message object of type 'TypeNameChangeArray2"
  "test_roslib_comm/TypeNameChangeArray2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TypeNameChangeArray2>)))
  "Returns md5sum for a message object of type '<TypeNameChangeArray2>"
  "31a9992534c4d020bfc4045e7dc1a786")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TypeNameChangeArray2)))
  "Returns md5sum for a message object of type 'TypeNameChangeArray2"
  "31a9992534c4d020bfc4045e7dc1a786")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TypeNameChangeArray2>)))
  "Returns full string definition for message of type '<TypeNameChangeArray2>"
  (cl:format cl:nil "SameSubMsg2[] a~%================================================================================~%MSG: test_roslib_comm/SameSubMsg2~%int32 a~%float32 b~%string c~%uint64[10] d~%float64[] e~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TypeNameChangeArray2)))
  "Returns full string definition for message of type 'TypeNameChangeArray2"
  (cl:format cl:nil "SameSubMsg2[] a~%================================================================================~%MSG: test_roslib_comm/SameSubMsg2~%int32 a~%float32 b~%string c~%uint64[10] d~%float64[] e~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TypeNameChangeArray2>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'a) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TypeNameChangeArray2>))
  "Converts a ROS message object to a list"
  (cl:list 'TypeNameChangeArray2
    (cl:cons ':a (a msg))
))
