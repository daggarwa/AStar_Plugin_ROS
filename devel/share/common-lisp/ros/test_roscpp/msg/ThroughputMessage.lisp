; Auto-generated. Do not edit!


(cl:in-package test_roscpp-msg)


;//! \htmlinclude ThroughputMessage.msg.html

(cl:defclass <ThroughputMessage> (roslisp-msg-protocol:ros-message)
  ((array
    :reader array
    :initarg :array
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass ThroughputMessage (<ThroughputMessage>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ThroughputMessage>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ThroughputMessage)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name test_roscpp-msg:<ThroughputMessage> is deprecated: use test_roscpp-msg:ThroughputMessage instead.")))

(cl:ensure-generic-function 'array-val :lambda-list '(m))
(cl:defmethod array-val ((m <ThroughputMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_roscpp-msg:array-val is deprecated.  Use test_roscpp-msg:array instead.")
  (array m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ThroughputMessage>) ostream)
  "Serializes a message object of type '<ThroughputMessage>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'array))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'array))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ThroughputMessage>) istream)
  "Deserializes a message object of type '<ThroughputMessage>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'array) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'array)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ThroughputMessage>)))
  "Returns string type for a message object of type '<ThroughputMessage>"
  "test_roscpp/ThroughputMessage")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ThroughputMessage)))
  "Returns string type for a message object of type 'ThroughputMessage"
  "test_roscpp/ThroughputMessage")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ThroughputMessage>)))
  "Returns md5sum for a message object of type '<ThroughputMessage>"
  "dda33390139e301b6c212139192418ca")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ThroughputMessage)))
  "Returns md5sum for a message object of type 'ThroughputMessage"
  "dda33390139e301b6c212139192418ca")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ThroughputMessage>)))
  "Returns full string definition for message of type '<ThroughputMessage>"
  (cl:format cl:nil "uint8[] array~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ThroughputMessage)))
  "Returns full string definition for message of type 'ThroughputMessage"
  (cl:format cl:nil "uint8[] array~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ThroughputMessage>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'array) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ThroughputMessage>))
  "Converts a ROS message object to a list"
  (cl:list 'ThroughputMessage
    (cl:cons ':array (array msg))
))
