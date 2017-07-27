; Auto-generated. Do not edit!


(cl:in-package test_roscpp-msg)


;//! \htmlinclude Constants.msg.html

(cl:defclass <Constants> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass Constants (<Constants>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Constants>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Constants)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name test_roscpp-msg:<Constants> is deprecated: use test_roscpp-msg:Constants instead.")))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Constants>)))
    "Constants for message type '<Constants>"
  '((:A . 1)
    (:B . 2)
    (:C . 3)
    (:D . 4)
    (:E . 5)
    (:F . 6)
    (:G . 7)
    (:H . 8)
    (:FA . 1.5)
    (:FB . 40.9)
    (:STR . hello there)
    (:STR2 . this string has "quotes" and \slashes\ in it))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Constants)))
    "Constants for message type 'Constants"
  '((:A . 1)
    (:B . 2)
    (:C . 3)
    (:D . 4)
    (:E . 5)
    (:F . 6)
    (:G . 7)
    (:H . 8)
    (:FA . 1.5)
    (:FB . 40.9)
    (:STR . hello there)
    (:STR2 . this string has "quotes" and \slashes\ in it))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Constants>) ostream)
  "Serializes a message object of type '<Constants>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Constants>) istream)
  "Deserializes a message object of type '<Constants>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Constants>)))
  "Returns string type for a message object of type '<Constants>"
  "test_roscpp/Constants")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Constants)))
  "Returns string type for a message object of type 'Constants"
  "test_roscpp/Constants")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Constants>)))
  "Returns md5sum for a message object of type '<Constants>"
  "0032309c8dd2c569e0e0d0e75974e750")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Constants)))
  "Returns md5sum for a message object of type 'Constants"
  "0032309c8dd2c569e0e0d0e75974e750")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Constants>)))
  "Returns full string definition for message of type '<Constants>"
  (cl:format cl:nil "uint8 a = 1~%int8 b = 2~%uint16 c = 3~%int16 d = 4~%uint32 e = 5~%int32 f = 6~%uint64 g = 7~%int64 h = 8~%float32 fa = 1.5~%float64 fb = 40.9~%string str = hello there~%string str2 = this string has \"quotes\" and \\slashes\\ in it~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Constants)))
  "Returns full string definition for message of type 'Constants"
  (cl:format cl:nil "uint8 a = 1~%int8 b = 2~%uint16 c = 3~%int16 d = 4~%uint32 e = 5~%int32 f = 6~%uint64 g = 7~%int64 h = 8~%float32 fa = 1.5~%float64 fb = 40.9~%string str = hello there~%string str2 = this string has \"quotes\" and \\slashes\\ in it~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Constants>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Constants>))
  "Converts a ROS message object to a list"
  (cl:list 'Constants
))
