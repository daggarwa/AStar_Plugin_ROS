; Auto-generated. Do not edit!


(cl:in-package test_rosservice-srv)


;//! \htmlinclude HeaderEcho-request.msg.html

(cl:defclass <HeaderEcho-request> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header)))
)

(cl:defclass HeaderEcho-request (<HeaderEcho-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HeaderEcho-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HeaderEcho-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name test_rosservice-srv:<HeaderEcho-request> is deprecated: use test_rosservice-srv:HeaderEcho-request instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <HeaderEcho-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_rosservice-srv:header-val is deprecated.  Use test_rosservice-srv:header instead.")
  (header m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HeaderEcho-request>) ostream)
  "Serializes a message object of type '<HeaderEcho-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HeaderEcho-request>) istream)
  "Deserializes a message object of type '<HeaderEcho-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HeaderEcho-request>)))
  "Returns string type for a service object of type '<HeaderEcho-request>"
  "test_rosservice/HeaderEchoRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HeaderEcho-request)))
  "Returns string type for a service object of type 'HeaderEcho-request"
  "test_rosservice/HeaderEchoRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HeaderEcho-request>)))
  "Returns md5sum for a message object of type '<HeaderEcho-request>"
  "3c64cc5ac7e6cbcec5fa7b5ed330b0a6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HeaderEcho-request)))
  "Returns md5sum for a message object of type 'HeaderEcho-request"
  "3c64cc5ac7e6cbcec5fa7b5ed330b0a6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HeaderEcho-request>)))
  "Returns full string definition for message of type '<HeaderEcho-request>"
  (cl:format cl:nil "Header header~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HeaderEcho-request)))
  "Returns full string definition for message of type 'HeaderEcho-request"
  (cl:format cl:nil "Header header~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HeaderEcho-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HeaderEcho-request>))
  "Converts a ROS message object to a list"
  (cl:list 'HeaderEcho-request
    (cl:cons ':header (header msg))
))
;//! \htmlinclude HeaderEcho-response.msg.html

(cl:defclass <HeaderEcho-response> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header)))
)

(cl:defclass HeaderEcho-response (<HeaderEcho-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HeaderEcho-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HeaderEcho-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name test_rosservice-srv:<HeaderEcho-response> is deprecated: use test_rosservice-srv:HeaderEcho-response instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <HeaderEcho-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_rosservice-srv:header-val is deprecated.  Use test_rosservice-srv:header instead.")
  (header m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HeaderEcho-response>) ostream)
  "Serializes a message object of type '<HeaderEcho-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HeaderEcho-response>) istream)
  "Deserializes a message object of type '<HeaderEcho-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HeaderEcho-response>)))
  "Returns string type for a service object of type '<HeaderEcho-response>"
  "test_rosservice/HeaderEchoResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HeaderEcho-response)))
  "Returns string type for a service object of type 'HeaderEcho-response"
  "test_rosservice/HeaderEchoResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HeaderEcho-response>)))
  "Returns md5sum for a message object of type '<HeaderEcho-response>"
  "3c64cc5ac7e6cbcec5fa7b5ed330b0a6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HeaderEcho-response)))
  "Returns md5sum for a message object of type 'HeaderEcho-response"
  "3c64cc5ac7e6cbcec5fa7b5ed330b0a6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HeaderEcho-response>)))
  "Returns full string definition for message of type '<HeaderEcho-response>"
  (cl:format cl:nil "Header header~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HeaderEcho-response)))
  "Returns full string definition for message of type 'HeaderEcho-response"
  (cl:format cl:nil "Header header~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HeaderEcho-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HeaderEcho-response>))
  "Converts a ROS message object to a list"
  (cl:list 'HeaderEcho-response
    (cl:cons ':header (header msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'HeaderEcho)))
  'HeaderEcho-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'HeaderEcho)))
  'HeaderEcho-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HeaderEcho)))
  "Returns string type for a service object of type '<HeaderEcho>"
  "test_rosservice/HeaderEcho")