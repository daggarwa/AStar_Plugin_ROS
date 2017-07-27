; Auto-generated. Do not edit!


(cl:in-package test_rostopic-msg)


;//! \htmlinclude Embed.msg.html

(cl:defclass <Embed> (roslisp-msg-protocol:ros-message)
  ((simple
    :reader simple
    :initarg :simple
    :type test_rostopic-msg:Simple
    :initform (cl:make-instance 'test_rostopic-msg:Simple))
   (arrays
    :reader arrays
    :initarg :arrays
    :type test_rostopic-msg:Arrays
    :initform (cl:make-instance 'test_rostopic-msg:Arrays)))
)

(cl:defclass Embed (<Embed>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Embed>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Embed)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name test_rostopic-msg:<Embed> is deprecated: use test_rostopic-msg:Embed instead.")))

(cl:ensure-generic-function 'simple-val :lambda-list '(m))
(cl:defmethod simple-val ((m <Embed>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_rostopic-msg:simple-val is deprecated.  Use test_rostopic-msg:simple instead.")
  (simple m))

(cl:ensure-generic-function 'arrays-val :lambda-list '(m))
(cl:defmethod arrays-val ((m <Embed>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_rostopic-msg:arrays-val is deprecated.  Use test_rostopic-msg:arrays instead.")
  (arrays m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Embed>) ostream)
  "Serializes a message object of type '<Embed>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'simple) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'arrays) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Embed>) istream)
  "Deserializes a message object of type '<Embed>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'simple) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'arrays) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Embed>)))
  "Returns string type for a message object of type '<Embed>"
  "test_rostopic/Embed")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Embed)))
  "Returns string type for a message object of type 'Embed"
  "test_rostopic/Embed")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Embed>)))
  "Returns md5sum for a message object of type '<Embed>"
  "6dec891298f3675c2d964c161d28efaa")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Embed)))
  "Returns md5sum for a message object of type 'Embed"
  "6dec891298f3675c2d964c161d28efaa")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Embed>)))
  "Returns full string definition for message of type '<Embed>"
  (cl:format cl:nil "#for rostopic tests~%Simple simple~%Arrays arrays~%~%================================================================================~%MSG: test_rostopic/Simple~%# for rostopic tests~%byte b~%int16 int16~%int32 int32~%int64 int64~%char c~%uint16 uint16~%uint32 uint32~%uint64 uint64~%string str~%~%================================================================================~%MSG: test_rostopic/Arrays~%#for rostopic tests~%int8[] int8_arr~%uint8[] uint8_arr~%int32[] int32_arr~%uint32[] uint32_arr~%string[] string_arr~%time[] time_arr~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Embed)))
  "Returns full string definition for message of type 'Embed"
  (cl:format cl:nil "#for rostopic tests~%Simple simple~%Arrays arrays~%~%================================================================================~%MSG: test_rostopic/Simple~%# for rostopic tests~%byte b~%int16 int16~%int32 int32~%int64 int64~%char c~%uint16 uint16~%uint32 uint32~%uint64 uint64~%string str~%~%================================================================================~%MSG: test_rostopic/Arrays~%#for rostopic tests~%int8[] int8_arr~%uint8[] uint8_arr~%int32[] int32_arr~%uint32[] uint32_arr~%string[] string_arr~%time[] time_arr~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Embed>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'simple))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'arrays))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Embed>))
  "Converts a ROS message object to a list"
  (cl:list 'Embed
    (cl:cons ':simple (simple msg))
    (cl:cons ':arrays (arrays msg))
))
