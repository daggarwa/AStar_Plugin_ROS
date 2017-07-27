; Auto-generated. Do not edit!


(cl:in-package topic_tools-srv)


;//! \htmlinclude DemuxSelect-request.msg.html

(cl:defclass <DemuxSelect-request> (roslisp-msg-protocol:ros-message)
  ((topic
    :reader topic
    :initarg :topic
    :type cl:string
    :initform ""))
)

(cl:defclass DemuxSelect-request (<DemuxSelect-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DemuxSelect-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DemuxSelect-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name topic_tools-srv:<DemuxSelect-request> is deprecated: use topic_tools-srv:DemuxSelect-request instead.")))

(cl:ensure-generic-function 'topic-val :lambda-list '(m))
(cl:defmethod topic-val ((m <DemuxSelect-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader topic_tools-srv:topic-val is deprecated.  Use topic_tools-srv:topic instead.")
  (topic m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DemuxSelect-request>) ostream)
  "Serializes a message object of type '<DemuxSelect-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'topic))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'topic))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DemuxSelect-request>) istream)
  "Deserializes a message object of type '<DemuxSelect-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DemuxSelect-request>)))
  "Returns string type for a service object of type '<DemuxSelect-request>"
  "topic_tools/DemuxSelectRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DemuxSelect-request)))
  "Returns string type for a service object of type 'DemuxSelect-request"
  "topic_tools/DemuxSelectRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DemuxSelect-request>)))
  "Returns md5sum for a message object of type '<DemuxSelect-request>"
  "053052240ca985e1f2eedbb0dae9b1f7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DemuxSelect-request)))
  "Returns md5sum for a message object of type 'DemuxSelect-request"
  "053052240ca985e1f2eedbb0dae9b1f7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DemuxSelect-request>)))
  "Returns full string definition for message of type '<DemuxSelect-request>"
  (cl:format cl:nil "string topic~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DemuxSelect-request)))
  "Returns full string definition for message of type 'DemuxSelect-request"
  (cl:format cl:nil "string topic~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DemuxSelect-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'topic))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DemuxSelect-request>))
  "Converts a ROS message object to a list"
  (cl:list 'DemuxSelect-request
    (cl:cons ':topic (topic msg))
))
;//! \htmlinclude DemuxSelect-response.msg.html

(cl:defclass <DemuxSelect-response> (roslisp-msg-protocol:ros-message)
  ((prev_topic
    :reader prev_topic
    :initarg :prev_topic
    :type cl:string
    :initform ""))
)

(cl:defclass DemuxSelect-response (<DemuxSelect-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DemuxSelect-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DemuxSelect-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name topic_tools-srv:<DemuxSelect-response> is deprecated: use topic_tools-srv:DemuxSelect-response instead.")))

(cl:ensure-generic-function 'prev_topic-val :lambda-list '(m))
(cl:defmethod prev_topic-val ((m <DemuxSelect-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader topic_tools-srv:prev_topic-val is deprecated.  Use topic_tools-srv:prev_topic instead.")
  (prev_topic m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DemuxSelect-response>) ostream)
  "Serializes a message object of type '<DemuxSelect-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'prev_topic))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'prev_topic))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DemuxSelect-response>) istream)
  "Deserializes a message object of type '<DemuxSelect-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DemuxSelect-response>)))
  "Returns string type for a service object of type '<DemuxSelect-response>"
  "topic_tools/DemuxSelectResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DemuxSelect-response)))
  "Returns string type for a service object of type 'DemuxSelect-response"
  "topic_tools/DemuxSelectResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DemuxSelect-response>)))
  "Returns md5sum for a message object of type '<DemuxSelect-response>"
  "053052240ca985e1f2eedbb0dae9b1f7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DemuxSelect-response)))
  "Returns md5sum for a message object of type 'DemuxSelect-response"
  "053052240ca985e1f2eedbb0dae9b1f7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DemuxSelect-response>)))
  "Returns full string definition for message of type '<DemuxSelect-response>"
  (cl:format cl:nil "string prev_topic~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DemuxSelect-response)))
  "Returns full string definition for message of type 'DemuxSelect-response"
  (cl:format cl:nil "string prev_topic~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DemuxSelect-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'prev_topic))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DemuxSelect-response>))
  "Converts a ROS message object to a list"
  (cl:list 'DemuxSelect-response
    (cl:cons ':prev_topic (prev_topic msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'DemuxSelect)))
  'DemuxSelect-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'DemuxSelect)))
  'DemuxSelect-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DemuxSelect)))
  "Returns string type for a service object of type '<DemuxSelect>"
  "topic_tools/DemuxSelect")