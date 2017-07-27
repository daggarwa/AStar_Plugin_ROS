; Auto-generated. Do not edit!


(cl:in-package test_rospy-msg)


;//! \htmlinclude TransitiveMsg2.msg.html

(cl:defclass <TransitiveMsg2> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type test_rosmaster-msg:Composite
    :initform (cl:make-instance 'test_rosmaster-msg:Composite)))
)

(cl:defclass TransitiveMsg2 (<TransitiveMsg2>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TransitiveMsg2>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TransitiveMsg2)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name test_rospy-msg:<TransitiveMsg2> is deprecated: use test_rospy-msg:TransitiveMsg2 instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <TransitiveMsg2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_rospy-msg:data-val is deprecated.  Use test_rospy-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TransitiveMsg2>) ostream)
  "Serializes a message object of type '<TransitiveMsg2>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'data) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TransitiveMsg2>) istream)
  "Deserializes a message object of type '<TransitiveMsg2>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'data) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TransitiveMsg2>)))
  "Returns string type for a message object of type '<TransitiveMsg2>"
  "test_rospy/TransitiveMsg2")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TransitiveMsg2)))
  "Returns string type for a message object of type 'TransitiveMsg2"
  "test_rospy/TransitiveMsg2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TransitiveMsg2>)))
  "Returns md5sum for a message object of type '<TransitiveMsg2>"
  "eb1fa3c8b51b0e31f74e89c2eecc441e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TransitiveMsg2)))
  "Returns md5sum for a message object of type 'TransitiveMsg2"
  "eb1fa3c8b51b0e31f74e89c2eecc441e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TransitiveMsg2>)))
  "Returns full string definition for message of type '<TransitiveMsg2>"
  (cl:format cl:nil "test_rosmaster/Composite data~%~%================================================================================~%MSG: test_rosmaster/Composite~%# composite message. required for testing import calculation in generators~%CompositeA a~%CompositeB b~%~%================================================================================~%MSG: test_rosmaster/CompositeA~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: test_rosmaster/CompositeB~%# copy of geometry_msgs/Point for testing~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TransitiveMsg2)))
  "Returns full string definition for message of type 'TransitiveMsg2"
  (cl:format cl:nil "test_rosmaster/Composite data~%~%================================================================================~%MSG: test_rosmaster/Composite~%# composite message. required for testing import calculation in generators~%CompositeA a~%CompositeB b~%~%================================================================================~%MSG: test_rosmaster/CompositeA~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: test_rosmaster/CompositeB~%# copy of geometry_msgs/Point for testing~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TransitiveMsg2>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TransitiveMsg2>))
  "Converts a ROS message object to a list"
  (cl:list 'TransitiveMsg2
    (cl:cons ':data (data msg))
))
