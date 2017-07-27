; Auto-generated. Do not edit!


(cl:in-package roscpp-srv)


;//! \htmlinclude SetLoggerLevel-request.msg.html

(cl:defclass <SetLoggerLevel-request> (roslisp-msg-protocol:ros-message)
  ((logger
    :reader logger
    :initarg :logger
    :type cl:string
    :initform "")
   (level
    :reader level
    :initarg :level
    :type cl:string
    :initform ""))
)

(cl:defclass SetLoggerLevel-request (<SetLoggerLevel-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetLoggerLevel-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetLoggerLevel-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roscpp-srv:<SetLoggerLevel-request> is deprecated: use roscpp-srv:SetLoggerLevel-request instead.")))

(cl:ensure-generic-function 'logger-val :lambda-list '(m))
(cl:defmethod logger-val ((m <SetLoggerLevel-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roscpp-srv:logger-val is deprecated.  Use roscpp-srv:logger instead.")
  (logger m))

(cl:ensure-generic-function 'level-val :lambda-list '(m))
(cl:defmethod level-val ((m <SetLoggerLevel-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roscpp-srv:level-val is deprecated.  Use roscpp-srv:level instead.")
  (level m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetLoggerLevel-request>) ostream)
  "Serializes a message object of type '<SetLoggerLevel-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'logger))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'logger))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'level))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'level))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetLoggerLevel-request>) istream)
  "Deserializes a message object of type '<SetLoggerLevel-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'logger) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'logger) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'level) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'level) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetLoggerLevel-request>)))
  "Returns string type for a service object of type '<SetLoggerLevel-request>"
  "roscpp/SetLoggerLevelRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetLoggerLevel-request)))
  "Returns string type for a service object of type 'SetLoggerLevel-request"
  "roscpp/SetLoggerLevelRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetLoggerLevel-request>)))
  "Returns md5sum for a message object of type '<SetLoggerLevel-request>"
  "51da076440d78ca1684d36c868df61ea")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetLoggerLevel-request)))
  "Returns md5sum for a message object of type 'SetLoggerLevel-request"
  "51da076440d78ca1684d36c868df61ea")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetLoggerLevel-request>)))
  "Returns full string definition for message of type '<SetLoggerLevel-request>"
  (cl:format cl:nil "string logger~%string level~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetLoggerLevel-request)))
  "Returns full string definition for message of type 'SetLoggerLevel-request"
  (cl:format cl:nil "string logger~%string level~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetLoggerLevel-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'logger))
     4 (cl:length (cl:slot-value msg 'level))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetLoggerLevel-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetLoggerLevel-request
    (cl:cons ':logger (logger msg))
    (cl:cons ':level (level msg))
))
;//! \htmlinclude SetLoggerLevel-response.msg.html

(cl:defclass <SetLoggerLevel-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SetLoggerLevel-response (<SetLoggerLevel-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetLoggerLevel-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetLoggerLevel-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roscpp-srv:<SetLoggerLevel-response> is deprecated: use roscpp-srv:SetLoggerLevel-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetLoggerLevel-response>) ostream)
  "Serializes a message object of type '<SetLoggerLevel-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetLoggerLevel-response>) istream)
  "Deserializes a message object of type '<SetLoggerLevel-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetLoggerLevel-response>)))
  "Returns string type for a service object of type '<SetLoggerLevel-response>"
  "roscpp/SetLoggerLevelResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetLoggerLevel-response)))
  "Returns string type for a service object of type 'SetLoggerLevel-response"
  "roscpp/SetLoggerLevelResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetLoggerLevel-response>)))
  "Returns md5sum for a message object of type '<SetLoggerLevel-response>"
  "51da076440d78ca1684d36c868df61ea")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetLoggerLevel-response)))
  "Returns md5sum for a message object of type 'SetLoggerLevel-response"
  "51da076440d78ca1684d36c868df61ea")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetLoggerLevel-response>)))
  "Returns full string definition for message of type '<SetLoggerLevel-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetLoggerLevel-response)))
  "Returns full string definition for message of type 'SetLoggerLevel-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetLoggerLevel-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetLoggerLevel-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetLoggerLevel-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetLoggerLevel)))
  'SetLoggerLevel-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetLoggerLevel)))
  'SetLoggerLevel-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetLoggerLevel)))
  "Returns string type for a service object of type '<SetLoggerLevel>"
  "roscpp/SetLoggerLevel")