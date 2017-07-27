; Auto-generated. Do not edit!


(cl:in-package test_rospy-srv)


;//! \htmlinclude ListReturn-request.msg.html

(cl:defclass <ListReturn-request> (roslisp-msg-protocol:ros-message)
  ((a
    :reader a
    :initarg :a
    :type cl:integer
    :initform 0)
   (b
    :reader b
    :initarg :b
    :type cl:integer
    :initform 0)
   (c
    :reader c
    :initarg :c
    :type cl:integer
    :initform 0)
   (d
    :reader d
    :initarg :d
    :type cl:integer
    :initform 0))
)

(cl:defclass ListReturn-request (<ListReturn-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ListReturn-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ListReturn-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name test_rospy-srv:<ListReturn-request> is deprecated: use test_rospy-srv:ListReturn-request instead.")))

(cl:ensure-generic-function 'a-val :lambda-list '(m))
(cl:defmethod a-val ((m <ListReturn-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_rospy-srv:a-val is deprecated.  Use test_rospy-srv:a instead.")
  (a m))

(cl:ensure-generic-function 'b-val :lambda-list '(m))
(cl:defmethod b-val ((m <ListReturn-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_rospy-srv:b-val is deprecated.  Use test_rospy-srv:b instead.")
  (b m))

(cl:ensure-generic-function 'c-val :lambda-list '(m))
(cl:defmethod c-val ((m <ListReturn-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_rospy-srv:c-val is deprecated.  Use test_rospy-srv:c instead.")
  (c m))

(cl:ensure-generic-function 'd-val :lambda-list '(m))
(cl:defmethod d-val ((m <ListReturn-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_rospy-srv:d-val is deprecated.  Use test_rospy-srv:d instead.")
  (d m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ListReturn-request>) ostream)
  "Serializes a message object of type '<ListReturn-request>"
  (cl:let* ((signed (cl:slot-value msg 'a)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'b)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'c)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ListReturn-request>) istream)
  "Deserializes a message object of type '<ListReturn-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'a) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'b) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'c) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'd) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ListReturn-request>)))
  "Returns string type for a service object of type '<ListReturn-request>"
  "test_rospy/ListReturnRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ListReturn-request)))
  "Returns string type for a service object of type 'ListReturn-request"
  "test_rospy/ListReturnRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ListReturn-request>)))
  "Returns md5sum for a message object of type '<ListReturn-request>"
  "8083abf57e6eb0ff97ebb506984b66b8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ListReturn-request)))
  "Returns md5sum for a message object of type 'ListReturn-request"
  "8083abf57e6eb0ff97ebb506984b66b8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ListReturn-request>)))
  "Returns full string definition for message of type '<ListReturn-request>"
  (cl:format cl:nil "~%int32 a~%int32 b~%int32 c~%int32 d~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ListReturn-request)))
  "Returns full string definition for message of type 'ListReturn-request"
  (cl:format cl:nil "~%int32 a~%int32 b~%int32 c~%int32 d~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ListReturn-request>))
  (cl:+ 0
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ListReturn-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ListReturn-request
    (cl:cons ':a (a msg))
    (cl:cons ':b (b msg))
    (cl:cons ':c (c msg))
    (cl:cons ':d (d msg))
))
;//! \htmlinclude ListReturn-response.msg.html

(cl:defclass <ListReturn-response> (roslisp-msg-protocol:ros-message)
  ((abcd
    :reader abcd
    :initarg :abcd
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass ListReturn-response (<ListReturn-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ListReturn-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ListReturn-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name test_rospy-srv:<ListReturn-response> is deprecated: use test_rospy-srv:ListReturn-response instead.")))

(cl:ensure-generic-function 'abcd-val :lambda-list '(m))
(cl:defmethod abcd-val ((m <ListReturn-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_rospy-srv:abcd-val is deprecated.  Use test_rospy-srv:abcd instead.")
  (abcd m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ListReturn-response>) ostream)
  "Serializes a message object of type '<ListReturn-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'abcd))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'abcd))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ListReturn-response>) istream)
  "Deserializes a message object of type '<ListReturn-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'abcd) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'abcd)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ListReturn-response>)))
  "Returns string type for a service object of type '<ListReturn-response>"
  "test_rospy/ListReturnResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ListReturn-response)))
  "Returns string type for a service object of type 'ListReturn-response"
  "test_rospy/ListReturnResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ListReturn-response>)))
  "Returns md5sum for a message object of type '<ListReturn-response>"
  "8083abf57e6eb0ff97ebb506984b66b8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ListReturn-response)))
  "Returns md5sum for a message object of type 'ListReturn-response"
  "8083abf57e6eb0ff97ebb506984b66b8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ListReturn-response>)))
  "Returns full string definition for message of type '<ListReturn-response>"
  (cl:format cl:nil "int32[] abcd~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ListReturn-response)))
  "Returns full string definition for message of type 'ListReturn-response"
  (cl:format cl:nil "int32[] abcd~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ListReturn-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'abcd) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ListReturn-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ListReturn-response
    (cl:cons ':abcd (abcd msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ListReturn)))
  'ListReturn-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ListReturn)))
  'ListReturn-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ListReturn)))
  "Returns string type for a service object of type '<ListReturn>"
  "test_rospy/ListReturn")