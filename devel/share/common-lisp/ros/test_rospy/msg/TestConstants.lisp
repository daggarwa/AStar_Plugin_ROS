; Auto-generated. Do not edit!


(cl:in-package test_rospy-msg)


;//! \htmlinclude TestConstants.msg.html

(cl:defclass <TestConstants> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass TestConstants (<TestConstants>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TestConstants>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TestConstants)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name test_rospy-msg:<TestConstants> is deprecated: use test_rospy-msg:TestConstants instead.")))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<TestConstants>)))
    "Constants for message type '<TestConstants>"
  '((:A . -123.0)
    (:B . 124.0)
    (:C . 125.0)
    (:X . 123)
    (:Y . -123)
    (:Z . 124)
    (:FOO . foo)
    (:SINGLEQUOTE . 'hi)
    (:DOUBLEQUOTE . "hello" there)
    (:MULTIQUOTE . "hello" 'goodbye')
    (:EXAMPLE . "#comments" are ignored, and leading and trailing whitespace removed)
    (:WHITESPACE . strip)
    (:EMPTY . )
    (:TRUE . True)
    (:FALSE . False))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'TestConstants)))
    "Constants for message type 'TestConstants"
  '((:A . -123.0)
    (:B . 124.0)
    (:C . 125.0)
    (:X . 123)
    (:Y . -123)
    (:Z . 124)
    (:FOO . foo)
    (:SINGLEQUOTE . 'hi)
    (:DOUBLEQUOTE . "hello" there)
    (:MULTIQUOTE . "hello" 'goodbye')
    (:EXAMPLE . "#comments" are ignored, and leading and trailing whitespace removed)
    (:WHITESPACE . strip)
    (:EMPTY . )
    (:TRUE . True)
    (:FALSE . False))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TestConstants>) ostream)
  "Serializes a message object of type '<TestConstants>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TestConstants>) istream)
  "Deserializes a message object of type '<TestConstants>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TestConstants>)))
  "Returns string type for a message object of type '<TestConstants>"
  "test_rospy/TestConstants")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TestConstants)))
  "Returns string type for a message object of type 'TestConstants"
  "test_rospy/TestConstants")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TestConstants>)))
  "Returns md5sum for a message object of type '<TestConstants>"
  "e60959d2ccf9718dc5e42767bebd1644")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TestConstants)))
  "Returns md5sum for a message object of type 'TestConstants"
  "e60959d2ccf9718dc5e42767bebd1644")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TestConstants>)))
  "Returns full string definition for message of type '<TestConstants>"
  (cl:format cl:nil "float32 A=-123.0~%float32 B=124.0~%float64 C=125.0~%int32 X=123~%int32 Y=-123~%uint32 Z=124~%string FOO=foo~%string SINGLEQUOTE='hi~%string DOUBLEQUOTE=\"hello\" there~%string MULTIQUOTE=\"hello\" 'goodbye'~%string EXAMPLE=\"#comments\" are ignored, and leading and trailing whitespace removed~%string WHITESPACE= strip  ~%string EMPTY= ~%bool TRUE=1~%bool FALSE=0~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TestConstants)))
  "Returns full string definition for message of type 'TestConstants"
  (cl:format cl:nil "float32 A=-123.0~%float32 B=124.0~%float64 C=125.0~%int32 X=123~%int32 Y=-123~%uint32 Z=124~%string FOO=foo~%string SINGLEQUOTE='hi~%string DOUBLEQUOTE=\"hello\" there~%string MULTIQUOTE=\"hello\" 'goodbye'~%string EXAMPLE=\"#comments\" are ignored, and leading and trailing whitespace removed~%string WHITESPACE= strip  ~%string EMPTY= ~%bool TRUE=1~%bool FALSE=0~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TestConstants>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TestConstants>))
  "Converts a ROS message object to a list"
  (cl:list 'TestConstants
))
