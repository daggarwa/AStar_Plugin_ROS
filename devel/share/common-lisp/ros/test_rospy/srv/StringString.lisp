; Auto-generated. Do not edit!


(cl:in-package test_rospy-srv)


;//! \htmlinclude StringString-request.msg.html

(cl:defclass <StringString-request> (roslisp-msg-protocol:ros-message)
  ((str
    :reader str
    :initarg :str
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String))
   (str2
    :reader str2
    :initarg :str2
    :type test_rospy-msg:Val
    :initform (cl:make-instance 'test_rospy-msg:Val)))
)

(cl:defclass StringString-request (<StringString-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StringString-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StringString-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name test_rospy-srv:<StringString-request> is deprecated: use test_rospy-srv:StringString-request instead.")))

(cl:ensure-generic-function 'str-val :lambda-list '(m))
(cl:defmethod str-val ((m <StringString-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_rospy-srv:str-val is deprecated.  Use test_rospy-srv:str instead.")
  (str m))

(cl:ensure-generic-function 'str2-val :lambda-list '(m))
(cl:defmethod str2-val ((m <StringString-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_rospy-srv:str2-val is deprecated.  Use test_rospy-srv:str2 instead.")
  (str2 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StringString-request>) ostream)
  "Serializes a message object of type '<StringString-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'str) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'str2) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StringString-request>) istream)
  "Deserializes a message object of type '<StringString-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'str) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'str2) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StringString-request>)))
  "Returns string type for a service object of type '<StringString-request>"
  "test_rospy/StringStringRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StringString-request)))
  "Returns string type for a service object of type 'StringString-request"
  "test_rospy/StringStringRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StringString-request>)))
  "Returns md5sum for a message object of type '<StringString-request>"
  "37bf11bf0378473e105b4a52f61d1a75")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StringString-request)))
  "Returns md5sum for a message object of type 'StringString-request"
  "37bf11bf0378473e105b4a52f61d1a75")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StringString-request>)))
  "Returns full string definition for message of type '<StringString-request>"
  (cl:format cl:nil "std_msgs/String str~%Val str2~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%================================================================================~%MSG: test_rospy/Val~%string val~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StringString-request)))
  "Returns full string definition for message of type 'StringString-request"
  (cl:format cl:nil "std_msgs/String str~%Val str2~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%================================================================================~%MSG: test_rospy/Val~%string val~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StringString-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'str))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'str2))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StringString-request>))
  "Converts a ROS message object to a list"
  (cl:list 'StringString-request
    (cl:cons ':str (str msg))
    (cl:cons ':str2 (str2 msg))
))
;//! \htmlinclude StringString-response.msg.html

(cl:defclass <StringString-response> (roslisp-msg-protocol:ros-message)
  ((str
    :reader str
    :initarg :str
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String)))
)

(cl:defclass StringString-response (<StringString-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StringString-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StringString-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name test_rospy-srv:<StringString-response> is deprecated: use test_rospy-srv:StringString-response instead.")))

(cl:ensure-generic-function 'str-val :lambda-list '(m))
(cl:defmethod str-val ((m <StringString-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_rospy-srv:str-val is deprecated.  Use test_rospy-srv:str instead.")
  (str m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StringString-response>) ostream)
  "Serializes a message object of type '<StringString-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'str) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StringString-response>) istream)
  "Deserializes a message object of type '<StringString-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'str) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StringString-response>)))
  "Returns string type for a service object of type '<StringString-response>"
  "test_rospy/StringStringResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StringString-response)))
  "Returns string type for a service object of type 'StringString-response"
  "test_rospy/StringStringResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StringString-response>)))
  "Returns md5sum for a message object of type '<StringString-response>"
  "37bf11bf0378473e105b4a52f61d1a75")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StringString-response)))
  "Returns md5sum for a message object of type 'StringString-response"
  "37bf11bf0378473e105b4a52f61d1a75")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StringString-response>)))
  "Returns full string definition for message of type '<StringString-response>"
  (cl:format cl:nil "std_msgs/String str~%~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StringString-response)))
  "Returns full string definition for message of type 'StringString-response"
  (cl:format cl:nil "std_msgs/String str~%~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StringString-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'str))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StringString-response>))
  "Converts a ROS message object to a list"
  (cl:list 'StringString-response
    (cl:cons ':str (str msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'StringString)))
  'StringString-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'StringString)))
  'StringString-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StringString)))
  "Returns string type for a service object of type '<StringString>"
  "test_rospy/StringString")