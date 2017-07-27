; Auto-generated. Do not edit!


(cl:in-package test_roslib_comm-msg)


;//! \htmlinclude TypeNameChange2.msg.html

(cl:defclass <TypeNameChange2> (roslisp-msg-protocol:ros-message)
  ((a
    :reader a
    :initarg :a
    :type test_roslib_comm-msg:SameSubMsg2
    :initform (cl:make-instance 'test_roslib_comm-msg:SameSubMsg2)))
)

(cl:defclass TypeNameChange2 (<TypeNameChange2>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TypeNameChange2>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TypeNameChange2)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name test_roslib_comm-msg:<TypeNameChange2> is deprecated: use test_roslib_comm-msg:TypeNameChange2 instead.")))

(cl:ensure-generic-function 'a-val :lambda-list '(m))
(cl:defmethod a-val ((m <TypeNameChange2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_roslib_comm-msg:a-val is deprecated.  Use test_roslib_comm-msg:a instead.")
  (a m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TypeNameChange2>) ostream)
  "Serializes a message object of type '<TypeNameChange2>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'a) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TypeNameChange2>) istream)
  "Deserializes a message object of type '<TypeNameChange2>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'a) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TypeNameChange2>)))
  "Returns string type for a message object of type '<TypeNameChange2>"
  "test_roslib_comm/TypeNameChange2")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TypeNameChange2)))
  "Returns string type for a message object of type 'TypeNameChange2"
  "test_roslib_comm/TypeNameChange2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TypeNameChange2>)))
  "Returns md5sum for a message object of type '<TypeNameChange2>"
  "31a9992534c4d020bfc4045e7dc1a786")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TypeNameChange2)))
  "Returns md5sum for a message object of type 'TypeNameChange2"
  "31a9992534c4d020bfc4045e7dc1a786")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TypeNameChange2>)))
  "Returns full string definition for message of type '<TypeNameChange2>"
  (cl:format cl:nil "SameSubMsg2 a~%================================================================================~%MSG: test_roslib_comm/SameSubMsg2~%int32 a~%float32 b~%string c~%uint64[10] d~%float64[] e~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TypeNameChange2)))
  "Returns full string definition for message of type 'TypeNameChange2"
  (cl:format cl:nil "SameSubMsg2 a~%================================================================================~%MSG: test_roslib_comm/SameSubMsg2~%int32 a~%float32 b~%string c~%uint64[10] d~%float64[] e~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TypeNameChange2>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'a))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TypeNameChange2>))
  "Converts a ROS message object to a list"
  (cl:list 'TypeNameChange2
    (cl:cons ':a (a msg))
))
