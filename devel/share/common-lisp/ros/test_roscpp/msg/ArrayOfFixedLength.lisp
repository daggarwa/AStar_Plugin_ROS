; Auto-generated. Do not edit!


(cl:in-package test_roscpp-msg)


;//! \htmlinclude ArrayOfFixedLength.msg.html

(cl:defclass <ArrayOfFixedLength> (roslisp-msg-protocol:ros-message)
  ((a
    :reader a
    :initarg :a
    :type (cl:vector test_roscpp-msg:FixedLength)
   :initform (cl:make-array 4 :element-type 'test_roscpp-msg:FixedLength :initial-element (cl:make-instance 'test_roscpp-msg:FixedLength))))
)

(cl:defclass ArrayOfFixedLength (<ArrayOfFixedLength>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ArrayOfFixedLength>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ArrayOfFixedLength)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name test_roscpp-msg:<ArrayOfFixedLength> is deprecated: use test_roscpp-msg:ArrayOfFixedLength instead.")))

(cl:ensure-generic-function 'a-val :lambda-list '(m))
(cl:defmethod a-val ((m <ArrayOfFixedLength>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_roscpp-msg:a-val is deprecated.  Use test_roscpp-msg:a instead.")
  (a m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ArrayOfFixedLength>) ostream)
  "Serializes a message object of type '<ArrayOfFixedLength>"
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'a))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ArrayOfFixedLength>) istream)
  "Deserializes a message object of type '<ArrayOfFixedLength>"
  (cl:setf (cl:slot-value msg 'a) (cl:make-array 4))
  (cl:let ((vals (cl:slot-value msg 'a)))
    (cl:dotimes (i 4)
    (cl:setf (cl:aref vals i) (cl:make-instance 'test_roscpp-msg:FixedLength))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ArrayOfFixedLength>)))
  "Returns string type for a message object of type '<ArrayOfFixedLength>"
  "test_roscpp/ArrayOfFixedLength")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ArrayOfFixedLength)))
  "Returns string type for a message object of type 'ArrayOfFixedLength"
  "test_roscpp/ArrayOfFixedLength")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ArrayOfFixedLength>)))
  "Returns md5sum for a message object of type '<ArrayOfFixedLength>"
  "770e15962592d1fbea70b6b820ba16d9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ArrayOfFixedLength)))
  "Returns md5sum for a message object of type 'ArrayOfFixedLength"
  "770e15962592d1fbea70b6b820ba16d9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ArrayOfFixedLength>)))
  "Returns full string definition for message of type '<ArrayOfFixedLength>"
  (cl:format cl:nil "# This comment has \"quotes\" in it~%FixedLength[4] a~%================================================================================~%MSG: test_roscpp/FixedLength~%uint32 a~%float32 b~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ArrayOfFixedLength)))
  "Returns full string definition for message of type 'ArrayOfFixedLength"
  (cl:format cl:nil "# This comment has \"quotes\" in it~%FixedLength[4] a~%================================================================================~%MSG: test_roscpp/FixedLength~%uint32 a~%float32 b~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ArrayOfFixedLength>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'a) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ArrayOfFixedLength>))
  "Converts a ROS message object to a list"
  (cl:list 'ArrayOfFixedLength
    (cl:cons ':a (a msg))
))
