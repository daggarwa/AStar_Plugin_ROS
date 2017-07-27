; Auto-generated. Do not edit!


(cl:in-package test_rosmaster-msg)


;//! \htmlinclude RosmsgC.msg.html

(cl:defclass <RosmsgC> (roslisp-msg-protocol:ros-message)
  ((s1
    :reader s1
    :initarg :s1
    :type test_rosmaster-msg:String
    :initform (cl:make-instance 'test_rosmaster-msg:String))
   (s2
    :reader s2
    :initarg :s2
    :type test_rosmaster-msg:String
    :initform (cl:make-instance 'test_rosmaster-msg:String)))
)

(cl:defclass RosmsgC (<RosmsgC>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RosmsgC>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RosmsgC)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name test_rosmaster-msg:<RosmsgC> is deprecated: use test_rosmaster-msg:RosmsgC instead.")))

(cl:ensure-generic-function 's1-val :lambda-list '(m))
(cl:defmethod s1-val ((m <RosmsgC>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_rosmaster-msg:s1-val is deprecated.  Use test_rosmaster-msg:s1 instead.")
  (s1 m))

(cl:ensure-generic-function 's2-val :lambda-list '(m))
(cl:defmethod s2-val ((m <RosmsgC>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_rosmaster-msg:s2-val is deprecated.  Use test_rosmaster-msg:s2 instead.")
  (s2 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RosmsgC>) ostream)
  "Serializes a message object of type '<RosmsgC>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 's1) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 's2) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RosmsgC>) istream)
  "Deserializes a message object of type '<RosmsgC>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 's1) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 's2) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RosmsgC>)))
  "Returns string type for a message object of type '<RosmsgC>"
  "test_rosmaster/RosmsgC")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RosmsgC)))
  "Returns string type for a message object of type 'RosmsgC"
  "test_rosmaster/RosmsgC")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RosmsgC>)))
  "Returns md5sum for a message object of type '<RosmsgC>"
  "cc91a7e3c1498150f3554cbcab2800d2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RosmsgC)))
  "Returns md5sum for a message object of type 'RosmsgC"
  "cc91a7e3c1498150f3554cbcab2800d2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RosmsgC>)))
  "Returns full string definition for message of type '<RosmsgC>"
  (cl:format cl:nil "String s1~%String s2~%~%================================================================================~%MSG: test_rosmaster/String~%# Copy of std_msgs/String.msg to avoid having tests require a dependency on std_msgs.~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RosmsgC)))
  "Returns full string definition for message of type 'RosmsgC"
  (cl:format cl:nil "String s1~%String s2~%~%================================================================================~%MSG: test_rosmaster/String~%# Copy of std_msgs/String.msg to avoid having tests require a dependency on std_msgs.~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RosmsgC>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 's1))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 's2))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RosmsgC>))
  "Converts a ROS message object to a list"
  (cl:list 'RosmsgC
    (cl:cons ':s1 (s1 msg))
    (cl:cons ':s2 (s2 msg))
))
