; Auto-generated. Do not edit!


(cl:in-package test_roscpp-msg)


;//! \htmlinclude EmbeddedExternal.msg.html

(cl:defclass <EmbeddedExternal> (roslisp-msg-protocol:ros-message)
  ((a
    :reader a
    :initarg :a
    :type std_msgs-msg:UInt8
    :initform (cl:make-instance 'std_msgs-msg:UInt8)))
)

(cl:defclass EmbeddedExternal (<EmbeddedExternal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EmbeddedExternal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EmbeddedExternal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name test_roscpp-msg:<EmbeddedExternal> is deprecated: use test_roscpp-msg:EmbeddedExternal instead.")))

(cl:ensure-generic-function 'a-val :lambda-list '(m))
(cl:defmethod a-val ((m <EmbeddedExternal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_roscpp-msg:a-val is deprecated.  Use test_roscpp-msg:a instead.")
  (a m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EmbeddedExternal>) ostream)
  "Serializes a message object of type '<EmbeddedExternal>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'a) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EmbeddedExternal>) istream)
  "Deserializes a message object of type '<EmbeddedExternal>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'a) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EmbeddedExternal>)))
  "Returns string type for a message object of type '<EmbeddedExternal>"
  "test_roscpp/EmbeddedExternal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EmbeddedExternal)))
  "Returns string type for a message object of type 'EmbeddedExternal"
  "test_roscpp/EmbeddedExternal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EmbeddedExternal>)))
  "Returns md5sum for a message object of type '<EmbeddedExternal>"
  "a09b324865f98bbf605e59ed0cefbc1d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EmbeddedExternal)))
  "Returns md5sum for a message object of type 'EmbeddedExternal"
  "a09b324865f98bbf605e59ed0cefbc1d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EmbeddedExternal>)))
  "Returns full string definition for message of type '<EmbeddedExternal>"
  (cl:format cl:nil "std_msgs/UInt8 a~%================================================================================~%MSG: std_msgs/UInt8~%uint8 data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EmbeddedExternal)))
  "Returns full string definition for message of type 'EmbeddedExternal"
  (cl:format cl:nil "std_msgs/UInt8 a~%================================================================================~%MSG: std_msgs/UInt8~%uint8 data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EmbeddedExternal>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'a))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EmbeddedExternal>))
  "Converts a ROS message object to a list"
  (cl:list 'EmbeddedExternal
    (cl:cons ':a (a msg))
))
