; Auto-generated. Do not edit!


(cl:in-package test_roscpp-msg)


;//! \htmlinclude LatencyMessage.msg.html

(cl:defclass <LatencyMessage> (roslisp-msg-protocol:ros-message)
  ((publish_time
    :reader publish_time
    :initarg :publish_time
    :type cl:float
    :initform 0.0)
   (receipt_time
    :reader receipt_time
    :initarg :receipt_time
    :type cl:float
    :initform 0.0)
   (count
    :reader count
    :initarg :count
    :type cl:integer
    :initform 0)
   (thread_index
    :reader thread_index
    :initarg :thread_index
    :type cl:integer
    :initform 0)
   (array
    :reader array
    :initarg :array
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass LatencyMessage (<LatencyMessage>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LatencyMessage>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LatencyMessage)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name test_roscpp-msg:<LatencyMessage> is deprecated: use test_roscpp-msg:LatencyMessage instead.")))

(cl:ensure-generic-function 'publish_time-val :lambda-list '(m))
(cl:defmethod publish_time-val ((m <LatencyMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_roscpp-msg:publish_time-val is deprecated.  Use test_roscpp-msg:publish_time instead.")
  (publish_time m))

(cl:ensure-generic-function 'receipt_time-val :lambda-list '(m))
(cl:defmethod receipt_time-val ((m <LatencyMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_roscpp-msg:receipt_time-val is deprecated.  Use test_roscpp-msg:receipt_time instead.")
  (receipt_time m))

(cl:ensure-generic-function 'count-val :lambda-list '(m))
(cl:defmethod count-val ((m <LatencyMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_roscpp-msg:count-val is deprecated.  Use test_roscpp-msg:count instead.")
  (count m))

(cl:ensure-generic-function 'thread_index-val :lambda-list '(m))
(cl:defmethod thread_index-val ((m <LatencyMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_roscpp-msg:thread_index-val is deprecated.  Use test_roscpp-msg:thread_index instead.")
  (thread_index m))

(cl:ensure-generic-function 'array-val :lambda-list '(m))
(cl:defmethod array-val ((m <LatencyMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_roscpp-msg:array-val is deprecated.  Use test_roscpp-msg:array instead.")
  (array m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LatencyMessage>) ostream)
  "Serializes a message object of type '<LatencyMessage>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'publish_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'receipt_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'count)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'count)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'count)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'count)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'count)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'count)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'count)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'count)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'thread_index)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'thread_index)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'thread_index)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'thread_index)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'array))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'array))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LatencyMessage>) istream)
  "Deserializes a message object of type '<LatencyMessage>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'publish_time) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'receipt_time) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'count)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'count)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'count)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'count)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'count)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'count)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'count)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'count)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'thread_index)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'thread_index)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'thread_index)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'thread_index)) (cl:read-byte istream))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LatencyMessage>)))
  "Returns string type for a message object of type '<LatencyMessage>"
  "test_roscpp/LatencyMessage")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LatencyMessage)))
  "Returns string type for a message object of type 'LatencyMessage"
  "test_roscpp/LatencyMessage")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LatencyMessage>)))
  "Returns md5sum for a message object of type '<LatencyMessage>"
  "be90d117303321f392404ed7edeb7c8c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LatencyMessage)))
  "Returns md5sum for a message object of type 'LatencyMessage"
  "be90d117303321f392404ed7edeb7c8c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LatencyMessage>)))
  "Returns full string definition for message of type '<LatencyMessage>"
  (cl:format cl:nil "float64 publish_time~%float64 receipt_time~%uint64 count~%uint32 thread_index~%uint8[] array~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LatencyMessage)))
  "Returns full string definition for message of type 'LatencyMessage"
  (cl:format cl:nil "float64 publish_time~%float64 receipt_time~%uint64 count~%uint32 thread_index~%uint8[] array~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LatencyMessage>))
  (cl:+ 0
     8
     8
     8
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'array) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LatencyMessage>))
  "Converts a ROS message object to a list"
  (cl:list 'LatencyMessage
    (cl:cons ':publish_time (publish_time msg))
    (cl:cons ':receipt_time (receipt_time msg))
    (cl:cons ':count (count msg))
    (cl:cons ':thread_index (thread_index msg))
    (cl:cons ':array (array msg))
))
