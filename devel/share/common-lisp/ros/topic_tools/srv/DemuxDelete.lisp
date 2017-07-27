; Auto-generated. Do not edit!


(cl:in-package topic_tools-srv)


;//! \htmlinclude DemuxDelete-request.msg.html

(cl:defclass <DemuxDelete-request> (roslisp-msg-protocol:ros-message)
  ((topic
    :reader topic
    :initarg :topic
    :type cl:string
    :initform ""))
)

(cl:defclass DemuxDelete-request (<DemuxDelete-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DemuxDelete-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DemuxDelete-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name topic_tools-srv:<DemuxDelete-request> is deprecated: use topic_tools-srv:DemuxDelete-request instead.")))

(cl:ensure-generic-function 'topic-val :lambda-list '(m))
(cl:defmethod topic-val ((m <DemuxDelete-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader topic_tools-srv:topic-val is deprecated.  Use topic_tools-srv:topic instead.")
  (topic m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DemuxDelete-request>) ostream)
  "Serializes a message object of type '<DemuxDelete-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'topic))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'topic))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DemuxDelete-request>) istream)
  "Deserializes a message object of type '<DemuxDelete-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DemuxDelete-request>)))
  "Returns string type for a service object of type '<DemuxDelete-request>"
  "topic_tools/DemuxDeleteRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DemuxDelete-request)))
  "Returns string type for a service object of type 'DemuxDelete-request"
  "topic_tools/DemuxDeleteRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DemuxDelete-request>)))
  "Returns md5sum for a message object of type '<DemuxDelete-request>"
  "d8f94bae31b356b24d0427f80426d0c3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DemuxDelete-request)))
  "Returns md5sum for a message object of type 'DemuxDelete-request"
  "d8f94bae31b356b24d0427f80426d0c3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DemuxDelete-request>)))
  "Returns full string definition for message of type '<DemuxDelete-request>"
  (cl:format cl:nil "string topic~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DemuxDelete-request)))
  "Returns full string definition for message of type 'DemuxDelete-request"
  (cl:format cl:nil "string topic~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DemuxDelete-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'topic))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DemuxDelete-request>))
  "Converts a ROS message object to a list"
  (cl:list 'DemuxDelete-request
    (cl:cons ':topic (topic msg))
))
;//! \htmlinclude DemuxDelete-response.msg.html

(cl:defclass <DemuxDelete-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass DemuxDelete-response (<DemuxDelete-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DemuxDelete-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DemuxDelete-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name topic_tools-srv:<DemuxDelete-response> is deprecated: use topic_tools-srv:DemuxDelete-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DemuxDelete-response>) ostream)
  "Serializes a message object of type '<DemuxDelete-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DemuxDelete-response>) istream)
  "Deserializes a message object of type '<DemuxDelete-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DemuxDelete-response>)))
  "Returns string type for a service object of type '<DemuxDelete-response>"
  "topic_tools/DemuxDeleteResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DemuxDelete-response)))
  "Returns string type for a service object of type 'DemuxDelete-response"
  "topic_tools/DemuxDeleteResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DemuxDelete-response>)))
  "Returns md5sum for a message object of type '<DemuxDelete-response>"
  "d8f94bae31b356b24d0427f80426d0c3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DemuxDelete-response)))
  "Returns md5sum for a message object of type 'DemuxDelete-response"
  "d8f94bae31b356b24d0427f80426d0c3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DemuxDelete-response>)))
  "Returns full string definition for message of type '<DemuxDelete-response>"
  (cl:format cl:nil "~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DemuxDelete-response)))
  "Returns full string definition for message of type 'DemuxDelete-response"
  (cl:format cl:nil "~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DemuxDelete-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DemuxDelete-response>))
  "Converts a ROS message object to a list"
  (cl:list 'DemuxDelete-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'DemuxDelete)))
  'DemuxDelete-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'DemuxDelete)))
  'DemuxDelete-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DemuxDelete)))
  "Returns string type for a service object of type '<DemuxDelete>"
  "topic_tools/DemuxDelete")