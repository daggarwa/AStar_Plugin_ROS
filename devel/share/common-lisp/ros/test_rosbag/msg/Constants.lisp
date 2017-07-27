; Auto-generated. Do not edit!


(cl:in-package test_rosbag-msg)


;//! \htmlinclude Constants.msg.html

(cl:defclass <Constants> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:integer
    :initform 0))
)

(cl:defclass Constants (<Constants>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Constants>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Constants)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name test_rosbag-msg:<Constants> is deprecated: use test_rosbag-msg:Constants instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <Constants>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_rosbag-msg:value-val is deprecated.  Use test_rosbag-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Constants>)))
    "Constants for message type '<Constants>"
  '((:CONSTANT . 2)
    (:CONSTANT_TWO . 42))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Constants)))
    "Constants for message type 'Constants"
  '((:CONSTANT . 2)
    (:CONSTANT_TWO . 42))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Constants>) ostream)
  "Serializes a message object of type '<Constants>"
  (cl:let* ((signed (cl:slot-value msg 'value)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Constants>) istream)
  "Deserializes a message object of type '<Constants>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'value) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Constants>)))
  "Returns string type for a message object of type '<Constants>"
  "test_rosbag/Constants")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Constants)))
  "Returns string type for a message object of type 'Constants"
  "test_rosbag/Constants")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Constants>)))
  "Returns md5sum for a message object of type '<Constants>"
  "b45401c4d442c4da7b0a2a105075fa4a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Constants)))
  "Returns md5sum for a message object of type 'Constants"
  "b45401c4d442c4da7b0a2a105075fa4a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Constants>)))
  "Returns full string definition for message of type '<Constants>"
  (cl:format cl:nil "int32 CONSTANT=2~%int32 CONSTANT_TWO=42~%int32 value~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Constants)))
  "Returns full string definition for message of type 'Constants"
  (cl:format cl:nil "int32 CONSTANT=2~%int32 CONSTANT_TWO=42~%int32 value~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Constants>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Constants>))
  "Converts a ROS message object to a list"
  (cl:list 'Constants
    (cl:cons ':value (value msg))
))
