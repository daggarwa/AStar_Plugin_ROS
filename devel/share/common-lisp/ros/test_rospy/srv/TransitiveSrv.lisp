; Auto-generated. Do not edit!


(cl:in-package test_rospy-srv)


;//! \htmlinclude TransitiveSrv-request.msg.html

(cl:defclass <TransitiveSrv-request> (roslisp-msg-protocol:ros-message)
  ((msg
    :reader msg
    :initarg :msg
    :type test_rospy-msg:TransitiveMsg1
    :initform (cl:make-instance 'test_rospy-msg:TransitiveMsg1)))
)

(cl:defclass TransitiveSrv-request (<TransitiveSrv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TransitiveSrv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TransitiveSrv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name test_rospy-srv:<TransitiveSrv-request> is deprecated: use test_rospy-srv:TransitiveSrv-request instead.")))

(cl:ensure-generic-function 'msg-val :lambda-list '(m))
(cl:defmethod msg-val ((m <TransitiveSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_rospy-srv:msg-val is deprecated.  Use test_rospy-srv:msg instead.")
  (msg m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TransitiveSrv-request>) ostream)
  "Serializes a message object of type '<TransitiveSrv-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'msg) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TransitiveSrv-request>) istream)
  "Deserializes a message object of type '<TransitiveSrv-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'msg) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TransitiveSrv-request>)))
  "Returns string type for a service object of type '<TransitiveSrv-request>"
  "test_rospy/TransitiveSrvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TransitiveSrv-request)))
  "Returns string type for a service object of type 'TransitiveSrv-request"
  "test_rospy/TransitiveSrvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TransitiveSrv-request>)))
  "Returns md5sum for a message object of type '<TransitiveSrv-request>"
  "8b7918ee2b81eaf825f4c70de011f6fa")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TransitiveSrv-request)))
  "Returns md5sum for a message object of type 'TransitiveSrv-request"
  "8b7918ee2b81eaf825f4c70de011f6fa")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TransitiveSrv-request>)))
  "Returns full string definition for message of type '<TransitiveSrv-request>"
  (cl:format cl:nil "test_rospy/TransitiveMsg1 msg~%~%================================================================================~%MSG: test_rospy/TransitiveMsg1~%TransitiveMsg2 msg2~%~%~%================================================================================~%MSG: test_rospy/TransitiveMsg2~%test_rosmaster/Composite data~%~%================================================================================~%MSG: test_rosmaster/Composite~%# composite message. required for testing import calculation in generators~%CompositeA a~%CompositeB b~%~%================================================================================~%MSG: test_rosmaster/CompositeA~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: test_rosmaster/CompositeB~%# copy of geometry_msgs/Point for testing~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TransitiveSrv-request)))
  "Returns full string definition for message of type 'TransitiveSrv-request"
  (cl:format cl:nil "test_rospy/TransitiveMsg1 msg~%~%================================================================================~%MSG: test_rospy/TransitiveMsg1~%TransitiveMsg2 msg2~%~%~%================================================================================~%MSG: test_rospy/TransitiveMsg2~%test_rosmaster/Composite data~%~%================================================================================~%MSG: test_rosmaster/Composite~%# composite message. required for testing import calculation in generators~%CompositeA a~%CompositeB b~%~%================================================================================~%MSG: test_rosmaster/CompositeA~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: test_rosmaster/CompositeB~%# copy of geometry_msgs/Point for testing~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TransitiveSrv-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'msg))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TransitiveSrv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'TransitiveSrv-request
    (cl:cons ':msg (msg msg))
))
;//! \htmlinclude TransitiveSrv-response.msg.html

(cl:defclass <TransitiveSrv-response> (roslisp-msg-protocol:ros-message)
  ((a
    :reader a
    :initarg :a
    :type cl:integer
    :initform 0))
)

(cl:defclass TransitiveSrv-response (<TransitiveSrv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TransitiveSrv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TransitiveSrv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name test_rospy-srv:<TransitiveSrv-response> is deprecated: use test_rospy-srv:TransitiveSrv-response instead.")))

(cl:ensure-generic-function 'a-val :lambda-list '(m))
(cl:defmethod a-val ((m <TransitiveSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_rospy-srv:a-val is deprecated.  Use test_rospy-srv:a instead.")
  (a m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TransitiveSrv-response>) ostream)
  "Serializes a message object of type '<TransitiveSrv-response>"
  (cl:let* ((signed (cl:slot-value msg 'a)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TransitiveSrv-response>) istream)
  "Deserializes a message object of type '<TransitiveSrv-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'a) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TransitiveSrv-response>)))
  "Returns string type for a service object of type '<TransitiveSrv-response>"
  "test_rospy/TransitiveSrvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TransitiveSrv-response)))
  "Returns string type for a service object of type 'TransitiveSrv-response"
  "test_rospy/TransitiveSrvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TransitiveSrv-response>)))
  "Returns md5sum for a message object of type '<TransitiveSrv-response>"
  "8b7918ee2b81eaf825f4c70de011f6fa")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TransitiveSrv-response)))
  "Returns md5sum for a message object of type 'TransitiveSrv-response"
  "8b7918ee2b81eaf825f4c70de011f6fa")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TransitiveSrv-response>)))
  "Returns full string definition for message of type '<TransitiveSrv-response>"
  (cl:format cl:nil "int32 a~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TransitiveSrv-response)))
  "Returns full string definition for message of type 'TransitiveSrv-response"
  (cl:format cl:nil "int32 a~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TransitiveSrv-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TransitiveSrv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'TransitiveSrv-response
    (cl:cons ':a (a msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'TransitiveSrv)))
  'TransitiveSrv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'TransitiveSrv)))
  'TransitiveSrv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TransitiveSrv)))
  "Returns string type for a service object of type '<TransitiveSrv>"
  "test_rospy/TransitiveSrv")