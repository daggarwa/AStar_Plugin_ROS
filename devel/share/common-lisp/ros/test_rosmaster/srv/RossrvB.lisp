; Auto-generated. Do not edit!


(cl:in-package test_rosmaster-srv)


;//! \htmlinclude RossrvB-request.msg.html

(cl:defclass <RossrvB-request> (roslisp-msg-protocol:ros-message)
  ((empty
    :reader empty
    :initarg :empty
    :type test_rosmaster-msg:Empty
    :initform (cl:make-instance 'test_rosmaster-msg:Empty)))
)

(cl:defclass RossrvB-request (<RossrvB-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RossrvB-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RossrvB-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name test_rosmaster-srv:<RossrvB-request> is deprecated: use test_rosmaster-srv:RossrvB-request instead.")))

(cl:ensure-generic-function 'empty-val :lambda-list '(m))
(cl:defmethod empty-val ((m <RossrvB-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_rosmaster-srv:empty-val is deprecated.  Use test_rosmaster-srv:empty instead.")
  (empty m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RossrvB-request>) ostream)
  "Serializes a message object of type '<RossrvB-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'empty) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RossrvB-request>) istream)
  "Deserializes a message object of type '<RossrvB-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'empty) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RossrvB-request>)))
  "Returns string type for a service object of type '<RossrvB-request>"
  "test_rosmaster/RossrvBRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RossrvB-request)))
  "Returns string type for a service object of type 'RossrvB-request"
  "test_rosmaster/RossrvBRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RossrvB-request>)))
  "Returns md5sum for a message object of type '<RossrvB-request>"
  "928fb104d412cd4f5983340b98df1876")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RossrvB-request)))
  "Returns md5sum for a message object of type 'RossrvB-request"
  "928fb104d412cd4f5983340b98df1876")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RossrvB-request>)))
  "Returns full string definition for message of type '<RossrvB-request>"
  (cl:format cl:nil "Empty empty~%~%================================================================================~%MSG: test_rosmaster/Empty~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RossrvB-request)))
  "Returns full string definition for message of type 'RossrvB-request"
  (cl:format cl:nil "Empty empty~%~%================================================================================~%MSG: test_rosmaster/Empty~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RossrvB-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'empty))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RossrvB-request>))
  "Converts a ROS message object to a list"
  (cl:list 'RossrvB-request
    (cl:cons ':empty (empty msg))
))
;//! \htmlinclude RossrvB-response.msg.html

(cl:defclass <RossrvB-response> (roslisp-msg-protocol:ros-message)
  ((empty
    :reader empty
    :initarg :empty
    :type test_rosmaster-msg:Empty
    :initform (cl:make-instance 'test_rosmaster-msg:Empty)))
)

(cl:defclass RossrvB-response (<RossrvB-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RossrvB-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RossrvB-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name test_rosmaster-srv:<RossrvB-response> is deprecated: use test_rosmaster-srv:RossrvB-response instead.")))

(cl:ensure-generic-function 'empty-val :lambda-list '(m))
(cl:defmethod empty-val ((m <RossrvB-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_rosmaster-srv:empty-val is deprecated.  Use test_rosmaster-srv:empty instead.")
  (empty m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RossrvB-response>) ostream)
  "Serializes a message object of type '<RossrvB-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'empty) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RossrvB-response>) istream)
  "Deserializes a message object of type '<RossrvB-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'empty) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RossrvB-response>)))
  "Returns string type for a service object of type '<RossrvB-response>"
  "test_rosmaster/RossrvBResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RossrvB-response)))
  "Returns string type for a service object of type 'RossrvB-response"
  "test_rosmaster/RossrvBResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RossrvB-response>)))
  "Returns md5sum for a message object of type '<RossrvB-response>"
  "928fb104d412cd4f5983340b98df1876")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RossrvB-response)))
  "Returns md5sum for a message object of type 'RossrvB-response"
  "928fb104d412cd4f5983340b98df1876")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RossrvB-response>)))
  "Returns full string definition for message of type '<RossrvB-response>"
  (cl:format cl:nil "Empty empty~%~%~%================================================================================~%MSG: test_rosmaster/Empty~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RossrvB-response)))
  "Returns full string definition for message of type 'RossrvB-response"
  (cl:format cl:nil "Empty empty~%~%~%================================================================================~%MSG: test_rosmaster/Empty~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RossrvB-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'empty))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RossrvB-response>))
  "Converts a ROS message object to a list"
  (cl:list 'RossrvB-response
    (cl:cons ':empty (empty msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'RossrvB)))
  'RossrvB-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'RossrvB)))
  'RossrvB-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RossrvB)))
  "Returns string type for a service object of type '<RossrvB>"
  "test_rosmaster/RossrvB")