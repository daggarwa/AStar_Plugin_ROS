; Auto-generated. Do not edit!


(cl:in-package test_rosbag-msg)


;//! \htmlinclude Renamed4.msg.html

(cl:defclass <Renamed4> (roslisp-msg-protocol:ros-message)
  ((foo
    :reader foo
    :initarg :foo
    :type cl:float
    :initform 0.0)
   (bar
    :reader bar
    :initarg :bar
    :type (cl:vector cl:integer)
   :initform (cl:make-array 4 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass Renamed4 (<Renamed4>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Renamed4>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Renamed4)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name test_rosbag-msg:<Renamed4> is deprecated: use test_rosbag-msg:Renamed4 instead.")))

(cl:ensure-generic-function 'foo-val :lambda-list '(m))
(cl:defmethod foo-val ((m <Renamed4>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_rosbag-msg:foo-val is deprecated.  Use test_rosbag-msg:foo instead.")
  (foo m))

(cl:ensure-generic-function 'bar-val :lambda-list '(m))
(cl:defmethod bar-val ((m <Renamed4>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_rosbag-msg:bar-val is deprecated.  Use test_rosbag-msg:bar instead.")
  (bar m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Renamed4>) ostream)
  "Serializes a message object of type '<Renamed4>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'foo))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'bar))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Renamed4>) istream)
  "Deserializes a message object of type '<Renamed4>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'foo) (roslisp-utils:decode-double-float-bits bits)))
  (cl:setf (cl:slot-value msg 'bar) (cl:make-array 4))
  (cl:let ((vals (cl:slot-value msg 'bar)))
    (cl:dotimes (i 4)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Renamed4>)))
  "Returns string type for a message object of type '<Renamed4>"
  "test_rosbag/Renamed4")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Renamed4)))
  "Returns string type for a message object of type 'Renamed4"
  "test_rosbag/Renamed4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Renamed4>)))
  "Returns md5sum for a message object of type '<Renamed4>"
  "dd19d6452bb5e45bb900f81fed30ae83")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Renamed4)))
  "Returns md5sum for a message object of type 'Renamed4"
  "dd19d6452bb5e45bb900f81fed30ae83")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Renamed4>)))
  "Returns full string definition for message of type '<Renamed4>"
  (cl:format cl:nil "float64  foo  # 2.17~%int32[4] bar  # [8, 2, 5, 1]~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Renamed4)))
  "Returns full string definition for message of type 'Renamed4"
  (cl:format cl:nil "float64  foo  # 2.17~%int32[4] bar  # [8, 2, 5, 1]~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Renamed4>))
  (cl:+ 0
     8
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'bar) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Renamed4>))
  "Converts a ROS message object to a list"
  (cl:list 'Renamed4
    (cl:cons ':foo (foo msg))
    (cl:cons ':bar (bar msg))
))
