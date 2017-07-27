; Auto-generated. Do not edit!


(cl:in-package test_roscpp-srv)


;//! \htmlinclude TestStringString-request.msg.html

(cl:defclass <TestStringString-request> (roslisp-msg-protocol:ros-message)
  ((str
    :reader str
    :initarg :str
    :type cl:string
    :initform ""))
)

(cl:defclass TestStringString-request (<TestStringString-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TestStringString-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TestStringString-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name test_roscpp-srv:<TestStringString-request> is deprecated: use test_roscpp-srv:TestStringString-request instead.")))

(cl:ensure-generic-function 'str-val :lambda-list '(m))
(cl:defmethod str-val ((m <TestStringString-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_roscpp-srv:str-val is deprecated.  Use test_roscpp-srv:str instead.")
  (str m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TestStringString-request>) ostream)
  "Serializes a message object of type '<TestStringString-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'str))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'str))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TestStringString-request>) istream)
  "Deserializes a message object of type '<TestStringString-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'str) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'str) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TestStringString-request>)))
  "Returns string type for a service object of type '<TestStringString-request>"
  "test_roscpp/TestStringStringRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TestStringString-request)))
  "Returns string type for a service object of type 'TestStringString-request"
  "test_roscpp/TestStringStringRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TestStringString-request>)))
  "Returns md5sum for a message object of type '<TestStringString-request>"
  "671f8e4998eaec79f1c47e339dfd527b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TestStringString-request)))
  "Returns md5sum for a message object of type 'TestStringString-request"
  "671f8e4998eaec79f1c47e339dfd527b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TestStringString-request>)))
  "Returns full string definition for message of type '<TestStringString-request>"
  (cl:format cl:nil "string str~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TestStringString-request)))
  "Returns full string definition for message of type 'TestStringString-request"
  (cl:format cl:nil "string str~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TestStringString-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'str))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TestStringString-request>))
  "Converts a ROS message object to a list"
  (cl:list 'TestStringString-request
    (cl:cons ':str (str msg))
))
;//! \htmlinclude TestStringString-response.msg.html

(cl:defclass <TestStringString-response> (roslisp-msg-protocol:ros-message)
  ((str
    :reader str
    :initarg :str
    :type cl:string
    :initform ""))
)

(cl:defclass TestStringString-response (<TestStringString-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TestStringString-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TestStringString-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name test_roscpp-srv:<TestStringString-response> is deprecated: use test_roscpp-srv:TestStringString-response instead.")))

(cl:ensure-generic-function 'str-val :lambda-list '(m))
(cl:defmethod str-val ((m <TestStringString-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_roscpp-srv:str-val is deprecated.  Use test_roscpp-srv:str instead.")
  (str m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TestStringString-response>) ostream)
  "Serializes a message object of type '<TestStringString-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'str))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'str))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TestStringString-response>) istream)
  "Deserializes a message object of type '<TestStringString-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'str) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'str) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TestStringString-response>)))
  "Returns string type for a service object of type '<TestStringString-response>"
  "test_roscpp/TestStringStringResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TestStringString-response)))
  "Returns string type for a service object of type 'TestStringString-response"
  "test_roscpp/TestStringStringResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TestStringString-response>)))
  "Returns md5sum for a message object of type '<TestStringString-response>"
  "671f8e4998eaec79f1c47e339dfd527b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TestStringString-response)))
  "Returns md5sum for a message object of type 'TestStringString-response"
  "671f8e4998eaec79f1c47e339dfd527b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TestStringString-response>)))
  "Returns full string definition for message of type '<TestStringString-response>"
  (cl:format cl:nil "string str~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TestStringString-response)))
  "Returns full string definition for message of type 'TestStringString-response"
  (cl:format cl:nil "string str~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TestStringString-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'str))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TestStringString-response>))
  "Converts a ROS message object to a list"
  (cl:list 'TestStringString-response
    (cl:cons ':str (str msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'TestStringString)))
  'TestStringString-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'TestStringString)))
  'TestStringString-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TestStringString)))
  "Returns string type for a service object of type '<TestStringString>"
  "test_roscpp/TestStringString")