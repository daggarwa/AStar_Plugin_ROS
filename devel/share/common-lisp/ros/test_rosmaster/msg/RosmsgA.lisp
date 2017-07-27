; Auto-generated. Do not edit!


(cl:in-package test_rosmaster-msg)


;//! \htmlinclude RosmsgA.msg.html

(cl:defclass <RosmsgA> (roslisp-msg-protocol:ros-message)
  ((a
    :reader a
    :initarg :a
    :type cl:integer
    :initform 0))
)

(cl:defclass RosmsgA (<RosmsgA>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RosmsgA>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RosmsgA)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name test_rosmaster-msg:<RosmsgA> is deprecated: use test_rosmaster-msg:RosmsgA instead.")))

(cl:ensure-generic-function 'a-val :lambda-list '(m))
(cl:defmethod a-val ((m <RosmsgA>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_rosmaster-msg:a-val is deprecated.  Use test_rosmaster-msg:a instead.")
  (a m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RosmsgA>) ostream)
  "Serializes a message object of type '<RosmsgA>"
  (cl:let* ((signed (cl:slot-value msg 'a)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RosmsgA>) istream)
  "Deserializes a message object of type '<RosmsgA>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'a) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RosmsgA>)))
  "Returns string type for a message object of type '<RosmsgA>"
  "test_rosmaster/RosmsgA")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RosmsgA)))
  "Returns string type for a message object of type 'RosmsgA"
  "test_rosmaster/RosmsgA")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RosmsgA>)))
  "Returns md5sum for a message object of type '<RosmsgA>"
  "5c9fb1a886e81e3162a5c87bf55c072b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RosmsgA)))
  "Returns md5sum for a message object of type 'RosmsgA"
  "5c9fb1a886e81e3162a5c87bf55c072b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RosmsgA>)))
  "Returns full string definition for message of type '<RosmsgA>"
  (cl:format cl:nil "int32 a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RosmsgA)))
  "Returns full string definition for message of type 'RosmsgA"
  (cl:format cl:nil "int32 a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RosmsgA>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RosmsgA>))
  "Converts a ROS message object to a list"
  (cl:list 'RosmsgA
    (cl:cons ':a (a msg))
))
