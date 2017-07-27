; Auto-generated. Do not edit!


(cl:in-package test_roscpp-msg)


;//! \htmlinclude HeaderNotFirstMember.msg.html

(cl:defclass <HeaderNotFirstMember> (roslisp-msg-protocol:ros-message)
  ((foo
    :reader foo
    :initarg :foo
    :type cl:fixnum
    :initform 0)
   (header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header)))
)

(cl:defclass HeaderNotFirstMember (<HeaderNotFirstMember>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HeaderNotFirstMember>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HeaderNotFirstMember)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name test_roscpp-msg:<HeaderNotFirstMember> is deprecated: use test_roscpp-msg:HeaderNotFirstMember instead.")))

(cl:ensure-generic-function 'foo-val :lambda-list '(m))
(cl:defmethod foo-val ((m <HeaderNotFirstMember>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_roscpp-msg:foo-val is deprecated.  Use test_roscpp-msg:foo instead.")
  (foo m))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <HeaderNotFirstMember>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_roscpp-msg:header-val is deprecated.  Use test_roscpp-msg:header instead.")
  (header m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HeaderNotFirstMember>) ostream)
  "Serializes a message object of type '<HeaderNotFirstMember>"
  (cl:let* ((signed (cl:slot-value msg 'foo)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HeaderNotFirstMember>) istream)
  "Deserializes a message object of type '<HeaderNotFirstMember>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'foo) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HeaderNotFirstMember>)))
  "Returns string type for a message object of type '<HeaderNotFirstMember>"
  "test_roscpp/HeaderNotFirstMember")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HeaderNotFirstMember)))
  "Returns string type for a message object of type 'HeaderNotFirstMember"
  "test_roscpp/HeaderNotFirstMember")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HeaderNotFirstMember>)))
  "Returns md5sum for a message object of type '<HeaderNotFirstMember>"
  "c7ed781820d7a36c5947d0f441f50964")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HeaderNotFirstMember)))
  "Returns md5sum for a message object of type 'HeaderNotFirstMember"
  "c7ed781820d7a36c5947d0f441f50964")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HeaderNotFirstMember>)))
  "Returns full string definition for message of type '<HeaderNotFirstMember>"
  (cl:format cl:nil "int8 foo~%Header header~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HeaderNotFirstMember)))
  "Returns full string definition for message of type 'HeaderNotFirstMember"
  (cl:format cl:nil "int8 foo~%Header header~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HeaderNotFirstMember>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HeaderNotFirstMember>))
  "Converts a ROS message object to a list"
  (cl:list 'HeaderNotFirstMember
    (cl:cons ':foo (foo msg))
    (cl:cons ':header (header msg))
))
