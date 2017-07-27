; Auto-generated. Do not edit!


(cl:in-package test_rosmaster-srv)


;//! \htmlinclude RossrvA-request.msg.html

(cl:defclass <RossrvA-request> (roslisp-msg-protocol:ros-message)
  ((areq
    :reader areq
    :initarg :areq
    :type cl:integer
    :initform 0))
)

(cl:defclass RossrvA-request (<RossrvA-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RossrvA-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RossrvA-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name test_rosmaster-srv:<RossrvA-request> is deprecated: use test_rosmaster-srv:RossrvA-request instead.")))

(cl:ensure-generic-function 'areq-val :lambda-list '(m))
(cl:defmethod areq-val ((m <RossrvA-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_rosmaster-srv:areq-val is deprecated.  Use test_rosmaster-srv:areq instead.")
  (areq m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RossrvA-request>) ostream)
  "Serializes a message object of type '<RossrvA-request>"
  (cl:let* ((signed (cl:slot-value msg 'areq)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RossrvA-request>) istream)
  "Deserializes a message object of type '<RossrvA-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'areq) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RossrvA-request>)))
  "Returns string type for a service object of type '<RossrvA-request>"
  "test_rosmaster/RossrvARequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RossrvA-request)))
  "Returns string type for a service object of type 'RossrvA-request"
  "test_rosmaster/RossrvARequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RossrvA-request>)))
  "Returns md5sum for a message object of type '<RossrvA-request>"
  "76c968b761b29d4bcc0a15cf4316a1e7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RossrvA-request)))
  "Returns md5sum for a message object of type 'RossrvA-request"
  "76c968b761b29d4bcc0a15cf4316a1e7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RossrvA-request>)))
  "Returns full string definition for message of type '<RossrvA-request>"
  (cl:format cl:nil "int32 areq~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RossrvA-request)))
  "Returns full string definition for message of type 'RossrvA-request"
  (cl:format cl:nil "int32 areq~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RossrvA-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RossrvA-request>))
  "Converts a ROS message object to a list"
  (cl:list 'RossrvA-request
    (cl:cons ':areq (areq msg))
))
;//! \htmlinclude RossrvA-response.msg.html

(cl:defclass <RossrvA-response> (roslisp-msg-protocol:ros-message)
  ((aresp
    :reader aresp
    :initarg :aresp
    :type cl:integer
    :initform 0))
)

(cl:defclass RossrvA-response (<RossrvA-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RossrvA-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RossrvA-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name test_rosmaster-srv:<RossrvA-response> is deprecated: use test_rosmaster-srv:RossrvA-response instead.")))

(cl:ensure-generic-function 'aresp-val :lambda-list '(m))
(cl:defmethod aresp-val ((m <RossrvA-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_rosmaster-srv:aresp-val is deprecated.  Use test_rosmaster-srv:aresp instead.")
  (aresp m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RossrvA-response>) ostream)
  "Serializes a message object of type '<RossrvA-response>"
  (cl:let* ((signed (cl:slot-value msg 'aresp)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RossrvA-response>) istream)
  "Deserializes a message object of type '<RossrvA-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'aresp) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RossrvA-response>)))
  "Returns string type for a service object of type '<RossrvA-response>"
  "test_rosmaster/RossrvAResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RossrvA-response)))
  "Returns string type for a service object of type 'RossrvA-response"
  "test_rosmaster/RossrvAResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RossrvA-response>)))
  "Returns md5sum for a message object of type '<RossrvA-response>"
  "76c968b761b29d4bcc0a15cf4316a1e7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RossrvA-response)))
  "Returns md5sum for a message object of type 'RossrvA-response"
  "76c968b761b29d4bcc0a15cf4316a1e7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RossrvA-response>)))
  "Returns full string definition for message of type '<RossrvA-response>"
  (cl:format cl:nil "int32 aresp~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RossrvA-response)))
  "Returns full string definition for message of type 'RossrvA-response"
  (cl:format cl:nil "int32 aresp~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RossrvA-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RossrvA-response>))
  "Converts a ROS message object to a list"
  (cl:list 'RossrvA-response
    (cl:cons ':aresp (aresp msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'RossrvA)))
  'RossrvA-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'RossrvA)))
  'RossrvA-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RossrvA)))
  "Returns string type for a service object of type '<RossrvA>"
  "test_rosmaster/RossrvA")