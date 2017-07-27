; Auto-generated. Do not edit!


(cl:in-package roscpp-srv)


;//! \htmlinclude GetLoggers-request.msg.html

(cl:defclass <GetLoggers-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetLoggers-request (<GetLoggers-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetLoggers-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetLoggers-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roscpp-srv:<GetLoggers-request> is deprecated: use roscpp-srv:GetLoggers-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetLoggers-request>) ostream)
  "Serializes a message object of type '<GetLoggers-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetLoggers-request>) istream)
  "Deserializes a message object of type '<GetLoggers-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetLoggers-request>)))
  "Returns string type for a service object of type '<GetLoggers-request>"
  "roscpp/GetLoggersRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetLoggers-request)))
  "Returns string type for a service object of type 'GetLoggers-request"
  "roscpp/GetLoggersRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetLoggers-request>)))
  "Returns md5sum for a message object of type '<GetLoggers-request>"
  "32e97e85527d4678a8f9279894bb64b0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetLoggers-request)))
  "Returns md5sum for a message object of type 'GetLoggers-request"
  "32e97e85527d4678a8f9279894bb64b0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetLoggers-request>)))
  "Returns full string definition for message of type '<GetLoggers-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetLoggers-request)))
  "Returns full string definition for message of type 'GetLoggers-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetLoggers-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetLoggers-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetLoggers-request
))
;//! \htmlinclude GetLoggers-response.msg.html

(cl:defclass <GetLoggers-response> (roslisp-msg-protocol:ros-message)
  ((loggers
    :reader loggers
    :initarg :loggers
    :type (cl:vector roscpp-msg:Logger)
   :initform (cl:make-array 0 :element-type 'roscpp-msg:Logger :initial-element (cl:make-instance 'roscpp-msg:Logger))))
)

(cl:defclass GetLoggers-response (<GetLoggers-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetLoggers-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetLoggers-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roscpp-srv:<GetLoggers-response> is deprecated: use roscpp-srv:GetLoggers-response instead.")))

(cl:ensure-generic-function 'loggers-val :lambda-list '(m))
(cl:defmethod loggers-val ((m <GetLoggers-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roscpp-srv:loggers-val is deprecated.  Use roscpp-srv:loggers instead.")
  (loggers m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetLoggers-response>) ostream)
  "Serializes a message object of type '<GetLoggers-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'loggers))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'loggers))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetLoggers-response>) istream)
  "Deserializes a message object of type '<GetLoggers-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'loggers) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'loggers)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'roscpp-msg:Logger))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetLoggers-response>)))
  "Returns string type for a service object of type '<GetLoggers-response>"
  "roscpp/GetLoggersResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetLoggers-response)))
  "Returns string type for a service object of type 'GetLoggers-response"
  "roscpp/GetLoggersResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetLoggers-response>)))
  "Returns md5sum for a message object of type '<GetLoggers-response>"
  "32e97e85527d4678a8f9279894bb64b0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetLoggers-response)))
  "Returns md5sum for a message object of type 'GetLoggers-response"
  "32e97e85527d4678a8f9279894bb64b0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetLoggers-response>)))
  "Returns full string definition for message of type '<GetLoggers-response>"
  (cl:format cl:nil "Logger[] loggers~%~%================================================================================~%MSG: roscpp/Logger~%string name~%string level~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetLoggers-response)))
  "Returns full string definition for message of type 'GetLoggers-response"
  (cl:format cl:nil "Logger[] loggers~%~%================================================================================~%MSG: roscpp/Logger~%string name~%string level~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetLoggers-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'loggers) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetLoggers-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetLoggers-response
    (cl:cons ':loggers (loggers msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetLoggers)))
  'GetLoggers-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetLoggers)))
  'GetLoggers-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetLoggers)))
  "Returns string type for a service object of type '<GetLoggers>"
  "roscpp/GetLoggers")