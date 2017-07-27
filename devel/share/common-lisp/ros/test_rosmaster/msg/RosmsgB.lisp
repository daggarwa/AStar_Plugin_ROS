; Auto-generated. Do not edit!


(cl:in-package test_rosmaster-msg)


;//! \htmlinclude RosmsgB.msg.html

(cl:defclass <RosmsgB> (roslisp-msg-protocol:ros-message)
  ((empty
    :reader empty
    :initarg :empty
    :type test_rosmaster-msg:Empty
    :initform (cl:make-instance 'test_rosmaster-msg:Empty)))
)

(cl:defclass RosmsgB (<RosmsgB>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RosmsgB>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RosmsgB)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name test_rosmaster-msg:<RosmsgB> is deprecated: use test_rosmaster-msg:RosmsgB instead.")))

(cl:ensure-generic-function 'empty-val :lambda-list '(m))
(cl:defmethod empty-val ((m <RosmsgB>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_rosmaster-msg:empty-val is deprecated.  Use test_rosmaster-msg:empty instead.")
  (empty m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RosmsgB>) ostream)
  "Serializes a message object of type '<RosmsgB>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'empty) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RosmsgB>) istream)
  "Deserializes a message object of type '<RosmsgB>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'empty) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RosmsgB>)))
  "Returns string type for a message object of type '<RosmsgB>"
  "test_rosmaster/RosmsgB")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RosmsgB)))
  "Returns string type for a message object of type 'RosmsgB"
  "test_rosmaster/RosmsgB")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RosmsgB>)))
  "Returns md5sum for a message object of type '<RosmsgB>"
  "6aac6c697d5414bc0fcede8c33981d0e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RosmsgB)))
  "Returns md5sum for a message object of type 'RosmsgB"
  "6aac6c697d5414bc0fcede8c33981d0e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RosmsgB>)))
  "Returns full string definition for message of type '<RosmsgB>"
  (cl:format cl:nil "Empty empty~%~%================================================================================~%MSG: test_rosmaster/Empty~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RosmsgB)))
  "Returns full string definition for message of type 'RosmsgB"
  (cl:format cl:nil "Empty empty~%~%================================================================================~%MSG: test_rosmaster/Empty~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RosmsgB>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'empty))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RosmsgB>))
  "Converts a ROS message object to a list"
  (cl:list 'RosmsgB
    (cl:cons ':empty (empty msg))
))
