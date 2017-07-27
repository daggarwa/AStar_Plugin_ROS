; Auto-generated. Do not edit!


(cl:in-package roscpp-msg)


;//! \htmlinclude Logger.msg.html

(cl:defclass <Logger> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (level
    :reader level
    :initarg :level
    :type cl:string
    :initform ""))
)

(cl:defclass Logger (<Logger>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Logger>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Logger)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roscpp-msg:<Logger> is deprecated: use roscpp-msg:Logger instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <Logger>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roscpp-msg:name-val is deprecated.  Use roscpp-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'level-val :lambda-list '(m))
(cl:defmethod level-val ((m <Logger>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roscpp-msg:level-val is deprecated.  Use roscpp-msg:level instead.")
  (level m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Logger>) ostream)
  "Serializes a message object of type '<Logger>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'level))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'level))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Logger>) istream)
  "Deserializes a message object of type '<Logger>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'level) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'level) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Logger>)))
  "Returns string type for a message object of type '<Logger>"
  "roscpp/Logger")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Logger)))
  "Returns string type for a message object of type 'Logger"
  "roscpp/Logger")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Logger>)))
  "Returns md5sum for a message object of type '<Logger>"
  "a6069a2ff40db7bd32143dd66e1f408e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Logger)))
  "Returns md5sum for a message object of type 'Logger"
  "a6069a2ff40db7bd32143dd66e1f408e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Logger>)))
  "Returns full string definition for message of type '<Logger>"
  (cl:format cl:nil "string name~%string level~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Logger)))
  "Returns full string definition for message of type 'Logger"
  (cl:format cl:nil "string name~%string level~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Logger>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     4 (cl:length (cl:slot-value msg 'level))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Logger>))
  "Converts a ROS message object to a list"
  (cl:list 'Logger
    (cl:cons ':name (name msg))
    (cl:cons ':level (level msg))
))
