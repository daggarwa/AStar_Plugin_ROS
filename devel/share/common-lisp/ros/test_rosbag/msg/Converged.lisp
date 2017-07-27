; Auto-generated. Do not edit!


(cl:in-package test_rosbag-msg)


;//! \htmlinclude Converged.msg.html

(cl:defclass <Converged> (roslisp-msg-protocol:ros-message)
  ((field1
    :reader field1
    :initarg :field1
    :type (cl:vector cl:float)
   :initform (cl:make-array 4 :element-type 'cl:float :initial-element 0.0))
   (field2
    :reader field2
    :initarg :field2
    :type (cl:vector test_rosbag-msg:SimpleMigrated)
   :initform (cl:make-array 4 :element-type 'test_rosbag-msg:SimpleMigrated :initial-element (cl:make-instance 'test_rosbag-msg:SimpleMigrated))))
)

(cl:defclass Converged (<Converged>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Converged>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Converged)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name test_rosbag-msg:<Converged> is deprecated: use test_rosbag-msg:Converged instead.")))

(cl:ensure-generic-function 'field1-val :lambda-list '(m))
(cl:defmethod field1-val ((m <Converged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_rosbag-msg:field1-val is deprecated.  Use test_rosbag-msg:field1 instead.")
  (field1 m))

(cl:ensure-generic-function 'field2-val :lambda-list '(m))
(cl:defmethod field2-val ((m <Converged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_rosbag-msg:field2-val is deprecated.  Use test_rosbag-msg:field2 instead.")
  (field2 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Converged>) ostream)
  "Serializes a message object of type '<Converged>"
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'field1))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'field2))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Converged>) istream)
  "Deserializes a message object of type '<Converged>"
  (cl:setf (cl:slot-value msg 'field1) (cl:make-array 4))
  (cl:let ((vals (cl:slot-value msg 'field1)))
    (cl:dotimes (i 4)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'field2) (cl:make-array 4))
  (cl:let ((vals (cl:slot-value msg 'field2)))
    (cl:dotimes (i 4)
    (cl:setf (cl:aref vals i) (cl:make-instance 'test_rosbag-msg:SimpleMigrated))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Converged>)))
  "Returns string type for a message object of type '<Converged>"
  "test_rosbag/Converged")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Converged)))
  "Returns string type for a message object of type 'Converged"
  "test_rosbag/Converged")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Converged>)))
  "Returns md5sum for a message object of type '<Converged>"
  "fb364bc8a2a4b0b810763576f44bc36d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Converged)))
  "Returns md5sum for a message object of type 'Converged"
  "fb364bc8a2a4b0b810763576f44bc36d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Converged>)))
  "Returns full string definition for message of type '<Converged>"
  (cl:format cl:nil "float32[4]           field1 # [1.2, 3.4, 5.6, 7.8]~%SimpleMigrated[4]    field2 # [11, 22, 33, 44]~%================================================================================~%MSG: test_rosbag/SimpleMigrated~%int32 data # 42~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Converged)))
  "Returns full string definition for message of type 'Converged"
  (cl:format cl:nil "float32[4]           field1 # [1.2, 3.4, 5.6, 7.8]~%SimpleMigrated[4]    field2 # [11, 22, 33, 44]~%================================================================================~%MSG: test_rosbag/SimpleMigrated~%int32 data # 42~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Converged>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'field1) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'field2) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Converged>))
  "Converts a ROS message object to a list"
  (cl:list 'Converged
    (cl:cons ':field1 (field1 msg))
    (cl:cons ':field2 (field2 msg))
))
