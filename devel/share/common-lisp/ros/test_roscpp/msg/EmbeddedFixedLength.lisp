; Auto-generated. Do not edit!


(cl:in-package test_roscpp-msg)


;//! \htmlinclude EmbeddedFixedLength.msg.html

(cl:defclass <EmbeddedFixedLength> (roslisp-msg-protocol:ros-message)
  ((a
    :reader a
    :initarg :a
    :type test_roscpp-msg:FixedLength
    :initform (cl:make-instance 'test_roscpp-msg:FixedLength)))
)

(cl:defclass EmbeddedFixedLength (<EmbeddedFixedLength>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EmbeddedFixedLength>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EmbeddedFixedLength)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name test_roscpp-msg:<EmbeddedFixedLength> is deprecated: use test_roscpp-msg:EmbeddedFixedLength instead.")))

(cl:ensure-generic-function 'a-val :lambda-list '(m))
(cl:defmethod a-val ((m <EmbeddedFixedLength>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_roscpp-msg:a-val is deprecated.  Use test_roscpp-msg:a instead.")
  (a m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EmbeddedFixedLength>) ostream)
  "Serializes a message object of type '<EmbeddedFixedLength>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'a) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EmbeddedFixedLength>) istream)
  "Deserializes a message object of type '<EmbeddedFixedLength>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'a) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EmbeddedFixedLength>)))
  "Returns string type for a message object of type '<EmbeddedFixedLength>"
  "test_roscpp/EmbeddedFixedLength")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EmbeddedFixedLength)))
  "Returns string type for a message object of type 'EmbeddedFixedLength"
  "test_roscpp/EmbeddedFixedLength")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EmbeddedFixedLength>)))
  "Returns md5sum for a message object of type '<EmbeddedFixedLength>"
  "770e15962592d1fbea70b6b820ba16d9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EmbeddedFixedLength)))
  "Returns md5sum for a message object of type 'EmbeddedFixedLength"
  "770e15962592d1fbea70b6b820ba16d9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EmbeddedFixedLength>)))
  "Returns full string definition for message of type '<EmbeddedFixedLength>"
  (cl:format cl:nil "FixedLength a~%~%================================================================================~%MSG: test_roscpp/FixedLength~%uint32 a~%float32 b~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EmbeddedFixedLength)))
  "Returns full string definition for message of type 'EmbeddedFixedLength"
  (cl:format cl:nil "FixedLength a~%~%================================================================================~%MSG: test_roscpp/FixedLength~%uint32 a~%float32 b~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EmbeddedFixedLength>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'a))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EmbeddedFixedLength>))
  "Converts a ROS message object to a list"
  (cl:list 'EmbeddedFixedLength
    (cl:cons ':a (a msg))
))
