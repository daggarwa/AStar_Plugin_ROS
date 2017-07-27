; Auto-generated. Do not edit!


(cl:in-package test_roscpp-msg)


;//! \htmlinclude VariableLengthStringArray.msg.html

(cl:defclass <VariableLengthStringArray> (roslisp-msg-protocol:ros-message)
  ((foo
    :reader foo
    :initarg :foo
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass VariableLengthStringArray (<VariableLengthStringArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VariableLengthStringArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VariableLengthStringArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name test_roscpp-msg:<VariableLengthStringArray> is deprecated: use test_roscpp-msg:VariableLengthStringArray instead.")))

(cl:ensure-generic-function 'foo-val :lambda-list '(m))
(cl:defmethod foo-val ((m <VariableLengthStringArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_roscpp-msg:foo-val is deprecated.  Use test_roscpp-msg:foo instead.")
  (foo m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VariableLengthStringArray>) ostream)
  "Serializes a message object of type '<VariableLengthStringArray>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'foo))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'foo))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VariableLengthStringArray>) istream)
  "Deserializes a message object of type '<VariableLengthStringArray>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'foo) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'foo)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VariableLengthStringArray>)))
  "Returns string type for a message object of type '<VariableLengthStringArray>"
  "test_roscpp/VariableLengthStringArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VariableLengthStringArray)))
  "Returns string type for a message object of type 'VariableLengthStringArray"
  "test_roscpp/VariableLengthStringArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VariableLengthStringArray>)))
  "Returns md5sum for a message object of type '<VariableLengthStringArray>"
  "fa992b5cca963995275d2a2f3ee7615f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VariableLengthStringArray)))
  "Returns md5sum for a message object of type 'VariableLengthStringArray"
  "fa992b5cca963995275d2a2f3ee7615f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VariableLengthStringArray>)))
  "Returns full string definition for message of type '<VariableLengthStringArray>"
  (cl:format cl:nil "string[] foo~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VariableLengthStringArray)))
  "Returns full string definition for message of type 'VariableLengthStringArray"
  (cl:format cl:nil "string[] foo~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VariableLengthStringArray>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'foo) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VariableLengthStringArray>))
  "Converts a ROS message object to a list"
  (cl:list 'VariableLengthStringArray
    (cl:cons ':foo (foo msg))
))
