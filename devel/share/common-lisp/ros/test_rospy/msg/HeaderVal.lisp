; Auto-generated. Do not edit!


(cl:in-package test_rospy-msg)


;//! \htmlinclude HeaderVal.msg.html

(cl:defclass <HeaderVal> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (val
    :reader val
    :initarg :val
    :type cl:string
    :initform ""))
)

(cl:defclass HeaderVal (<HeaderVal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HeaderVal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HeaderVal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name test_rospy-msg:<HeaderVal> is deprecated: use test_rospy-msg:HeaderVal instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <HeaderVal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_rospy-msg:header-val is deprecated.  Use test_rospy-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'val-val :lambda-list '(m))
(cl:defmethod val-val ((m <HeaderVal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_rospy-msg:val-val is deprecated.  Use test_rospy-msg:val instead.")
  (val m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HeaderVal>) ostream)
  "Serializes a message object of type '<HeaderVal>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'val))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'val))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HeaderVal>) istream)
  "Deserializes a message object of type '<HeaderVal>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HeaderVal>)))
  "Returns string type for a message object of type '<HeaderVal>"
  "test_rospy/HeaderVal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HeaderVal)))
  "Returns string type for a message object of type 'HeaderVal"
  "test_rospy/HeaderVal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HeaderVal>)))
  "Returns md5sum for a message object of type '<HeaderVal>"
  "c3262d64205f82361bc7aa4173b8fe64")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HeaderVal)))
  "Returns md5sum for a message object of type 'HeaderVal"
  "c3262d64205f82361bc7aa4173b8fe64")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HeaderVal>)))
  "Returns full string definition for message of type '<HeaderVal>"
  (cl:format cl:nil "Header header~%string val~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HeaderVal)))
  "Returns full string definition for message of type 'HeaderVal"
  (cl:format cl:nil "Header header~%string val~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HeaderVal>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'val))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HeaderVal>))
  "Converts a ROS message object to a list"
  (cl:list 'HeaderVal
    (cl:cons ':header (header msg))
    (cl:cons ':val (val msg))
))
