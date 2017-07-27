; Auto-generated. Do not edit!


(cl:in-package test_roscpp-msg)


;//! \htmlinclude TestEmpty.msg.html

(cl:defclass <TestEmpty> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass TestEmpty (<TestEmpty>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TestEmpty>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TestEmpty)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name test_roscpp-msg:<TestEmpty> is deprecated: use test_roscpp-msg:TestEmpty instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TestEmpty>) ostream)
  "Serializes a message object of type '<TestEmpty>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TestEmpty>) istream)
  "Deserializes a message object of type '<TestEmpty>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TestEmpty>)))
  "Returns string type for a message object of type '<TestEmpty>"
  "test_roscpp/TestEmpty")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TestEmpty)))
  "Returns string type for a message object of type 'TestEmpty"
  "test_roscpp/TestEmpty")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TestEmpty>)))
  "Returns md5sum for a message object of type '<TestEmpty>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TestEmpty)))
  "Returns md5sum for a message object of type 'TestEmpty"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TestEmpty>)))
  "Returns full string definition for message of type '<TestEmpty>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TestEmpty)))
  "Returns full string definition for message of type 'TestEmpty"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TestEmpty>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TestEmpty>))
  "Converts a ROS message object to a list"
  (cl:list 'TestEmpty
))
