; Auto-generated. Do not edit!


(cl:in-package test_roscpp-msg)


;//! \htmlinclude ArrayOfVariableLength.msg.html

(cl:defclass <ArrayOfVariableLength> (roslisp-msg-protocol:ros-message)
  ((a
    :reader a
    :initarg :a
    :type (cl:vector test_roscpp-msg:VariableLength)
   :initform (cl:make-array 4 :element-type 'test_roscpp-msg:VariableLength :initial-element (cl:make-instance 'test_roscpp-msg:VariableLength))))
)

(cl:defclass ArrayOfVariableLength (<ArrayOfVariableLength>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ArrayOfVariableLength>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ArrayOfVariableLength)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name test_roscpp-msg:<ArrayOfVariableLength> is deprecated: use test_roscpp-msg:ArrayOfVariableLength instead.")))

(cl:ensure-generic-function 'a-val :lambda-list '(m))
(cl:defmethod a-val ((m <ArrayOfVariableLength>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_roscpp-msg:a-val is deprecated.  Use test_roscpp-msg:a instead.")
  (a m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ArrayOfVariableLength>) ostream)
  "Serializes a message object of type '<ArrayOfVariableLength>"
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'a))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ArrayOfVariableLength>) istream)
  "Deserializes a message object of type '<ArrayOfVariableLength>"
  (cl:setf (cl:slot-value msg 'a) (cl:make-array 4))
  (cl:let ((vals (cl:slot-value msg 'a)))
    (cl:dotimes (i 4)
    (cl:setf (cl:aref vals i) (cl:make-instance 'test_roscpp-msg:VariableLength))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ArrayOfVariableLength>)))
  "Returns string type for a message object of type '<ArrayOfVariableLength>"
  "test_roscpp/ArrayOfVariableLength")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ArrayOfVariableLength)))
  "Returns string type for a message object of type 'ArrayOfVariableLength"
  "test_roscpp/ArrayOfVariableLength")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ArrayOfVariableLength>)))
  "Returns md5sum for a message object of type '<ArrayOfVariableLength>"
  "e7404d454a50b82c426a3a2c76fbcefd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ArrayOfVariableLength)))
  "Returns md5sum for a message object of type 'ArrayOfVariableLength"
  "e7404d454a50b82c426a3a2c76fbcefd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ArrayOfVariableLength>)))
  "Returns full string definition for message of type '<ArrayOfVariableLength>"
  (cl:format cl:nil "VariableLength[4] a~%================================================================================~%MSG: test_roscpp/VariableLength~%uint32[] a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ArrayOfVariableLength)))
  "Returns full string definition for message of type 'ArrayOfVariableLength"
  (cl:format cl:nil "VariableLength[4] a~%================================================================================~%MSG: test_roscpp/VariableLength~%uint32[] a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ArrayOfVariableLength>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'a) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ArrayOfVariableLength>))
  "Converts a ROS message object to a list"
  (cl:list 'ArrayOfVariableLength
    (cl:cons ':a (a msg))
))
