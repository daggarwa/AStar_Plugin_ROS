; Auto-generated. Do not edit!


(cl:in-package test_rospy-srv)


;//! \htmlinclude EmptySrv-request.msg.html

(cl:defclass <EmptySrv-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass EmptySrv-request (<EmptySrv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EmptySrv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EmptySrv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name test_rospy-srv:<EmptySrv-request> is deprecated: use test_rospy-srv:EmptySrv-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EmptySrv-request>) ostream)
  "Serializes a message object of type '<EmptySrv-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EmptySrv-request>) istream)
  "Deserializes a message object of type '<EmptySrv-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EmptySrv-request>)))
  "Returns string type for a service object of type '<EmptySrv-request>"
  "test_rospy/EmptySrvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EmptySrv-request)))
  "Returns string type for a service object of type 'EmptySrv-request"
  "test_rospy/EmptySrvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EmptySrv-request>)))
  "Returns md5sum for a message object of type '<EmptySrv-request>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EmptySrv-request)))
  "Returns md5sum for a message object of type 'EmptySrv-request"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EmptySrv-request>)))
  "Returns full string definition for message of type '<EmptySrv-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EmptySrv-request)))
  "Returns full string definition for message of type 'EmptySrv-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EmptySrv-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EmptySrv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'EmptySrv-request
))
;//! \htmlinclude EmptySrv-response.msg.html

(cl:defclass <EmptySrv-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass EmptySrv-response (<EmptySrv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EmptySrv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EmptySrv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name test_rospy-srv:<EmptySrv-response> is deprecated: use test_rospy-srv:EmptySrv-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EmptySrv-response>) ostream)
  "Serializes a message object of type '<EmptySrv-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EmptySrv-response>) istream)
  "Deserializes a message object of type '<EmptySrv-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EmptySrv-response>)))
  "Returns string type for a service object of type '<EmptySrv-response>"
  "test_rospy/EmptySrvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EmptySrv-response)))
  "Returns string type for a service object of type 'EmptySrv-response"
  "test_rospy/EmptySrvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EmptySrv-response>)))
  "Returns md5sum for a message object of type '<EmptySrv-response>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EmptySrv-response)))
  "Returns md5sum for a message object of type 'EmptySrv-response"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EmptySrv-response>)))
  "Returns full string definition for message of type '<EmptySrv-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EmptySrv-response)))
  "Returns full string definition for message of type 'EmptySrv-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EmptySrv-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EmptySrv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'EmptySrv-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'EmptySrv)))
  'EmptySrv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'EmptySrv)))
  'EmptySrv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EmptySrv)))
  "Returns string type for a service object of type '<EmptySrv>"
  "test_rospy/EmptySrv")