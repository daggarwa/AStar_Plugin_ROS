; Auto-generated. Do not edit!


(cl:in-package test_roscpp-msg)


;//! \htmlinclude EmbeddedVariableLength.msg.html

(cl:defclass <EmbeddedVariableLength> (roslisp-msg-protocol:ros-message)
  ((a
    :reader a
    :initarg :a
    :type test_roscpp-msg:VariableLength
    :initform (cl:make-instance 'test_roscpp-msg:VariableLength)))
)

(cl:defclass EmbeddedVariableLength (<EmbeddedVariableLength>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EmbeddedVariableLength>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EmbeddedVariableLength)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name test_roscpp-msg:<EmbeddedVariableLength> is deprecated: use test_roscpp-msg:EmbeddedVariableLength instead.")))

(cl:ensure-generic-function 'a-val :lambda-list '(m))
(cl:defmethod a-val ((m <EmbeddedVariableLength>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_roscpp-msg:a-val is deprecated.  Use test_roscpp-msg:a instead.")
  (a m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EmbeddedVariableLength>) ostream)
  "Serializes a message object of type '<EmbeddedVariableLength>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'a) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EmbeddedVariableLength>) istream)
  "Deserializes a message object of type '<EmbeddedVariableLength>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'a) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EmbeddedVariableLength>)))
  "Returns string type for a message object of type '<EmbeddedVariableLength>"
  "test_roscpp/EmbeddedVariableLength")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EmbeddedVariableLength)))
  "Returns string type for a message object of type 'EmbeddedVariableLength"
  "test_roscpp/EmbeddedVariableLength")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EmbeddedVariableLength>)))
  "Returns md5sum for a message object of type '<EmbeddedVariableLength>"
  "e7404d454a50b82c426a3a2c76fbcefd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EmbeddedVariableLength)))
  "Returns md5sum for a message object of type 'EmbeddedVariableLength"
  "e7404d454a50b82c426a3a2c76fbcefd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EmbeddedVariableLength>)))
  "Returns full string definition for message of type '<EmbeddedVariableLength>"
  (cl:format cl:nil "VariableLength a~%~%================================================================================~%MSG: test_roscpp/VariableLength~%uint32[] a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EmbeddedVariableLength)))
  "Returns full string definition for message of type 'EmbeddedVariableLength"
  (cl:format cl:nil "VariableLength a~%~%================================================================================~%MSG: test_roscpp/VariableLength~%uint32[] a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EmbeddedVariableLength>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'a))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EmbeddedVariableLength>))
  "Converts a ROS message object to a list"
  (cl:list 'EmbeddedVariableLength
    (cl:cons ':a (a msg))
))
