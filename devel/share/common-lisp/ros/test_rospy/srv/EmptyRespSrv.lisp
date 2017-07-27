; Auto-generated. Do not edit!


(cl:in-package test_rospy-srv)


;//! \htmlinclude EmptyRespSrv-request.msg.html

(cl:defclass <EmptyRespSrv-request> (roslisp-msg-protocol:ros-message)
  ((fake_secret
    :reader fake_secret
    :initarg :fake_secret
    :type cl:integer
    :initform 0))
)

(cl:defclass EmptyRespSrv-request (<EmptyRespSrv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EmptyRespSrv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EmptyRespSrv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name test_rospy-srv:<EmptyRespSrv-request> is deprecated: use test_rospy-srv:EmptyRespSrv-request instead.")))

(cl:ensure-generic-function 'fake_secret-val :lambda-list '(m))
(cl:defmethod fake_secret-val ((m <EmptyRespSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_rospy-srv:fake_secret-val is deprecated.  Use test_rospy-srv:fake_secret instead.")
  (fake_secret m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EmptyRespSrv-request>) ostream)
  "Serializes a message object of type '<EmptyRespSrv-request>"
  (cl:let* ((signed (cl:slot-value msg 'fake_secret)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EmptyRespSrv-request>) istream)
  "Deserializes a message object of type '<EmptyRespSrv-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'fake_secret) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EmptyRespSrv-request>)))
  "Returns string type for a service object of type '<EmptyRespSrv-request>"
  "test_rospy/EmptyRespSrvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EmptyRespSrv-request)))
  "Returns string type for a service object of type 'EmptyRespSrv-request"
  "test_rospy/EmptyRespSrvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EmptyRespSrv-request>)))
  "Returns md5sum for a message object of type '<EmptyRespSrv-request>"
  "1280578cbe4073963a4321b9248d566e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EmptyRespSrv-request)))
  "Returns md5sum for a message object of type 'EmptyRespSrv-request"
  "1280578cbe4073963a4321b9248d566e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EmptyRespSrv-request>)))
  "Returns full string definition for message of type '<EmptyRespSrv-request>"
  (cl:format cl:nil "int32 fake_secret~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EmptyRespSrv-request)))
  "Returns full string definition for message of type 'EmptyRespSrv-request"
  (cl:format cl:nil "int32 fake_secret~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EmptyRespSrv-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EmptyRespSrv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'EmptyRespSrv-request
    (cl:cons ':fake_secret (fake_secret msg))
))
;//! \htmlinclude EmptyRespSrv-response.msg.html

(cl:defclass <EmptyRespSrv-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass EmptyRespSrv-response (<EmptyRespSrv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EmptyRespSrv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EmptyRespSrv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name test_rospy-srv:<EmptyRespSrv-response> is deprecated: use test_rospy-srv:EmptyRespSrv-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EmptyRespSrv-response>) ostream)
  "Serializes a message object of type '<EmptyRespSrv-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EmptyRespSrv-response>) istream)
  "Deserializes a message object of type '<EmptyRespSrv-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EmptyRespSrv-response>)))
  "Returns string type for a service object of type '<EmptyRespSrv-response>"
  "test_rospy/EmptyRespSrvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EmptyRespSrv-response)))
  "Returns string type for a service object of type 'EmptyRespSrv-response"
  "test_rospy/EmptyRespSrvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EmptyRespSrv-response>)))
  "Returns md5sum for a message object of type '<EmptyRespSrv-response>"
  "1280578cbe4073963a4321b9248d566e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EmptyRespSrv-response)))
  "Returns md5sum for a message object of type 'EmptyRespSrv-response"
  "1280578cbe4073963a4321b9248d566e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EmptyRespSrv-response>)))
  "Returns full string definition for message of type '<EmptyRespSrv-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EmptyRespSrv-response)))
  "Returns full string definition for message of type 'EmptyRespSrv-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EmptyRespSrv-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EmptyRespSrv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'EmptyRespSrv-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'EmptyRespSrv)))
  'EmptyRespSrv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'EmptyRespSrv)))
  'EmptyRespSrv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EmptyRespSrv)))
  "Returns string type for a service object of type '<EmptyRespSrv>"
  "test_rospy/EmptyRespSrv")