; Auto-generated. Do not edit!


(cl:in-package test_roslib_comm-msg)


;//! \htmlinclude FieldNameChange2.msg.html

(cl:defclass <FieldNameChange2> (roslisp-msg-protocol:ros-message)
  ((b
    :reader b
    :initarg :b
    :type test_roslib_comm-msg:SameSubMsg1
    :initform (cl:make-instance 'test_roslib_comm-msg:SameSubMsg1)))
)

(cl:defclass FieldNameChange2 (<FieldNameChange2>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FieldNameChange2>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FieldNameChange2)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name test_roslib_comm-msg:<FieldNameChange2> is deprecated: use test_roslib_comm-msg:FieldNameChange2 instead.")))

(cl:ensure-generic-function 'b-val :lambda-list '(m))
(cl:defmethod b-val ((m <FieldNameChange2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_roslib_comm-msg:b-val is deprecated.  Use test_roslib_comm-msg:b instead.")
  (b m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FieldNameChange2>) ostream)
  "Serializes a message object of type '<FieldNameChange2>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'b) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FieldNameChange2>) istream)
  "Deserializes a message object of type '<FieldNameChange2>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'b) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FieldNameChange2>)))
  "Returns string type for a message object of type '<FieldNameChange2>"
  "test_roslib_comm/FieldNameChange2")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FieldNameChange2)))
  "Returns string type for a message object of type 'FieldNameChange2"
  "test_roslib_comm/FieldNameChange2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FieldNameChange2>)))
  "Returns md5sum for a message object of type '<FieldNameChange2>"
  "dde34a89b93706fc183fd13c24ae090a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FieldNameChange2)))
  "Returns md5sum for a message object of type 'FieldNameChange2"
  "dde34a89b93706fc183fd13c24ae090a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FieldNameChange2>)))
  "Returns full string definition for message of type '<FieldNameChange2>"
  (cl:format cl:nil "SameSubMsg1 b~%================================================================================~%MSG: test_roslib_comm/SameSubMsg1~%int32 a~%float32 b~%string c~%uint64[10] d~%float64[] e~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FieldNameChange2)))
  "Returns full string definition for message of type 'FieldNameChange2"
  (cl:format cl:nil "SameSubMsg1 b~%================================================================================~%MSG: test_roslib_comm/SameSubMsg1~%int32 a~%float32 b~%string c~%uint64[10] d~%float64[] e~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FieldNameChange2>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'b))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FieldNameChange2>))
  "Converts a ROS message object to a list"
  (cl:list 'FieldNameChange2
    (cl:cons ':b (b msg))
))
