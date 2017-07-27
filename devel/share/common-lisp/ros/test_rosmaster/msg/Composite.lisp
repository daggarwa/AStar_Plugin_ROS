; Auto-generated. Do not edit!


(cl:in-package test_rosmaster-msg)


;//! \htmlinclude Composite.msg.html

(cl:defclass <Composite> (roslisp-msg-protocol:ros-message)
  ((a
    :reader a
    :initarg :a
    :type test_rosmaster-msg:CompositeA
    :initform (cl:make-instance 'test_rosmaster-msg:CompositeA))
   (b
    :reader b
    :initarg :b
    :type test_rosmaster-msg:CompositeB
    :initform (cl:make-instance 'test_rosmaster-msg:CompositeB)))
)

(cl:defclass Composite (<Composite>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Composite>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Composite)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name test_rosmaster-msg:<Composite> is deprecated: use test_rosmaster-msg:Composite instead.")))

(cl:ensure-generic-function 'a-val :lambda-list '(m))
(cl:defmethod a-val ((m <Composite>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_rosmaster-msg:a-val is deprecated.  Use test_rosmaster-msg:a instead.")
  (a m))

(cl:ensure-generic-function 'b-val :lambda-list '(m))
(cl:defmethod b-val ((m <Composite>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_rosmaster-msg:b-val is deprecated.  Use test_rosmaster-msg:b instead.")
  (b m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Composite>) ostream)
  "Serializes a message object of type '<Composite>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'a) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'b) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Composite>) istream)
  "Deserializes a message object of type '<Composite>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'a) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'b) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Composite>)))
  "Returns string type for a message object of type '<Composite>"
  "test_rosmaster/Composite")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Composite)))
  "Returns string type for a message object of type 'Composite"
  "test_rosmaster/Composite")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Composite>)))
  "Returns md5sum for a message object of type '<Composite>"
  "d8fb6eb869ad3956b50e8737d96dc9fa")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Composite)))
  "Returns md5sum for a message object of type 'Composite"
  "d8fb6eb869ad3956b50e8737d96dc9fa")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Composite>)))
  "Returns full string definition for message of type '<Composite>"
  (cl:format cl:nil "# composite message. required for testing import calculation in generators~%CompositeA a~%CompositeB b~%~%================================================================================~%MSG: test_rosmaster/CompositeA~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: test_rosmaster/CompositeB~%# copy of geometry_msgs/Point for testing~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Composite)))
  "Returns full string definition for message of type 'Composite"
  (cl:format cl:nil "# composite message. required for testing import calculation in generators~%CompositeA a~%CompositeB b~%~%================================================================================~%MSG: test_rosmaster/CompositeA~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: test_rosmaster/CompositeB~%# copy of geometry_msgs/Point for testing~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Composite>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'a))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'b))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Composite>))
  "Converts a ROS message object to a list"
  (cl:list 'Composite
    (cl:cons ':a (a msg))
    (cl:cons ':b (b msg))
))
