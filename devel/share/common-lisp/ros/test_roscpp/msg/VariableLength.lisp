; Auto-generated. Do not edit!


(cl:in-package test_roscpp-msg)


;//! \htmlinclude VariableLength.msg.html

(cl:defclass <VariableLength> (roslisp-msg-protocol:ros-message)
  ((a
    :reader a
    :initarg :a
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass VariableLength (<VariableLength>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VariableLength>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VariableLength)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name test_roscpp-msg:<VariableLength> is deprecated: use test_roscpp-msg:VariableLength instead.")))

(cl:ensure-generic-function 'a-val :lambda-list '(m))
(cl:defmethod a-val ((m <VariableLength>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_roscpp-msg:a-val is deprecated.  Use test_roscpp-msg:a instead.")
  (a m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VariableLength>) ostream)
  "Serializes a message object of type '<VariableLength>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'a))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream))
   (cl:slot-value msg 'a))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VariableLength>) istream)
  "Deserializes a message object of type '<VariableLength>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'a) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'a)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VariableLength>)))
  "Returns string type for a message object of type '<VariableLength>"
  "test_roscpp/VariableLength")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VariableLength)))
  "Returns string type for a message object of type 'VariableLength"
  "test_roscpp/VariableLength")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VariableLength>)))
  "Returns md5sum for a message object of type '<VariableLength>"
  "d9a532f93b9aeffe09e3bc21ff3de0f0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VariableLength)))
  "Returns md5sum for a message object of type 'VariableLength"
  "d9a532f93b9aeffe09e3bc21ff3de0f0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VariableLength>)))
  "Returns full string definition for message of type '<VariableLength>"
  (cl:format cl:nil "uint32[] a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VariableLength)))
  "Returns full string definition for message of type 'VariableLength"
  (cl:format cl:nil "uint32[] a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VariableLength>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'a) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VariableLength>))
  "Converts a ROS message object to a list"
  (cl:list 'VariableLength
    (cl:cons ':a (a msg))
))
