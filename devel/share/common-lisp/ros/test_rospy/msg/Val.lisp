; Auto-generated. Do not edit!


(cl:in-package test_rospy-msg)


;//! \htmlinclude Val.msg.html

(cl:defclass <Val> (roslisp-msg-protocol:ros-message)
  ((val
    :reader val
    :initarg :val
    :type cl:string
    :initform ""))
)

(cl:defclass Val (<Val>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Val>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Val)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name test_rospy-msg:<Val> is deprecated: use test_rospy-msg:Val instead.")))

(cl:ensure-generic-function 'val-val :lambda-list '(m))
(cl:defmethod val-val ((m <Val>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_rospy-msg:val-val is deprecated.  Use test_rospy-msg:val instead.")
  (val m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Val>) ostream)
  "Serializes a message object of type '<Val>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'val))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'val))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Val>) istream)
  "Deserializes a message object of type '<Val>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'val) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'val) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Val>)))
  "Returns string type for a message object of type '<Val>"
  "test_rospy/Val")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Val)))
  "Returns string type for a message object of type 'Val"
  "test_rospy/Val")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Val>)))
  "Returns md5sum for a message object of type '<Val>"
  "c45577ce53559408f0f69fe465be7c70")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Val)))
  "Returns md5sum for a message object of type 'Val"
  "c45577ce53559408f0f69fe465be7c70")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Val>)))
  "Returns full string definition for message of type '<Val>"
  (cl:format cl:nil "string val~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Val)))
  "Returns full string definition for message of type 'Val"
  (cl:format cl:nil "string val~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Val>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'val))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Val>))
  "Converts a ROS message object to a list"
  (cl:list 'Val
    (cl:cons ':val (val msg))
))
