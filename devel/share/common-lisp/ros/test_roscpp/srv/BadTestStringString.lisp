; Auto-generated. Do not edit!


(cl:in-package test_roscpp-srv)


;//! \htmlinclude BadTestStringString-request.msg.html

(cl:defclass <BadTestStringString-request> (roslisp-msg-protocol:ros-message)
  ((strbad
    :reader strbad
    :initarg :strbad
    :type cl:string
    :initform ""))
)

(cl:defclass BadTestStringString-request (<BadTestStringString-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BadTestStringString-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BadTestStringString-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name test_roscpp-srv:<BadTestStringString-request> is deprecated: use test_roscpp-srv:BadTestStringString-request instead.")))

(cl:ensure-generic-function 'strbad-val :lambda-list '(m))
(cl:defmethod strbad-val ((m <BadTestStringString-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_roscpp-srv:strbad-val is deprecated.  Use test_roscpp-srv:strbad instead.")
  (strbad m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BadTestStringString-request>) ostream)
  "Serializes a message object of type '<BadTestStringString-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'strbad))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'strbad))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BadTestStringString-request>) istream)
  "Deserializes a message object of type '<BadTestStringString-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'strbad) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'strbad) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BadTestStringString-request>)))
  "Returns string type for a service object of type '<BadTestStringString-request>"
  "test_roscpp/BadTestStringStringRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BadTestStringString-request)))
  "Returns string type for a service object of type 'BadTestStringString-request"
  "test_roscpp/BadTestStringStringRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BadTestStringString-request>)))
  "Returns md5sum for a message object of type '<BadTestStringString-request>"
  "6b193467bc2d41be616d6b0e985e2a63")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BadTestStringString-request)))
  "Returns md5sum for a message object of type 'BadTestStringString-request"
  "6b193467bc2d41be616d6b0e985e2a63")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BadTestStringString-request>)))
  "Returns full string definition for message of type '<BadTestStringString-request>"
  (cl:format cl:nil "~%string strbad~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BadTestStringString-request)))
  "Returns full string definition for message of type 'BadTestStringString-request"
  (cl:format cl:nil "~%string strbad~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BadTestStringString-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'strbad))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BadTestStringString-request>))
  "Converts a ROS message object to a list"
  (cl:list 'BadTestStringString-request
    (cl:cons ':strbad (strbad msg))
))
;//! \htmlinclude BadTestStringString-response.msg.html

(cl:defclass <BadTestStringString-response> (roslisp-msg-protocol:ros-message)
  ((str
    :reader str
    :initarg :str
    :type cl:string
    :initform ""))
)

(cl:defclass BadTestStringString-response (<BadTestStringString-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BadTestStringString-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BadTestStringString-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name test_roscpp-srv:<BadTestStringString-response> is deprecated: use test_roscpp-srv:BadTestStringString-response instead.")))

(cl:ensure-generic-function 'str-val :lambda-list '(m))
(cl:defmethod str-val ((m <BadTestStringString-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_roscpp-srv:str-val is deprecated.  Use test_roscpp-srv:str instead.")
  (str m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BadTestStringString-response>) ostream)
  "Serializes a message object of type '<BadTestStringString-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'str))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'str))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BadTestStringString-response>) istream)
  "Deserializes a message object of type '<BadTestStringString-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BadTestStringString-response>)))
  "Returns string type for a service object of type '<BadTestStringString-response>"
  "test_roscpp/BadTestStringStringResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BadTestStringString-response)))
  "Returns string type for a service object of type 'BadTestStringString-response"
  "test_roscpp/BadTestStringStringResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BadTestStringString-response>)))
  "Returns md5sum for a message object of type '<BadTestStringString-response>"
  "6b193467bc2d41be616d6b0e985e2a63")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BadTestStringString-response)))
  "Returns md5sum for a message object of type 'BadTestStringString-response"
  "6b193467bc2d41be616d6b0e985e2a63")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BadTestStringString-response>)))
  "Returns full string definition for message of type '<BadTestStringString-response>"
  (cl:format cl:nil "string str~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BadTestStringString-response)))
  "Returns full string definition for message of type 'BadTestStringString-response"
  (cl:format cl:nil "string str~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BadTestStringString-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'str))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BadTestStringString-response>))
  "Converts a ROS message object to a list"
  (cl:list 'BadTestStringString-response
    (cl:cons ':str (str msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'BadTestStringString)))
  'BadTestStringString-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'BadTestStringString)))
  'BadTestStringString-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BadTestStringString)))
  "Returns string type for a service object of type '<BadTestStringString>"
  "test_roscpp/BadTestStringString")