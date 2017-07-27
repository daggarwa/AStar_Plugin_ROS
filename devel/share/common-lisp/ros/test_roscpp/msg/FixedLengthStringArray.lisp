; Auto-generated. Do not edit!


(cl:in-package test_roscpp-msg)


;//! \htmlinclude FixedLengthStringArray.msg.html

(cl:defclass <FixedLengthStringArray> (roslisp-msg-protocol:ros-message)
  ((foo
    :reader foo
    :initarg :foo
    :type (cl:vector cl:string)
   :initform (cl:make-array 5 :element-type 'cl:string :initial-element "")))
)

(cl:defclass FixedLengthStringArray (<FixedLengthStringArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FixedLengthStringArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FixedLengthStringArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name test_roscpp-msg:<FixedLengthStringArray> is deprecated: use test_roscpp-msg:FixedLengthStringArray instead.")))

(cl:ensure-generic-function 'foo-val :lambda-list '(m))
(cl:defmethod foo-val ((m <FixedLengthStringArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_roscpp-msg:foo-val is deprecated.  Use test_roscpp-msg:foo instead.")
  (foo m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FixedLengthStringArray>) ostream)
  "Serializes a message object of type '<FixedLengthStringArray>"
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'foo))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FixedLengthStringArray>) istream)
  "Deserializes a message object of type '<FixedLengthStringArray>"
  (cl:setf (cl:slot-value msg 'foo) (cl:make-array 5))
  (cl:let ((vals (cl:slot-value msg 'foo)))
    (cl:dotimes (i 5)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FixedLengthStringArray>)))
  "Returns string type for a message object of type '<FixedLengthStringArray>"
  "test_roscpp/FixedLengthStringArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FixedLengthStringArray)))
  "Returns string type for a message object of type 'FixedLengthStringArray"
  "test_roscpp/FixedLengthStringArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FixedLengthStringArray>)))
  "Returns md5sum for a message object of type '<FixedLengthStringArray>"
  "8e291ac046196a95bbe34c1555b382cc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FixedLengthStringArray)))
  "Returns md5sum for a message object of type 'FixedLengthStringArray"
  "8e291ac046196a95bbe34c1555b382cc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FixedLengthStringArray>)))
  "Returns full string definition for message of type '<FixedLengthStringArray>"
  (cl:format cl:nil "string[5] foo~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FixedLengthStringArray)))
  "Returns full string definition for message of type 'FixedLengthStringArray"
  (cl:format cl:nil "string[5] foo~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FixedLengthStringArray>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'foo) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FixedLengthStringArray>))
  "Converts a ROS message object to a list"
  (cl:list 'FixedLengthStringArray
    (cl:cons ':foo (foo msg))
))
