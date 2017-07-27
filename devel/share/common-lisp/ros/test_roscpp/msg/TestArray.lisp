; Auto-generated. Do not edit!


(cl:in-package test_roscpp-msg)


;//! \htmlinclude TestArray.msg.html

(cl:defclass <TestArray> (roslisp-msg-protocol:ros-message)
  ((counter
    :reader counter
    :initarg :counter
    :type cl:integer
    :initform 0)
   (float_arr
    :reader float_arr
    :initarg :float_arr
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass TestArray (<TestArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TestArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TestArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name test_roscpp-msg:<TestArray> is deprecated: use test_roscpp-msg:TestArray instead.")))

(cl:ensure-generic-function 'counter-val :lambda-list '(m))
(cl:defmethod counter-val ((m <TestArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_roscpp-msg:counter-val is deprecated.  Use test_roscpp-msg:counter instead.")
  (counter m))

(cl:ensure-generic-function 'float_arr-val :lambda-list '(m))
(cl:defmethod float_arr-val ((m <TestArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_roscpp-msg:float_arr-val is deprecated.  Use test_roscpp-msg:float_arr instead.")
  (float_arr m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TestArray>) ostream)
  "Serializes a message object of type '<TestArray>"
  (cl:let* ((signed (cl:slot-value msg 'counter)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'float_arr))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'float_arr))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TestArray>) istream)
  "Deserializes a message object of type '<TestArray>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'counter) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'float_arr) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'float_arr)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TestArray>)))
  "Returns string type for a message object of type '<TestArray>"
  "test_roscpp/TestArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TestArray)))
  "Returns string type for a message object of type 'TestArray"
  "test_roscpp/TestArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TestArray>)))
  "Returns md5sum for a message object of type '<TestArray>"
  "f7c2f87680985b118316f81f28b4cfd5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TestArray)))
  "Returns md5sum for a message object of type 'TestArray"
  "f7c2f87680985b118316f81f28b4cfd5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TestArray>)))
  "Returns full string definition for message of type '<TestArray>"
  (cl:format cl:nil "int32 counter~%float64[] float_arr~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TestArray)))
  "Returns full string definition for message of type 'TestArray"
  (cl:format cl:nil "int32 counter~%float64[] float_arr~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TestArray>))
  (cl:+ 0
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'float_arr) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TestArray>))
  "Converts a ROS message object to a list"
  (cl:list 'TestArray
    (cl:cons ':counter (counter msg))
    (cl:cons ':float_arr (float_arr msg))
))
