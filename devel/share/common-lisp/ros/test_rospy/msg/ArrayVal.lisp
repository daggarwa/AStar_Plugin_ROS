; Auto-generated. Do not edit!


(cl:in-package test_rospy-msg)


;//! \htmlinclude ArrayVal.msg.html

(cl:defclass <ArrayVal> (roslisp-msg-protocol:ros-message)
  ((vals
    :reader vals
    :initarg :vals
    :type (cl:vector test_rospy-msg:Val)
   :initform (cl:make-array 0 :element-type 'test_rospy-msg:Val :initial-element (cl:make-instance 'test_rospy-msg:Val))))
)

(cl:defclass ArrayVal (<ArrayVal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ArrayVal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ArrayVal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name test_rospy-msg:<ArrayVal> is deprecated: use test_rospy-msg:ArrayVal instead.")))

(cl:ensure-generic-function 'vals-val :lambda-list '(m))
(cl:defmethod vals-val ((m <ArrayVal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_rospy-msg:vals-val is deprecated.  Use test_rospy-msg:vals instead.")
  (vals m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ArrayVal>) ostream)
  "Serializes a message object of type '<ArrayVal>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'vals))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'vals))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ArrayVal>) istream)
  "Deserializes a message object of type '<ArrayVal>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'vals) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'vals)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'test_rospy-msg:Val))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ArrayVal>)))
  "Returns string type for a message object of type '<ArrayVal>"
  "test_rospy/ArrayVal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ArrayVal)))
  "Returns string type for a message object of type 'ArrayVal"
  "test_rospy/ArrayVal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ArrayVal>)))
  "Returns md5sum for a message object of type '<ArrayVal>"
  "94e095e6a59bceb3466e4b23c166732e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ArrayVal)))
  "Returns md5sum for a message object of type 'ArrayVal"
  "94e095e6a59bceb3466e4b23c166732e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ArrayVal>)))
  "Returns full string definition for message of type '<ArrayVal>"
  (cl:format cl:nil "Val[] vals~%#Val[10] vals_fixed~%~%================================================================================~%MSG: test_rospy/Val~%string val~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ArrayVal)))
  "Returns full string definition for message of type 'ArrayVal"
  (cl:format cl:nil "Val[] vals~%#Val[10] vals_fixed~%~%================================================================================~%MSG: test_rospy/Val~%string val~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ArrayVal>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'vals) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ArrayVal>))
  "Converts a ROS message object to a list"
  (cl:list 'ArrayVal
    (cl:cons ':vals (vals msg))
))
