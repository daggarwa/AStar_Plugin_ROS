; Auto-generated. Do not edit!


(cl:in-package test_rospy-srv)


;//! \htmlinclude ConstantsMultiplex-request.msg.html

(cl:defclass <ConstantsMultiplex-request> (roslisp-msg-protocol:ros-message)
  ((selection
    :reader selection
    :initarg :selection
    :type cl:integer
    :initform 0))
)

(cl:defclass ConstantsMultiplex-request (<ConstantsMultiplex-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ConstantsMultiplex-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ConstantsMultiplex-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name test_rospy-srv:<ConstantsMultiplex-request> is deprecated: use test_rospy-srv:ConstantsMultiplex-request instead.")))

(cl:ensure-generic-function 'selection-val :lambda-list '(m))
(cl:defmethod selection-val ((m <ConstantsMultiplex-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_rospy-srv:selection-val is deprecated.  Use test_rospy-srv:selection instead.")
  (selection m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ConstantsMultiplex-request>)))
    "Constants for message type '<ConstantsMultiplex-request>"
  '((:BYTE_X . 0)
    (:BYTE_Y . 15)
    (:BYTE_Z . 5)
    (:INT32_X . 0)
    (:INT32_Y . -12345678)
    (:INT32_Z . 12345678)
    (:UINT32_X . 0)
    (:UINT32_Y . 12345678)
    (:UINT32_Z . 1)
    (:FLOAT32_X . 0.0)
    (:FLOAT32_Y . -3.14159)
    (:FLOAT32_Z . 12345.78)
    (:SELECT_X . 1)
    (:SELECT_Y . 2)
    (:SELECT_Z . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ConstantsMultiplex-request)))
    "Constants for message type 'ConstantsMultiplex-request"
  '((:BYTE_X . 0)
    (:BYTE_Y . 15)
    (:BYTE_Z . 5)
    (:INT32_X . 0)
    (:INT32_Y . -12345678)
    (:INT32_Z . 12345678)
    (:UINT32_X . 0)
    (:UINT32_Y . 12345678)
    (:UINT32_Z . 1)
    (:FLOAT32_X . 0.0)
    (:FLOAT32_Y . -3.14159)
    (:FLOAT32_Z . 12345.78)
    (:SELECT_X . 1)
    (:SELECT_Y . 2)
    (:SELECT_Z . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ConstantsMultiplex-request>) ostream)
  "Serializes a message object of type '<ConstantsMultiplex-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'selection)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ConstantsMultiplex-request>) istream)
  "Deserializes a message object of type '<ConstantsMultiplex-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'selection)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ConstantsMultiplex-request>)))
  "Returns string type for a service object of type '<ConstantsMultiplex-request>"
  "test_rospy/ConstantsMultiplexRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ConstantsMultiplex-request)))
  "Returns string type for a service object of type 'ConstantsMultiplex-request"
  "test_rospy/ConstantsMultiplexRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ConstantsMultiplex-request>)))
  "Returns md5sum for a message object of type '<ConstantsMultiplex-request>"
  "bab86066b3f7801cb25df3932f644396")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ConstantsMultiplex-request)))
  "Returns md5sum for a message object of type 'ConstantsMultiplex-request"
  "bab86066b3f7801cb25df3932f644396")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ConstantsMultiplex-request>)))
  "Returns full string definition for message of type '<ConstantsMultiplex-request>"
  (cl:format cl:nil "byte BYTE_X=0~%byte BYTE_Y=15~%byte BYTE_Z=5~%int32 INT32_X=0~%int32 INT32_Y=-12345678~%int32 INT32_Z=12345678~%uint32 UINT32_X=0~%uint32 UINT32_Y=12345678~%uint32 UINT32_Z=1~%float32 FLOAT32_X=0.0~%float32 FLOAT32_Y=-3.14159~%float32 FLOAT32_Z=12345.78~%byte SELECT_X=1~%byte SELECT_Y=2~%byte SELECT_Z=3~%byte selection~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ConstantsMultiplex-request)))
  "Returns full string definition for message of type 'ConstantsMultiplex-request"
  (cl:format cl:nil "byte BYTE_X=0~%byte BYTE_Y=15~%byte BYTE_Z=5~%int32 INT32_X=0~%int32 INT32_Y=-12345678~%int32 INT32_Z=12345678~%uint32 UINT32_X=0~%uint32 UINT32_Y=12345678~%uint32 UINT32_Z=1~%float32 FLOAT32_X=0.0~%float32 FLOAT32_Y=-3.14159~%float32 FLOAT32_Z=12345.78~%byte SELECT_X=1~%byte SELECT_Y=2~%byte SELECT_Z=3~%byte selection~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ConstantsMultiplex-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ConstantsMultiplex-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ConstantsMultiplex-request
    (cl:cons ':selection (selection msg))
))
;//! \htmlinclude ConstantsMultiplex-response.msg.html

(cl:defclass <ConstantsMultiplex-response> (roslisp-msg-protocol:ros-message)
  ((select_confirm
    :reader select_confirm
    :initarg :select_confirm
    :type cl:integer
    :initform 0)
   (ret_byte
    :reader ret_byte
    :initarg :ret_byte
    :type cl:integer
    :initform 0)
   (ret_int32
    :reader ret_int32
    :initarg :ret_int32
    :type cl:integer
    :initform 0)
   (ret_uint32
    :reader ret_uint32
    :initarg :ret_uint32
    :type cl:integer
    :initform 0)
   (ret_float32
    :reader ret_float32
    :initarg :ret_float32
    :type cl:float
    :initform 0.0))
)

(cl:defclass ConstantsMultiplex-response (<ConstantsMultiplex-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ConstantsMultiplex-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ConstantsMultiplex-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name test_rospy-srv:<ConstantsMultiplex-response> is deprecated: use test_rospy-srv:ConstantsMultiplex-response instead.")))

(cl:ensure-generic-function 'select_confirm-val :lambda-list '(m))
(cl:defmethod select_confirm-val ((m <ConstantsMultiplex-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_rospy-srv:select_confirm-val is deprecated.  Use test_rospy-srv:select_confirm instead.")
  (select_confirm m))

(cl:ensure-generic-function 'ret_byte-val :lambda-list '(m))
(cl:defmethod ret_byte-val ((m <ConstantsMultiplex-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_rospy-srv:ret_byte-val is deprecated.  Use test_rospy-srv:ret_byte instead.")
  (ret_byte m))

(cl:ensure-generic-function 'ret_int32-val :lambda-list '(m))
(cl:defmethod ret_int32-val ((m <ConstantsMultiplex-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_rospy-srv:ret_int32-val is deprecated.  Use test_rospy-srv:ret_int32 instead.")
  (ret_int32 m))

(cl:ensure-generic-function 'ret_uint32-val :lambda-list '(m))
(cl:defmethod ret_uint32-val ((m <ConstantsMultiplex-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_rospy-srv:ret_uint32-val is deprecated.  Use test_rospy-srv:ret_uint32 instead.")
  (ret_uint32 m))

(cl:ensure-generic-function 'ret_float32-val :lambda-list '(m))
(cl:defmethod ret_float32-val ((m <ConstantsMultiplex-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_rospy-srv:ret_float32-val is deprecated.  Use test_rospy-srv:ret_float32 instead.")
  (ret_float32 m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ConstantsMultiplex-response>)))
    "Constants for message type '<ConstantsMultiplex-response>"
  '((:CONFIRM_X . 1)
    (:CONFIRM_Y . 2)
    (:CONFIRM_Z . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ConstantsMultiplex-response)))
    "Constants for message type 'ConstantsMultiplex-response"
  '((:CONFIRM_X . 1)
    (:CONFIRM_Y . 2)
    (:CONFIRM_Z . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ConstantsMultiplex-response>) ostream)
  "Serializes a message object of type '<ConstantsMultiplex-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'select_confirm)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ret_byte)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'ret_int32)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ret_uint32)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ret_uint32)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ret_uint32)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ret_uint32)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'ret_float32))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ConstantsMultiplex-response>) istream)
  "Deserializes a message object of type '<ConstantsMultiplex-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'select_confirm)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ret_byte)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ret_int32) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ret_uint32)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ret_uint32)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ret_uint32)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ret_uint32)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ret_float32) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ConstantsMultiplex-response>)))
  "Returns string type for a service object of type '<ConstantsMultiplex-response>"
  "test_rospy/ConstantsMultiplexResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ConstantsMultiplex-response)))
  "Returns string type for a service object of type 'ConstantsMultiplex-response"
  "test_rospy/ConstantsMultiplexResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ConstantsMultiplex-response>)))
  "Returns md5sum for a message object of type '<ConstantsMultiplex-response>"
  "bab86066b3f7801cb25df3932f644396")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ConstantsMultiplex-response)))
  "Returns md5sum for a message object of type 'ConstantsMultiplex-response"
  "bab86066b3f7801cb25df3932f644396")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ConstantsMultiplex-response>)))
  "Returns full string definition for message of type '<ConstantsMultiplex-response>"
  (cl:format cl:nil "~%byte CONFIRM_X=1~%byte CONFIRM_Y=2~%byte CONFIRM_Z=3~%byte select_confirm~%byte ret_byte~%int32 ret_int32~%uint32 ret_uint32~%float32 ret_float32~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ConstantsMultiplex-response)))
  "Returns full string definition for message of type 'ConstantsMultiplex-response"
  (cl:format cl:nil "~%byte CONFIRM_X=1~%byte CONFIRM_Y=2~%byte CONFIRM_Z=3~%byte select_confirm~%byte ret_byte~%int32 ret_int32~%uint32 ret_uint32~%float32 ret_float32~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ConstantsMultiplex-response>))
  (cl:+ 0
     1
     1
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ConstantsMultiplex-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ConstantsMultiplex-response
    (cl:cons ':select_confirm (select_confirm msg))
    (cl:cons ':ret_byte (ret_byte msg))
    (cl:cons ':ret_int32 (ret_int32 msg))
    (cl:cons ':ret_uint32 (ret_uint32 msg))
    (cl:cons ':ret_float32 (ret_float32 msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ConstantsMultiplex)))
  'ConstantsMultiplex-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ConstantsMultiplex)))
  'ConstantsMultiplex-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ConstantsMultiplex)))
  "Returns string type for a service object of type '<ConstantsMultiplex>"
  "test_rospy/ConstantsMultiplex")