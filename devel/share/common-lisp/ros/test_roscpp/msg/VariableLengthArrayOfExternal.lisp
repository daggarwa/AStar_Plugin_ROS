; Auto-generated. Do not edit!


(cl:in-package test_roscpp-msg)


;//! \htmlinclude VariableLengthArrayOfExternal.msg.html

(cl:defclass <VariableLengthArrayOfExternal> (roslisp-msg-protocol:ros-message)
  ((a
    :reader a
    :initarg :a
    :type (cl:vector rosgraph_msgs-msg:Log)
   :initform (cl:make-array 0 :element-type 'rosgraph_msgs-msg:Log :initial-element (cl:make-instance 'rosgraph_msgs-msg:Log))))
)

(cl:defclass VariableLengthArrayOfExternal (<VariableLengthArrayOfExternal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VariableLengthArrayOfExternal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VariableLengthArrayOfExternal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name test_roscpp-msg:<VariableLengthArrayOfExternal> is deprecated: use test_roscpp-msg:VariableLengthArrayOfExternal instead.")))

(cl:ensure-generic-function 'a-val :lambda-list '(m))
(cl:defmethod a-val ((m <VariableLengthArrayOfExternal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_roscpp-msg:a-val is deprecated.  Use test_roscpp-msg:a instead.")
  (a m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VariableLengthArrayOfExternal>) ostream)
  "Serializes a message object of type '<VariableLengthArrayOfExternal>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'a))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'a))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VariableLengthArrayOfExternal>) istream)
  "Deserializes a message object of type '<VariableLengthArrayOfExternal>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'a) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'a)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'rosgraph_msgs-msg:Log))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VariableLengthArrayOfExternal>)))
  "Returns string type for a message object of type '<VariableLengthArrayOfExternal>"
  "test_roscpp/VariableLengthArrayOfExternal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VariableLengthArrayOfExternal)))
  "Returns string type for a message object of type 'VariableLengthArrayOfExternal"
  "test_roscpp/VariableLengthArrayOfExternal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VariableLengthArrayOfExternal>)))
  "Returns md5sum for a message object of type '<VariableLengthArrayOfExternal>"
  "cc431047757f431ecd2754e03aa592f8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VariableLengthArrayOfExternal)))
  "Returns md5sum for a message object of type 'VariableLengthArrayOfExternal"
  "cc431047757f431ecd2754e03aa592f8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VariableLengthArrayOfExternal>)))
  "Returns full string definition for message of type '<VariableLengthArrayOfExternal>"
  (cl:format cl:nil "# This comment has \"quotes\" in it~%rosgraph_msgs/Log[] a~%================================================================================~%MSG: rosgraph_msgs/Log~%##~%## Severity level constants~%##~%byte DEBUG=1 #debug level~%byte INFO=2  #general level~%byte WARN=4  #warning level~%byte ERROR=8 #error level~%byte FATAL=16 #fatal/critical level~%##~%## Fields~%##~%Header header~%byte level~%string name # name of the node~%string msg # message ~%string file # file the message came from~%string function # function the message came from~%uint32 line # line the message came from~%string[] topics # topic names that the node publishes~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VariableLengthArrayOfExternal)))
  "Returns full string definition for message of type 'VariableLengthArrayOfExternal"
  (cl:format cl:nil "# This comment has \"quotes\" in it~%rosgraph_msgs/Log[] a~%================================================================================~%MSG: rosgraph_msgs/Log~%##~%## Severity level constants~%##~%byte DEBUG=1 #debug level~%byte INFO=2  #general level~%byte WARN=4  #warning level~%byte ERROR=8 #error level~%byte FATAL=16 #fatal/critical level~%##~%## Fields~%##~%Header header~%byte level~%string name # name of the node~%string msg # message ~%string file # file the message came from~%string function # function the message came from~%uint32 line # line the message came from~%string[] topics # topic names that the node publishes~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VariableLengthArrayOfExternal>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'a) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VariableLengthArrayOfExternal>))
  "Converts a ROS message object to a list"
  (cl:list 'VariableLengthArrayOfExternal
    (cl:cons ':a (a msg))
))
