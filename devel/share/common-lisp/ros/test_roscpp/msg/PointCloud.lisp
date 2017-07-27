; Auto-generated. Do not edit!


(cl:in-package test_roscpp-msg)


;//! \htmlinclude PointCloud.msg.html

(cl:defclass <PointCloud> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (pts
    :reader pts
    :initarg :pts
    :type (cl:vector test_roscpp-msg:Point32)
   :initform (cl:make-array 0 :element-type 'test_roscpp-msg:Point32 :initial-element (cl:make-instance 'test_roscpp-msg:Point32)))
   (chan
    :reader chan
    :initarg :chan
    :type (cl:vector test_roscpp-msg:ChannelFloat32)
   :initform (cl:make-array 0 :element-type 'test_roscpp-msg:ChannelFloat32 :initial-element (cl:make-instance 'test_roscpp-msg:ChannelFloat32))))
)

(cl:defclass PointCloud (<PointCloud>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PointCloud>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PointCloud)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name test_roscpp-msg:<PointCloud> is deprecated: use test_roscpp-msg:PointCloud instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <PointCloud>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_roscpp-msg:header-val is deprecated.  Use test_roscpp-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'pts-val :lambda-list '(m))
(cl:defmethod pts-val ((m <PointCloud>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_roscpp-msg:pts-val is deprecated.  Use test_roscpp-msg:pts instead.")
  (pts m))

(cl:ensure-generic-function 'chan-val :lambda-list '(m))
(cl:defmethod chan-val ((m <PointCloud>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_roscpp-msg:chan-val is deprecated.  Use test_roscpp-msg:chan instead.")
  (chan m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PointCloud>) ostream)
  "Serializes a message object of type '<PointCloud>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'pts))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'pts))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'chan))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'chan))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PointCloud>) istream)
  "Deserializes a message object of type '<PointCloud>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'pts) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'pts)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'test_roscpp-msg:Point32))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'chan) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'chan)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'test_roscpp-msg:ChannelFloat32))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PointCloud>)))
  "Returns string type for a message object of type '<PointCloud>"
  "test_roscpp/PointCloud")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PointCloud)))
  "Returns string type for a message object of type 'PointCloud"
  "test_roscpp/PointCloud")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PointCloud>)))
  "Returns md5sum for a message object of type '<PointCloud>"
  "c47b5cedd2b77d241b27547ed7624840")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PointCloud)))
  "Returns md5sum for a message object of type 'PointCloud"
  "c47b5cedd2b77d241b27547ed7624840")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PointCloud>)))
  "Returns full string definition for message of type '<PointCloud>"
  (cl:format cl:nil "Header header~%Point32[] pts~%ChannelFloat32[] chan~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: test_roscpp/Point32~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: test_roscpp/ChannelFloat32~%string name~%float32[] vals~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PointCloud)))
  "Returns full string definition for message of type 'PointCloud"
  (cl:format cl:nil "Header header~%Point32[] pts~%ChannelFloat32[] chan~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: test_roscpp/Point32~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: test_roscpp/ChannelFloat32~%string name~%float32[] vals~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PointCloud>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'pts) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'chan) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PointCloud>))
  "Converts a ROS message object to a list"
  (cl:list 'PointCloud
    (cl:cons ':header (header msg))
    (cl:cons ':pts (pts msg))
    (cl:cons ':chan (chan msg))
))
