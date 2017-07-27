; Auto-generated. Do not edit!


(cl:in-package test_rostopic-msg)


;//! \htmlinclude Floats.msg.html

(cl:defclass <Floats> (roslisp-msg-protocol:ros-message)
  ((float32
    :reader float32
    :initarg :float32
    :type cl:float
    :initform 0.0)
   (float64
    :reader float64
    :initarg :float64
    :type cl:float
    :initform 0.0))
)

(cl:defclass Floats (<Floats>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Floats>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Floats)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name test_rostopic-msg:<Floats> is deprecated: use test_rostopic-msg:Floats instead.")))

(cl:ensure-generic-function 'float32-val :lambda-list '(m))
(cl:defmethod float32-val ((m <Floats>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_rostopic-msg:float32-val is deprecated.  Use test_rostopic-msg:float32 instead.")
  (float32 m))

(cl:ensure-generic-function 'float64-val :lambda-list '(m))
(cl:defmethod float64-val ((m <Floats>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_rostopic-msg:float64-val is deprecated.  Use test_rostopic-msg:float64 instead.")
  (float64 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Floats>) ostream)
  "Serializes a message object of type '<Floats>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'float32))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'float64))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Floats>) istream)
  "Deserializes a message object of type '<Floats>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'float32) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'float64) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Floats>)))
  "Returns string type for a message object of type '<Floats>"
  "test_rostopic/Floats")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Floats)))
  "Returns string type for a message object of type 'Floats"
  "test_rostopic/Floats")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Floats>)))
  "Returns md5sum for a message object of type '<Floats>"
  "1ee8aba2d870f75f2b5916e2cddbd928")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Floats)))
  "Returns md5sum for a message object of type 'Floats"
  "1ee8aba2d870f75f2b5916e2cddbd928")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Floats>)))
  "Returns full string definition for message of type '<Floats>"
  (cl:format cl:nil "# for rostopic tests~%float32 float32~%float64 float64~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Floats)))
  "Returns full string definition for message of type 'Floats"
  (cl:format cl:nil "# for rostopic tests~%float32 float32~%float64 float64~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Floats>))
  (cl:+ 0
     4
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Floats>))
  "Converts a ROS message object to a list"
  (cl:list 'Floats
    (cl:cons ':float32 (float32 msg))
    (cl:cons ':float64 (float64 msg))
))
