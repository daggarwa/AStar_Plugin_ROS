; Auto-generated. Do not edit!


(cl:in-package topic_tools-srv)


;//! \htmlinclude MuxDelete-request.msg.html

(cl:defclass <MuxDelete-request> (roslisp-msg-protocol:ros-message)
  ((topic
    :reader topic
    :initarg :topic
    :type cl:string
    :initform ""))
)

(cl:defclass MuxDelete-request (<MuxDelete-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MuxDelete-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MuxDelete-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name topic_tools-srv:<MuxDelete-request> is deprecated: use topic_tools-srv:MuxDelete-request instead.")))

(cl:ensure-generic-function 'topic-val :lambda-list '(m))
(cl:defmethod topic-val ((m <MuxDelete-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader topic_tools-srv:topic-val is deprecated.  Use topic_tools-srv:topic instead.")
  (topic m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MuxDelete-request>) ostream)
  "Serializes a message object of type '<MuxDelete-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'topic))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'topic))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MuxDelete-request>) istream)
  "Deserializes a message object of type '<MuxDelete-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MuxDelete-request>)))
  "Returns string type for a service object of type '<MuxDelete-request>"
  "topic_tools/MuxDeleteRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MuxDelete-request)))
  "Returns string type for a service object of type 'MuxDelete-request"
  "topic_tools/MuxDeleteRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MuxDelete-request>)))
  "Returns md5sum for a message object of type '<MuxDelete-request>"
  "d8f94bae31b356b24d0427f80426d0c3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MuxDelete-request)))
  "Returns md5sum for a message object of type 'MuxDelete-request"
  "d8f94bae31b356b24d0427f80426d0c3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MuxDelete-request>)))
  "Returns full string definition for message of type '<MuxDelete-request>"
  (cl:format cl:nil "string topic~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MuxDelete-request)))
  "Returns full string definition for message of type 'MuxDelete-request"
  (cl:format cl:nil "string topic~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MuxDelete-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'topic))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MuxDelete-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MuxDelete-request
    (cl:cons ':topic (topic msg))
))
;//! \htmlinclude MuxDelete-response.msg.html

(cl:defclass <MuxDelete-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass MuxDelete-response (<MuxDelete-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MuxDelete-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MuxDelete-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name topic_tools-srv:<MuxDelete-response> is deprecated: use topic_tools-srv:MuxDelete-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MuxDelete-response>) ostream)
  "Serializes a message object of type '<MuxDelete-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MuxDelete-response>) istream)
  "Deserializes a message object of type '<MuxDelete-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MuxDelete-response>)))
  "Returns string type for a service object of type '<MuxDelete-response>"
  "topic_tools/MuxDeleteResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MuxDelete-response)))
  "Returns string type for a service object of type 'MuxDelete-response"
  "topic_tools/MuxDeleteResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MuxDelete-response>)))
  "Returns md5sum for a message object of type '<MuxDelete-response>"
  "d8f94bae31b356b24d0427f80426d0c3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MuxDelete-response)))
  "Returns md5sum for a message object of type 'MuxDelete-response"
  "d8f94bae31b356b24d0427f80426d0c3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MuxDelete-response>)))
  "Returns full string definition for message of type '<MuxDelete-response>"
  (cl:format cl:nil "~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MuxDelete-response)))
  "Returns full string definition for message of type 'MuxDelete-response"
  (cl:format cl:nil "~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MuxDelete-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MuxDelete-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MuxDelete-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MuxDelete)))
  'MuxDelete-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MuxDelete)))
  'MuxDelete-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MuxDelete)))
  "Returns string type for a service object of type '<MuxDelete>"
  "topic_tools/MuxDelete")