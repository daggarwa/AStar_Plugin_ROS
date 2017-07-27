; Auto-generated. Do not edit!


(cl:in-package roscpp-srv)


;//! \htmlinclude Empty-request.msg.html

(cl:defclass <Empty-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass Empty-request (<Empty-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Empty-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Empty-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roscpp-srv:<Empty-request> is deprecated: use roscpp-srv:Empty-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Empty-request>) ostream)
  "Serializes a message object of type '<Empty-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Empty-request>) istream)
  "Deserializes a message object of type '<Empty-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Empty-request>)))
  "Returns string type for a service object of type '<Empty-request>"
  "roscpp/EmptyRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Empty-request)))
  "Returns string type for a service object of type 'Empty-request"
  "roscpp/EmptyRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Empty-request>)))
  "Returns md5sum for a message object of type '<Empty-request>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Empty-request)))
  "Returns md5sum for a message object of type 'Empty-request"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Empty-request>)))
  "Returns full string definition for message of type '<Empty-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Empty-request)))
  "Returns full string definition for message of type 'Empty-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Empty-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Empty-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Empty-request
))
;//! \htmlinclude Empty-response.msg.html

(cl:defclass <Empty-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass Empty-response (<Empty-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Empty-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Empty-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roscpp-srv:<Empty-response> is deprecated: use roscpp-srv:Empty-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Empty-response>) ostream)
  "Serializes a message object of type '<Empty-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Empty-response>) istream)
  "Deserializes a message object of type '<Empty-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Empty-response>)))
  "Returns string type for a service object of type '<Empty-response>"
  "roscpp/EmptyResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Empty-response)))
  "Returns string type for a service object of type 'Empty-response"
  "roscpp/EmptyResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Empty-response>)))
  "Returns md5sum for a message object of type '<Empty-response>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Empty-response)))
  "Returns md5sum for a message object of type 'Empty-response"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Empty-response>)))
  "Returns full string definition for message of type '<Empty-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Empty-response)))
  "Returns full string definition for message of type 'Empty-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Empty-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Empty-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Empty-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Empty)))
  'Empty-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Empty)))
  'Empty-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Empty)))
  "Returns string type for a service object of type '<Empty>"
  "roscpp/Empty")