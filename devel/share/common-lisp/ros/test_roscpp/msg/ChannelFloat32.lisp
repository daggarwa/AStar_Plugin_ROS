; Auto-generated. Do not edit!


(cl:in-package test_roscpp-msg)


;//! \htmlinclude ChannelFloat32.msg.html

(cl:defclass <ChannelFloat32> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (vals
    :reader vals
    :initarg :vals
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass ChannelFloat32 (<ChannelFloat32>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ChannelFloat32>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ChannelFloat32)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name test_roscpp-msg:<ChannelFloat32> is deprecated: use test_roscpp-msg:ChannelFloat32 instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <ChannelFloat32>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_roscpp-msg:name-val is deprecated.  Use test_roscpp-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'vals-val :lambda-list '(m))
(cl:defmethod vals-val ((m <ChannelFloat32>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_roscpp-msg:vals-val is deprecated.  Use test_roscpp-msg:vals instead.")
  (vals m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ChannelFloat32>) ostream)
  "Serializes a message object of type '<ChannelFloat32>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'vals))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'vals))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ChannelFloat32>) istream)
  "Deserializes a message object of type '<ChannelFloat32>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'vals) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'vals)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ChannelFloat32>)))
  "Returns string type for a message object of type '<ChannelFloat32>"
  "test_roscpp/ChannelFloat32")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ChannelFloat32)))
  "Returns string type for a message object of type 'ChannelFloat32"
  "test_roscpp/ChannelFloat32")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ChannelFloat32>)))
  "Returns md5sum for a message object of type '<ChannelFloat32>"
  "61c47e4621e471c885edb248b5dcafd5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ChannelFloat32)))
  "Returns md5sum for a message object of type 'ChannelFloat32"
  "61c47e4621e471c885edb248b5dcafd5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ChannelFloat32>)))
  "Returns full string definition for message of type '<ChannelFloat32>"
  (cl:format cl:nil "string name~%float32[] vals~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ChannelFloat32)))
  "Returns full string definition for message of type 'ChannelFloat32"
  (cl:format cl:nil "string name~%float32[] vals~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ChannelFloat32>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'vals) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ChannelFloat32>))
  "Converts a ROS message object to a list"
  (cl:list 'ChannelFloat32
    (cl:cons ':name (name msg))
    (cl:cons ':vals (vals msg))
))
