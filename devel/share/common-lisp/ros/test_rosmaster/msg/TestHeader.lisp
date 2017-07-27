; Auto-generated. Do not edit!


(cl:in-package test_rosmaster-msg)


;//! \htmlinclude TestHeader.msg.html

(cl:defclass <TestHeader> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (caller_id
    :reader caller_id
    :initarg :caller_id
    :type cl:string
    :initform "")
   (orig_caller_id
    :reader orig_caller_id
    :initarg :orig_caller_id
    :type cl:string
    :initform "")
   (auto_header
    :reader auto_header
    :initarg :auto_header
    :type cl:integer
    :initform 0))
)

(cl:defclass TestHeader (<TestHeader>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TestHeader>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TestHeader)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name test_rosmaster-msg:<TestHeader> is deprecated: use test_rosmaster-msg:TestHeader instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <TestHeader>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_rosmaster-msg:header-val is deprecated.  Use test_rosmaster-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'caller_id-val :lambda-list '(m))
(cl:defmethod caller_id-val ((m <TestHeader>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_rosmaster-msg:caller_id-val is deprecated.  Use test_rosmaster-msg:caller_id instead.")
  (caller_id m))

(cl:ensure-generic-function 'orig_caller_id-val :lambda-list '(m))
(cl:defmethod orig_caller_id-val ((m <TestHeader>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_rosmaster-msg:orig_caller_id-val is deprecated.  Use test_rosmaster-msg:orig_caller_id instead.")
  (orig_caller_id m))

(cl:ensure-generic-function 'auto_header-val :lambda-list '(m))
(cl:defmethod auto_header-val ((m <TestHeader>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_rosmaster-msg:auto_header-val is deprecated.  Use test_rosmaster-msg:auto_header instead.")
  (auto_header m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TestHeader>) ostream)
  "Serializes a message object of type '<TestHeader>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'caller_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'caller_id))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'orig_caller_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'orig_caller_id))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'auto_header)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TestHeader>) istream)
  "Deserializes a message object of type '<TestHeader>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'caller_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'caller_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'orig_caller_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'orig_caller_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'auto_header)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TestHeader>)))
  "Returns string type for a message object of type '<TestHeader>"
  "test_rosmaster/TestHeader")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TestHeader)))
  "Returns string type for a message object of type 'TestHeader"
  "test_rosmaster/TestHeader")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TestHeader>)))
  "Returns md5sum for a message object of type '<TestHeader>"
  "4b5a00f536da2f756ba6aebcf795a967")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TestHeader)))
  "Returns md5sum for a message object of type 'TestHeader"
  "4b5a00f536da2f756ba6aebcf795a967")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TestHeader>)))
  "Returns full string definition for message of type '<TestHeader>"
  (cl:format cl:nil "Header header~%~%# caller_id of most recent node to send this message~%string caller_id~%# caller_id of the original node to send this message~%string orig_caller_id~%~%byte auto_header # autoset header on response~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TestHeader)))
  "Returns full string definition for message of type 'TestHeader"
  (cl:format cl:nil "Header header~%~%# caller_id of most recent node to send this message~%string caller_id~%# caller_id of the original node to send this message~%string orig_caller_id~%~%byte auto_header # autoset header on response~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TestHeader>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'caller_id))
     4 (cl:length (cl:slot-value msg 'orig_caller_id))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TestHeader>))
  "Converts a ROS message object to a list"
  (cl:list 'TestHeader
    (cl:cons ':header (header msg))
    (cl:cons ':caller_id (caller_id msg))
    (cl:cons ':orig_caller_id (orig_caller_id msg))
    (cl:cons ':auto_header (auto_header msg))
))
