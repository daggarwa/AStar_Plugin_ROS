; Auto-generated. Do not edit!


(cl:in-package test_rospy-msg)


;//! \htmlinclude HeaderHeaderVal.msg.html

(cl:defclass <HeaderHeaderVal> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (val
    :reader val
    :initarg :val
    :type test_rospy-msg:HeaderVal
    :initform (cl:make-instance 'test_rospy-msg:HeaderVal)))
)

(cl:defclass HeaderHeaderVal (<HeaderHeaderVal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HeaderHeaderVal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HeaderHeaderVal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name test_rospy-msg:<HeaderHeaderVal> is deprecated: use test_rospy-msg:HeaderHeaderVal instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <HeaderHeaderVal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_rospy-msg:header-val is deprecated.  Use test_rospy-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'val-val :lambda-list '(m))
(cl:defmethod val-val ((m <HeaderHeaderVal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_rospy-msg:val-val is deprecated.  Use test_rospy-msg:val instead.")
  (val m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HeaderHeaderVal>) ostream)
  "Serializes a message object of type '<HeaderHeaderVal>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'val) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HeaderHeaderVal>) istream)
  "Deserializes a message object of type '<HeaderHeaderVal>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'val) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HeaderHeaderVal>)))
  "Returns string type for a message object of type '<HeaderHeaderVal>"
  "test_rospy/HeaderHeaderVal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HeaderHeaderVal)))
  "Returns string type for a message object of type 'HeaderHeaderVal"
  "test_rospy/HeaderHeaderVal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HeaderHeaderVal>)))
  "Returns md5sum for a message object of type '<HeaderHeaderVal>"
  "ae71c365b9bafbc4abaf37150c80a6b5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HeaderHeaderVal)))
  "Returns md5sum for a message object of type 'HeaderHeaderVal"
  "ae71c365b9bafbc4abaf37150c80a6b5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HeaderHeaderVal>)))
  "Returns full string definition for message of type '<HeaderHeaderVal>"
  (cl:format cl:nil "Header header~%HeaderVal val~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: test_rospy/HeaderVal~%Header header~%string val~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HeaderHeaderVal)))
  "Returns full string definition for message of type 'HeaderHeaderVal"
  (cl:format cl:nil "Header header~%HeaderVal val~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: test_rospy/HeaderVal~%Header header~%string val~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HeaderHeaderVal>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'val))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HeaderHeaderVal>))
  "Converts a ROS message object to a list"
  (cl:list 'HeaderHeaderVal
    (cl:cons ':header (header msg))
    (cl:cons ':val (val msg))
))
