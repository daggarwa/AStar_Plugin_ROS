; Auto-generated. Do not edit!


(cl:in-package test_roscpp-msg)


;//! \htmlinclude FixedLengthArrayOfExternal.msg.html

(cl:defclass <FixedLengthArrayOfExternal> (roslisp-msg-protocol:ros-message)
  ((a
    :reader a
    :initarg :a
    :type (cl:vector rosgraph_msgs-msg:Log)
   :initform (cl:make-array 4 :element-type 'rosgraph_msgs-msg:Log :initial-element (cl:make-instance 'rosgraph_msgs-msg:Log))))
)

(cl:defclass FixedLengthArrayOfExternal (<FixedLengthArrayOfExternal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FixedLengthArrayOfExternal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FixedLengthArrayOfExternal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name test_roscpp-msg:<FixedLengthArrayOfExternal> is deprecated: use test_roscpp-msg:FixedLengthArrayOfExternal instead.")))

(cl:ensure-generic-function 'a-val :lambda-list '(m))
(cl:defmethod a-val ((m <FixedLengthArrayOfExternal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_roscpp-msg:a-val is deprecated.  Use test_roscpp-msg:a instead.")
  (a m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FixedLengthArrayOfExternal>) ostream)
  "Serializes a message object of type '<FixedLengthArrayOfExternal>"
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'a))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FixedLengthArrayOfExternal>) istream)
  "Deserializes a message object of type '<FixedLengthArrayOfExternal>"
  (cl:setf (cl:slot-value msg 'a) (cl:make-array 4))
  (cl:let ((vals (cl:slot-value msg 'a)))
    (cl:dotimes (i 4)
    (cl:setf (cl:aref vals i) (cl:make-instance 'rosgraph_msgs-msg:Log))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FixedLengthArrayOfExternal>)))
  "Returns string type for a message object of type '<FixedLengthArrayOfExternal>"
  "test_roscpp/FixedLengthArrayOfExternal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FixedLengthArrayOfExternal)))
  "Returns string type for a message object of type 'FixedLengthArrayOfExternal"
  "test_roscpp/FixedLengthArrayOfExternal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FixedLengthArrayOfExternal>)))
  "Returns md5sum for a message object of type '<FixedLengthArrayOfExternal>"
  "cc431047757f431ecd2754e03aa592f8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FixedLengthArrayOfExternal)))
  "Returns md5sum for a message object of type 'FixedLengthArrayOfExternal"
  "cc431047757f431ecd2754e03aa592f8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FixedLengthArrayOfExternal>)))
  "Returns full string definition for message of type '<FixedLengthArrayOfExternal>"
  (cl:format cl:nil "# This comment has \"quotes\" in it and \\slashes\\~%rosgraph_msgs/Log[4] a~%================================================================================~%MSG: rosgraph_msgs/Log~%##~%## Severity level constants~%##~%byte DEBUG=1 #debug level~%byte INFO=2  #general level~%byte WARN=4  #warning level~%byte ERROR=8 #error level~%byte FATAL=16 #fatal/critical level~%##~%## Fields~%##~%Header header~%byte level~%string name # name of the node~%string msg # message ~%string file # file the message came from~%string function # function the message came from~%uint32 line # line the message came from~%string[] topics # topic names that the node publishes~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FixedLengthArrayOfExternal)))
  "Returns full string definition for message of type 'FixedLengthArrayOfExternal"
  (cl:format cl:nil "# This comment has \"quotes\" in it and \\slashes\\~%rosgraph_msgs/Log[4] a~%================================================================================~%MSG: rosgraph_msgs/Log~%##~%## Severity level constants~%##~%byte DEBUG=1 #debug level~%byte INFO=2  #general level~%byte WARN=4  #warning level~%byte ERROR=8 #error level~%byte FATAL=16 #fatal/critical level~%##~%## Fields~%##~%Header header~%byte level~%string name # name of the node~%string msg # message ~%string file # file the message came from~%string function # function the message came from~%uint32 line # line the message came from~%string[] topics # topic names that the node publishes~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FixedLengthArrayOfExternal>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'a) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FixedLengthArrayOfExternal>))
  "Converts a ROS message object to a list"
  (cl:list 'FixedLengthArrayOfExternal
    (cl:cons ':a (a msg))
))
