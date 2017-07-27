; Auto-generated. Do not edit!


(cl:in-package topic_tools-srv)


;//! \htmlinclude MuxSelect-request.msg.html

(cl:defclass <MuxSelect-request> (roslisp-msg-protocol:ros-message)
  ((topic
    :reader topic
    :initarg :topic
    :type cl:string
    :initform ""))
)

(cl:defclass MuxSelect-request (<MuxSelect-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MuxSelect-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MuxSelect-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name topic_tools-srv:<MuxSelect-request> is deprecated: use topic_tools-srv:MuxSelect-request instead.")))

(cl:ensure-generic-function 'topic-val :lambda-list '(m))
(cl:defmethod topic-val ((m <MuxSelect-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader topic_tools-srv:topic-val is deprecated.  Use topic_tools-srv:topic instead.")
  (topic m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MuxSelect-request>) ostream)
  "Serializes a message object of type '<MuxSelect-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'topic))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'topic))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MuxSelect-request>) istream)
  "Deserializes a message object of type '<MuxSelect-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MuxSelect-request>)))
  "Returns string type for a service object of type '<MuxSelect-request>"
  "topic_tools/MuxSelectRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MuxSelect-request)))
  "Returns string type for a service object of type 'MuxSelect-request"
  "topic_tools/MuxSelectRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MuxSelect-request>)))
  "Returns md5sum for a message object of type '<MuxSelect-request>"
  "053052240ca985e1f2eedbb0dae9b1f7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MuxSelect-request)))
  "Returns md5sum for a message object of type 'MuxSelect-request"
  "053052240ca985e1f2eedbb0dae9b1f7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MuxSelect-request>)))
  "Returns full string definition for message of type '<MuxSelect-request>"
  (cl:format cl:nil "string topic~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MuxSelect-request)))
  "Returns full string definition for message of type 'MuxSelect-request"
  (cl:format cl:nil "string topic~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MuxSelect-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'topic))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MuxSelect-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MuxSelect-request
    (cl:cons ':topic (topic msg))
))
;//! \htmlinclude MuxSelect-response.msg.html

(cl:defclass <MuxSelect-response> (roslisp-msg-protocol:ros-message)
  ((prev_topic
    :reader prev_topic
    :initarg :prev_topic
    :type cl:string
    :initform ""))
)

(cl:defclass MuxSelect-response (<MuxSelect-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MuxSelect-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MuxSelect-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name topic_tools-srv:<MuxSelect-response> is deprecated: use topic_tools-srv:MuxSelect-response instead.")))

(cl:ensure-generic-function 'prev_topic-val :lambda-list '(m))
(cl:defmethod prev_topic-val ((m <MuxSelect-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader topic_tools-srv:prev_topic-val is deprecated.  Use topic_tools-srv:prev_topic instead.")
  (prev_topic m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MuxSelect-response>) ostream)
  "Serializes a message object of type '<MuxSelect-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'prev_topic))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'prev_topic))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MuxSelect-response>) istream)
  "Deserializes a message object of type '<MuxSelect-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'prev_topic) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'prev_topic) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MuxSelect-response>)))
  "Returns string type for a service object of type '<MuxSelect-response>"
  "topic_tools/MuxSelectResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MuxSelect-response)))
  "Returns string type for a service object of type 'MuxSelect-response"
  "topic_tools/MuxSelectResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MuxSelect-response>)))
  "Returns md5sum for a message object of type '<MuxSelect-response>"
  "053052240ca985e1f2eedbb0dae9b1f7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MuxSelect-response)))
  "Returns md5sum for a message object of type 'MuxSelect-response"
  "053052240ca985e1f2eedbb0dae9b1f7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MuxSelect-response>)))
  "Returns full string definition for message of type '<MuxSelect-response>"
  (cl:format cl:nil "string prev_topic~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MuxSelect-response)))
  "Returns full string definition for message of type 'MuxSelect-response"
  (cl:format cl:nil "string prev_topic~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MuxSelect-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'prev_topic))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MuxSelect-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MuxSelect-response
    (cl:cons ':prev_topic (prev_topic msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MuxSelect)))
  'MuxSelect-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MuxSelect)))
  'MuxSelect-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MuxSelect)))
  "Returns string type for a service object of type '<MuxSelect>"
  "topic_tools/MuxSelect")