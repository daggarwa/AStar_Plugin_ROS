; Auto-generated. Do not edit!


(cl:in-package test_roscpp-msg)


;//! \htmlinclude WithHeader.msg.html

(cl:defclass <WithHeader> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (a
    :reader a
    :initarg :a
    :type cl:integer
    :initform 0))
)

(cl:defclass WithHeader (<WithHeader>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WithHeader>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WithHeader)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name test_roscpp-msg:<WithHeader> is deprecated: use test_roscpp-msg:WithHeader instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <WithHeader>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_roscpp-msg:header-val is deprecated.  Use test_roscpp-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'a-val :lambda-list '(m))
(cl:defmethod a-val ((m <WithHeader>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_roscpp-msg:a-val is deprecated.  Use test_roscpp-msg:a instead.")
  (a m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WithHeader>) ostream)
  "Serializes a message object of type '<WithHeader>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'a)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'a)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'a)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'a)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WithHeader>) istream)
  "Deserializes a message object of type '<WithHeader>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'a)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'a)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'a)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'a)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WithHeader>)))
  "Returns string type for a message object of type '<WithHeader>"
  "test_roscpp/WithHeader")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WithHeader)))
  "Returns string type for a message object of type 'WithHeader"
  "test_roscpp/WithHeader")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WithHeader>)))
  "Returns md5sum for a message object of type '<WithHeader>"
  "ea0b9ad283b0d4dcc850b560da7b6965")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WithHeader)))
  "Returns md5sum for a message object of type 'WithHeader"
  "ea0b9ad283b0d4dcc850b560da7b6965")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WithHeader>)))
  "Returns full string definition for message of type '<WithHeader>"
  (cl:format cl:nil "Header header~%uint32 a~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WithHeader)))
  "Returns full string definition for message of type 'WithHeader"
  (cl:format cl:nil "Header header~%uint32 a~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WithHeader>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WithHeader>))
  "Converts a ROS message object to a list"
  (cl:list 'WithHeader
    (cl:cons ':header (header msg))
    (cl:cons ':a (a msg))
))
