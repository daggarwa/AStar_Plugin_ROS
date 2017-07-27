; Auto-generated. Do not edit!


(cl:in-package topic_tools-srv)


;//! \htmlinclude DemuxList-request.msg.html

(cl:defclass <DemuxList-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass DemuxList-request (<DemuxList-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DemuxList-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DemuxList-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name topic_tools-srv:<DemuxList-request> is deprecated: use topic_tools-srv:DemuxList-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DemuxList-request>) ostream)
  "Serializes a message object of type '<DemuxList-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DemuxList-request>) istream)
  "Deserializes a message object of type '<DemuxList-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DemuxList-request>)))
  "Returns string type for a service object of type '<DemuxList-request>"
  "topic_tools/DemuxListRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DemuxList-request)))
  "Returns string type for a service object of type 'DemuxList-request"
  "topic_tools/DemuxListRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DemuxList-request>)))
  "Returns md5sum for a message object of type '<DemuxList-request>"
  "b0eef9a05d4e829092fc2f2c3c2aad3d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DemuxList-request)))
  "Returns md5sum for a message object of type 'DemuxList-request"
  "b0eef9a05d4e829092fc2f2c3c2aad3d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DemuxList-request>)))
  "Returns full string definition for message of type '<DemuxList-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DemuxList-request)))
  "Returns full string definition for message of type 'DemuxList-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DemuxList-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DemuxList-request>))
  "Converts a ROS message object to a list"
  (cl:list 'DemuxList-request
))
;//! \htmlinclude DemuxList-response.msg.html

(cl:defclass <DemuxList-response> (roslisp-msg-protocol:ros-message)
  ((topics
    :reader topics
    :initarg :topics
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass DemuxList-response (<DemuxList-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DemuxList-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DemuxList-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name topic_tools-srv:<DemuxList-response> is deprecated: use topic_tools-srv:DemuxList-response instead.")))

(cl:ensure-generic-function 'topics-val :lambda-list '(m))
(cl:defmethod topics-val ((m <DemuxList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader topic_tools-srv:topics-val is deprecated.  Use topic_tools-srv:topics instead.")
  (topics m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DemuxList-response>) ostream)
  "Serializes a message object of type '<DemuxList-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'topics))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'topics))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DemuxList-response>) istream)
  "Deserializes a message object of type '<DemuxList-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'topics) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'topics)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DemuxList-response>)))
  "Returns string type for a service object of type '<DemuxList-response>"
  "topic_tools/DemuxListResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DemuxList-response)))
  "Returns string type for a service object of type 'DemuxList-response"
  "topic_tools/DemuxListResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DemuxList-response>)))
  "Returns md5sum for a message object of type '<DemuxList-response>"
  "b0eef9a05d4e829092fc2f2c3c2aad3d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DemuxList-response)))
  "Returns md5sum for a message object of type 'DemuxList-response"
  "b0eef9a05d4e829092fc2f2c3c2aad3d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DemuxList-response>)))
  "Returns full string definition for message of type '<DemuxList-response>"
  (cl:format cl:nil "string[] topics~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DemuxList-response)))
  "Returns full string definition for message of type 'DemuxList-response"
  (cl:format cl:nil "string[] topics~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DemuxList-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'topics) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DemuxList-response>))
  "Converts a ROS message object to a list"
  (cl:list 'DemuxList-response
    (cl:cons ':topics (topics msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'DemuxList)))
  'DemuxList-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'DemuxList)))
  'DemuxList-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DemuxList)))
  "Returns string type for a service object of type '<DemuxList>"
  "topic_tools/DemuxList")