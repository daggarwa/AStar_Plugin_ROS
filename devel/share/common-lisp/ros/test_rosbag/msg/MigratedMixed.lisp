; Auto-generated. Do not edit!


(cl:in-package test_rosbag-msg)


;//! \htmlinclude MigratedMixed.msg.html

(cl:defclass <MigratedMixed> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (field1
    :reader field1
    :initarg :field1
    :type test_rosbag-msg:MigratedImplicit
    :initform (cl:make-instance 'test_rosbag-msg:MigratedImplicit))
   (field2
    :reader field2
    :initarg :field2
    :type cl:integer
    :initform 0))
)

(cl:defclass MigratedMixed (<MigratedMixed>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MigratedMixed>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MigratedMixed)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name test_rosbag-msg:<MigratedMixed> is deprecated: use test_rosbag-msg:MigratedMixed instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <MigratedMixed>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_rosbag-msg:header-val is deprecated.  Use test_rosbag-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'field1-val :lambda-list '(m))
(cl:defmethod field1-val ((m <MigratedMixed>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_rosbag-msg:field1-val is deprecated.  Use test_rosbag-msg:field1 instead.")
  (field1 m))

(cl:ensure-generic-function 'field2-val :lambda-list '(m))
(cl:defmethod field2-val ((m <MigratedMixed>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_rosbag-msg:field2-val is deprecated.  Use test_rosbag-msg:field2 instead.")
  (field2 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MigratedMixed>) ostream)
  "Serializes a message object of type '<MigratedMixed>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'field1) ostream)
  (cl:let* ((signed (cl:slot-value msg 'field2)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MigratedMixed>) istream)
  "Deserializes a message object of type '<MigratedMixed>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'field1) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'field2) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MigratedMixed>)))
  "Returns string type for a message object of type '<MigratedMixed>"
  "test_rosbag/MigratedMixed")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MigratedMixed)))
  "Returns string type for a message object of type 'MigratedMixed"
  "test_rosbag/MigratedMixed")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MigratedMixed>)))
  "Returns md5sum for a message object of type '<MigratedMixed>"
  "18a7d8e3c6a7e6f38daa85db9926ef07")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MigratedMixed)))
  "Returns md5sum for a message object of type 'MigratedMixed"
  "18a7d8e3c6a7e6f38daa85db9926ef07")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MigratedMixed>)))
  "Returns full string definition for message of type '<MigratedMixed>"
  (cl:format cl:nil "Header             header~%MigratedImplicit   field1 #(34, 16.32, \"kjljene\", (17, 58.2, \"aldfkja\", 82))~%int32              field2 #59~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: test_rosbag/MigratedImplicit~%Header  header~%MigratedExplicit field4 #(17, 58.2 \"aldfkja\", 82)~%string  field3 #\"kljene\"~%float32 field2 #16.32~%int32   field1 #34~%~%~%~%================================================================================~%MSG: test_rosbag/MigratedExplicit~%Header  header~%float32 afield2 #58.2~%string  combo_field3 #\"aldfkja 17\"~%int32   afield4 #82~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MigratedMixed)))
  "Returns full string definition for message of type 'MigratedMixed"
  (cl:format cl:nil "Header             header~%MigratedImplicit   field1 #(34, 16.32, \"kjljene\", (17, 58.2, \"aldfkja\", 82))~%int32              field2 #59~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: test_rosbag/MigratedImplicit~%Header  header~%MigratedExplicit field4 #(17, 58.2 \"aldfkja\", 82)~%string  field3 #\"kljene\"~%float32 field2 #16.32~%int32   field1 #34~%~%~%~%================================================================================~%MSG: test_rosbag/MigratedExplicit~%Header  header~%float32 afield2 #58.2~%string  combo_field3 #\"aldfkja 17\"~%int32   afield4 #82~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MigratedMixed>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'field1))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MigratedMixed>))
  "Converts a ROS message object to a list"
  (cl:list 'MigratedMixed
    (cl:cons ':header (header msg))
    (cl:cons ':field1 (field1 msg))
    (cl:cons ':field2 (field2 msg))
))
