; Auto-generated. Do not edit!


(cl:in-package topic_tools-srv)


;//! \htmlinclude MuxAdd-request.msg.html

(cl:defclass <MuxAdd-request> (roslisp-msg-protocol:ros-message)
  ((topic
    :reader topic
    :initarg :topic
    :type cl:string
    :initform ""))
)

(cl:defclass MuxAdd-request (<MuxAdd-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MuxAdd-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MuxAdd-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name topic_tools-srv:<MuxAdd-request> is deprecated: use topic_tools-srv:MuxAdd-request instead.")))

(cl:ensure-generic-function 'topic-val :lambda-list '(m))
(cl:defmethod topic-val ((m <MuxAdd-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader topic_tools-srv:topic-val is deprecated.  Use topic_tools-srv:topic instead.")
  (topic m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MuxAdd-request>) ostream)
  "Serializes a message object of type '<MuxAdd-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'topic))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'topic))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MuxAdd-request>) istream)
  "Deserializes a message object of type '<MuxAdd-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'topic) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'topic) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MuxAdd-request>)))
  "Returns string type for a service object of type '<MuxAdd-request>"
  "topic_tools/MuxAddRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MuxAdd-request)))
  "Returns string type for a service object of type 'MuxAdd-request"
  "topic_tools/MuxAddRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MuxAdd-request>)))
  "Returns md5sum for a message object of type '<MuxAdd-request>"
  "d8f94bae31b356b24d0427f80426d0c3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MuxAdd-request)))
  "Returns md5sum for a message object of type 'MuxAdd-request"
  "d8f94bae31b356b24d0427f80426d0c3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MuxAdd-request>)))
  "Returns full string definition for message of type '<MuxAdd-request>"
  (cl:format cl:nil "string topic~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MuxAdd-request)))
  "Returns full string definition for message of type 'MuxAdd-request"
  (cl:format cl:nil "string topic~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MuxAdd-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'topic))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MuxAdd-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MuxAdd-request
    (cl:cons ':topic (topic msg))
))
;//! \htmlinclude MuxAdd-response.msg.html

(cl:defclass <MuxAdd-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass MuxAdd-response (<MuxAdd-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MuxAdd-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MuxAdd-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name topic_tools-srv:<MuxAdd-response> is deprecated: use topic_tools-srv:MuxAdd-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MuxAdd-response>) ostream)
  "Serializes a message object of type '<MuxAdd-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MuxAdd-response>) istream)
  "Deserializes a message object of type '<MuxAdd-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MuxAdd-response>)))
  "Returns string type for a service object of type '<MuxAdd-response>"
  "topic_tools/MuxAddResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MuxAdd-response)))
  "Returns string type for a service object of type 'MuxAdd-response"
  "topic_tools/MuxAddResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MuxAdd-response>)))
  "Returns md5sum for a message object of type '<MuxAdd-response>"
  "d8f94bae31b356b24d0427f80426d0c3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MuxAdd-response)))
  "Returns md5sum for a message object of type 'MuxAdd-response"
  "d8f94bae31b356b24d0427f80426d0c3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MuxAdd-response>)))
  "Returns full string definition for message of type '<MuxAdd-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MuxAdd-response)))
  "Returns full string definition for message of type 'MuxAdd-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MuxAdd-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MuxAdd-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MuxAdd-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MuxAdd)))
  'MuxAdd-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MuxAdd)))
  'MuxAdd-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MuxAdd)))
  "Returns string type for a service object of type '<MuxAdd>"
  "topic_tools/MuxAdd")