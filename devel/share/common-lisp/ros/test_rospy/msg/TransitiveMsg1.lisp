; Auto-generated. Do not edit!


(cl:in-package test_rospy-msg)


;//! \htmlinclude TransitiveMsg1.msg.html

(cl:defclass <TransitiveMsg1> (roslisp-msg-protocol:ros-message)
  ((msg2
    :reader msg2
    :initarg :msg2
    :type test_rospy-msg:TransitiveMsg2
    :initform (cl:make-instance 'test_rospy-msg:TransitiveMsg2)))
)

(cl:defclass TransitiveMsg1 (<TransitiveMsg1>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TransitiveMsg1>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TransitiveMsg1)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name test_rospy-msg:<TransitiveMsg1> is deprecated: use test_rospy-msg:TransitiveMsg1 instead.")))

(cl:ensure-generic-function 'msg2-val :lambda-list '(m))
(cl:defmethod msg2-val ((m <TransitiveMsg1>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_rospy-msg:msg2-val is deprecated.  Use test_rospy-msg:msg2 instead.")
  (msg2 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TransitiveMsg1>) ostream)
  "Serializes a message object of type '<TransitiveMsg1>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'msg2) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TransitiveMsg1>) istream)
  "Deserializes a message object of type '<TransitiveMsg1>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'msg2) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TransitiveMsg1>)))
  "Returns string type for a message object of type '<TransitiveMsg1>"
  "test_rospy/TransitiveMsg1")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TransitiveMsg1)))
  "Returns string type for a message object of type 'TransitiveMsg1"
  "test_rospy/TransitiveMsg1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TransitiveMsg1>)))
  "Returns md5sum for a message object of type '<TransitiveMsg1>"
  "72751523a989ee2c7a44c006464315e9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TransitiveMsg1)))
  "Returns md5sum for a message object of type 'TransitiveMsg1"
  "72751523a989ee2c7a44c006464315e9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TransitiveMsg1>)))
  "Returns full string definition for message of type '<TransitiveMsg1>"
  (cl:format cl:nil "TransitiveMsg2 msg2~%~%~%================================================================================~%MSG: test_rospy/TransitiveMsg2~%test_rosmaster/Composite data~%~%================================================================================~%MSG: test_rosmaster/Composite~%# composite message. required for testing import calculation in generators~%CompositeA a~%CompositeB b~%~%================================================================================~%MSG: test_rosmaster/CompositeA~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: test_rosmaster/CompositeB~%# copy of geometry_msgs/Point for testing~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TransitiveMsg1)))
  "Returns full string definition for message of type 'TransitiveMsg1"
  (cl:format cl:nil "TransitiveMsg2 msg2~%~%~%================================================================================~%MSG: test_rospy/TransitiveMsg2~%test_rosmaster/Composite data~%~%================================================================================~%MSG: test_rosmaster/Composite~%# composite message. required for testing import calculation in generators~%CompositeA a~%CompositeB b~%~%================================================================================~%MSG: test_rosmaster/CompositeA~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: test_rosmaster/CompositeB~%# copy of geometry_msgs/Point for testing~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TransitiveMsg1>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'msg2))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TransitiveMsg1>))
  "Converts a ROS message object to a list"
  (cl:list 'TransitiveMsg1
    (cl:cons ':msg2 (msg2 msg))
))
