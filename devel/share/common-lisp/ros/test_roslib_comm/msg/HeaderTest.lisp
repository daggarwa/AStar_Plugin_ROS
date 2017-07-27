; Auto-generated. Do not edit!


(cl:in-package test_roslib_comm-msg)


;//! \htmlinclude HeaderTest.msg.html

(cl:defclass <HeaderTest> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (i32
    :reader i32
    :initarg :i32
    :type cl:integer
    :initform 0))
)

(cl:defclass HeaderTest (<HeaderTest>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HeaderTest>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HeaderTest)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name test_roslib_comm-msg:<HeaderTest> is deprecated: use test_roslib_comm-msg:HeaderTest instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <HeaderTest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_roslib_comm-msg:header-val is deprecated.  Use test_roslib_comm-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'i32-val :lambda-list '(m))
(cl:defmethod i32-val ((m <HeaderTest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_roslib_comm-msg:i32-val is deprecated.  Use test_roslib_comm-msg:i32 instead.")
  (i32 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HeaderTest>) ostream)
  "Serializes a message object of type '<HeaderTest>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'i32)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HeaderTest>) istream)
  "Deserializes a message object of type '<HeaderTest>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'i32) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HeaderTest>)))
  "Returns string type for a message object of type '<HeaderTest>"
  "test_roslib_comm/HeaderTest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HeaderTest)))
  "Returns string type for a message object of type 'HeaderTest"
  "test_roslib_comm/HeaderTest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HeaderTest>)))
  "Returns md5sum for a message object of type '<HeaderTest>"
  "4426b8931bec8509041d64c6a89b54a2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HeaderTest)))
  "Returns md5sum for a message object of type 'HeaderTest"
  "4426b8931bec8509041d64c6a89b54a2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HeaderTest>)))
  "Returns full string definition for message of type '<HeaderTest>"
  (cl:format cl:nil "Header header~%int32 i32~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HeaderTest)))
  "Returns full string definition for message of type 'HeaderTest"
  (cl:format cl:nil "Header header~%int32 i32~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HeaderTest>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HeaderTest>))
  "Converts a ROS message object to a list"
  (cl:list 'HeaderTest
    (cl:cons ':header (header msg))
    (cl:cons ':i32 (i32 msg))
))
