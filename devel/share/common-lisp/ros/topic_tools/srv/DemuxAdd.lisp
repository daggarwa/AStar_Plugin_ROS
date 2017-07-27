; Auto-generated. Do not edit!


(cl:in-package topic_tools-srv)


;//! \htmlinclude DemuxAdd-request.msg.html

(cl:defclass <DemuxAdd-request> (roslisp-msg-protocol:ros-message)
  ((topic
    :reader topic
    :initarg :topic
    :type cl:string
    :initform ""))
)

(cl:defclass DemuxAdd-request (<DemuxAdd-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DemuxAdd-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DemuxAdd-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name topic_tools-srv:<DemuxAdd-request> is deprecated: use topic_tools-srv:DemuxAdd-request instead.")))

(cl:ensure-generic-function 'topic-val :lambda-list '(m))
(cl:defmethod topic-val ((m <DemuxAdd-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader topic_tools-srv:topic-val is deprecated.  Use topic_tools-srv:topic instead.")
  (topic m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DemuxAdd-request>) ostream)
  "Serializes a message object of type '<DemuxAdd-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'topic))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'topic))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DemuxAdd-request>) istream)
  "Deserializes a message object of type '<DemuxAdd-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DemuxAdd-request>)))
  "Returns string type for a service object of type '<DemuxAdd-request>"
  "topic_tools/DemuxAddRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DemuxAdd-request)))
  "Returns string type for a service object of type 'DemuxAdd-request"
  "topic_tools/DemuxAddRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DemuxAdd-request>)))
  "Returns md5sum for a message object of type '<DemuxAdd-request>"
  "d8f94bae31b356b24d0427f80426d0c3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DemuxAdd-request)))
  "Returns md5sum for a message object of type 'DemuxAdd-request"
  "d8f94bae31b356b24d0427f80426d0c3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DemuxAdd-request>)))
  "Returns full string definition for message of type '<DemuxAdd-request>"
  (cl:format cl:nil "string topic~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DemuxAdd-request)))
  "Returns full string definition for message of type 'DemuxAdd-request"
  (cl:format cl:nil "string topic~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DemuxAdd-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'topic))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DemuxAdd-request>))
  "Converts a ROS message object to a list"
  (cl:list 'DemuxAdd-request
    (cl:cons ':topic (topic msg))
))
;//! \htmlinclude DemuxAdd-response.msg.html

(cl:defclass <DemuxAdd-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass DemuxAdd-response (<DemuxAdd-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DemuxAdd-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DemuxAdd-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name topic_tools-srv:<DemuxAdd-response> is deprecated: use topic_tools-srv:DemuxAdd-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DemuxAdd-response>) ostream)
  "Serializes a message object of type '<DemuxAdd-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DemuxAdd-response>) istream)
  "Deserializes a message object of type '<DemuxAdd-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DemuxAdd-response>)))
  "Returns string type for a service object of type '<DemuxAdd-response>"
  "topic_tools/DemuxAddResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DemuxAdd-response)))
  "Returns string type for a service object of type 'DemuxAdd-response"
  "topic_tools/DemuxAddResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DemuxAdd-response>)))
  "Returns md5sum for a message object of type '<DemuxAdd-response>"
  "d8f94bae31b356b24d0427f80426d0c3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DemuxAdd-response)))
  "Returns md5sum for a message object of type 'DemuxAdd-response"
  "d8f94bae31b356b24d0427f80426d0c3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DemuxAdd-response>)))
  "Returns full string definition for message of type '<DemuxAdd-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DemuxAdd-response)))
  "Returns full string definition for message of type 'DemuxAdd-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DemuxAdd-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DemuxAdd-response>))
  "Converts a ROS message object to a list"
  (cl:list 'DemuxAdd-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'DemuxAdd)))
  'DemuxAdd-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'DemuxAdd)))
  'DemuxAdd-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DemuxAdd)))
  "Returns string type for a service object of type '<DemuxAdd>"
  "topic_tools/DemuxAdd")