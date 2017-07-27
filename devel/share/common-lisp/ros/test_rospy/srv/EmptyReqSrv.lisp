; Auto-generated. Do not edit!


(cl:in-package test_rospy-srv)


;//! \htmlinclude EmptyReqSrv-request.msg.html

(cl:defclass <EmptyReqSrv-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass EmptyReqSrv-request (<EmptyReqSrv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EmptyReqSrv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EmptyReqSrv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name test_rospy-srv:<EmptyReqSrv-request> is deprecated: use test_rospy-srv:EmptyReqSrv-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EmptyReqSrv-request>) ostream)
  "Serializes a message object of type '<EmptyReqSrv-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EmptyReqSrv-request>) istream)
  "Deserializes a message object of type '<EmptyReqSrv-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EmptyReqSrv-request>)))
  "Returns string type for a service object of type '<EmptyReqSrv-request>"
  "test_rospy/EmptyReqSrvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EmptyReqSrv-request)))
  "Returns string type for a service object of type 'EmptyReqSrv-request"
  "test_rospy/EmptyReqSrvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EmptyReqSrv-request>)))
  "Returns md5sum for a message object of type '<EmptyReqSrv-request>"
  "1280578cbe4073963a4321b9248d566e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EmptyReqSrv-request)))
  "Returns md5sum for a message object of type 'EmptyReqSrv-request"
  "1280578cbe4073963a4321b9248d566e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EmptyReqSrv-request>)))
  "Returns full string definition for message of type '<EmptyReqSrv-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EmptyReqSrv-request)))
  "Returns full string definition for message of type 'EmptyReqSrv-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EmptyReqSrv-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EmptyReqSrv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'EmptyReqSrv-request
))
;//! \htmlinclude EmptyReqSrv-response.msg.html

(cl:defclass <EmptyReqSrv-response> (roslisp-msg-protocol:ros-message)
  ((fake_secret
    :reader fake_secret
    :initarg :fake_secret
    :type cl:integer
    :initform 0))
)

(cl:defclass EmptyReqSrv-response (<EmptyReqSrv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EmptyReqSrv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EmptyReqSrv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name test_rospy-srv:<EmptyReqSrv-response> is deprecated: use test_rospy-srv:EmptyReqSrv-response instead.")))

(cl:ensure-generic-function 'fake_secret-val :lambda-list '(m))
(cl:defmethod fake_secret-val ((m <EmptyReqSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_rospy-srv:fake_secret-val is deprecated.  Use test_rospy-srv:fake_secret instead.")
  (fake_secret m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EmptyReqSrv-response>) ostream)
  "Serializes a message object of type '<EmptyReqSrv-response>"
  (cl:let* ((signed (cl:slot-value msg 'fake_secret)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EmptyReqSrv-response>) istream)
  "Deserializes a message object of type '<EmptyReqSrv-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'fake_secret) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EmptyReqSrv-response>)))
  "Returns string type for a service object of type '<EmptyReqSrv-response>"
  "test_rospy/EmptyReqSrvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EmptyReqSrv-response)))
  "Returns string type for a service object of type 'EmptyReqSrv-response"
  "test_rospy/EmptyReqSrvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EmptyReqSrv-response>)))
  "Returns md5sum for a message object of type '<EmptyReqSrv-response>"
  "1280578cbe4073963a4321b9248d566e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EmptyReqSrv-response)))
  "Returns md5sum for a message object of type 'EmptyReqSrv-response"
  "1280578cbe4073963a4321b9248d566e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EmptyReqSrv-response>)))
  "Returns full string definition for message of type '<EmptyReqSrv-response>"
  (cl:format cl:nil "int32 fake_secret~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EmptyReqSrv-response)))
  "Returns full string definition for message of type 'EmptyReqSrv-response"
  (cl:format cl:nil "int32 fake_secret~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EmptyReqSrv-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EmptyReqSrv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'EmptyReqSrv-response
    (cl:cons ':fake_secret (fake_secret msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'EmptyReqSrv)))
  'EmptyReqSrv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'EmptyReqSrv)))
  'EmptyReqSrv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EmptyReqSrv)))
  "Returns string type for a service object of type '<EmptyReqSrv>"
  "test_rospy/EmptyReqSrv")