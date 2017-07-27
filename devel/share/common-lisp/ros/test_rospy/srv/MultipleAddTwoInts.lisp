; Auto-generated. Do not edit!


(cl:in-package test_rospy-srv)


;//! \htmlinclude MultipleAddTwoInts-request.msg.html

(cl:defclass <MultipleAddTwoInts-request> (roslisp-msg-protocol:ros-message)
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

(cl:defclass MultipleAddTwoInts-request (<MultipleAddTwoInts-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MultipleAddTwoInts-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MultipleAddTwoInts-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name test_rospy-srv:<MultipleAddTwoInts-request> is deprecated: use test_rospy-srv:MultipleAddTwoInts-request instead.")))

(cl:ensure-generic-function 'a-val :lambda-list '(m))
(cl:defmethod a-val ((m <MultipleAddTwoInts-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_rospy-srv:a-val is deprecated.  Use test_rospy-srv:a instead.")
  (a m))

(cl:ensure-generic-function 'b-val :lambda-list '(m))
(cl:defmethod b-val ((m <MultipleAddTwoInts-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_rospy-srv:b-val is deprecated.  Use test_rospy-srv:b instead.")
  (b m))

(cl:ensure-generic-function 'c-val :lambda-list '(m))
(cl:defmethod c-val ((m <MultipleAddTwoInts-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_rospy-srv:c-val is deprecated.  Use test_rospy-srv:c instead.")
  (c m))

(cl:ensure-generic-function 'd-val :lambda-list '(m))
(cl:defmethod d-val ((m <MultipleAddTwoInts-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_rospy-srv:d-val is deprecated.  Use test_rospy-srv:d instead.")
  (d m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MultipleAddTwoInts-request>) ostream)
  "Serializes a message object of type '<MultipleAddTwoInts-request>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MultipleAddTwoInts-request>) istream)
  "Deserializes a message object of type '<MultipleAddTwoInts-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MultipleAddTwoInts-request>)))
  "Returns string type for a service object of type '<MultipleAddTwoInts-request>"
  "test_rospy/MultipleAddTwoIntsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MultipleAddTwoInts-request)))
  "Returns string type for a service object of type 'MultipleAddTwoInts-request"
  "test_rospy/MultipleAddTwoIntsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MultipleAddTwoInts-request>)))
  "Returns md5sum for a message object of type '<MultipleAddTwoInts-request>"
  "51899e11b54a9c6a1153d9517a921791")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MultipleAddTwoInts-request)))
  "Returns md5sum for a message object of type 'MultipleAddTwoInts-request"
  "51899e11b54a9c6a1153d9517a921791")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MultipleAddTwoInts-request>)))
  "Returns full string definition for message of type '<MultipleAddTwoInts-request>"
  (cl:format cl:nil "~%int32 a~%int32 b~%int32 c~%int32 d~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MultipleAddTwoInts-request)))
  "Returns full string definition for message of type 'MultipleAddTwoInts-request"
  (cl:format cl:nil "~%int32 a~%int32 b~%int32 c~%int32 d~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MultipleAddTwoInts-request>))
  (cl:+ 0
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MultipleAddTwoInts-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MultipleAddTwoInts-request
    (cl:cons ':a (a msg))
    (cl:cons ':b (b msg))
    (cl:cons ':c (c msg))
    (cl:cons ':d (d msg))
))
;//! \htmlinclude MultipleAddTwoInts-response.msg.html

(cl:defclass <MultipleAddTwoInts-response> (roslisp-msg-protocol:ros-message)
  ((ab
    :reader ab
    :initarg :ab
    :type cl:integer
    :initform 0)
   (cd
    :reader cd
    :initarg :cd
    :type cl:integer
    :initform 0))
)

(cl:defclass MultipleAddTwoInts-response (<MultipleAddTwoInts-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MultipleAddTwoInts-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MultipleAddTwoInts-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name test_rospy-srv:<MultipleAddTwoInts-response> is deprecated: use test_rospy-srv:MultipleAddTwoInts-response instead.")))

(cl:ensure-generic-function 'ab-val :lambda-list '(m))
(cl:defmethod ab-val ((m <MultipleAddTwoInts-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_rospy-srv:ab-val is deprecated.  Use test_rospy-srv:ab instead.")
  (ab m))

(cl:ensure-generic-function 'cd-val :lambda-list '(m))
(cl:defmethod cd-val ((m <MultipleAddTwoInts-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_rospy-srv:cd-val is deprecated.  Use test_rospy-srv:cd instead.")
  (cd m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MultipleAddTwoInts-response>) ostream)
  "Serializes a message object of type '<MultipleAddTwoInts-response>"
  (cl:let* ((signed (cl:slot-value msg 'ab)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'cd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MultipleAddTwoInts-response>) istream)
  "Deserializes a message object of type '<MultipleAddTwoInts-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ab) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cd) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MultipleAddTwoInts-response>)))
  "Returns string type for a service object of type '<MultipleAddTwoInts-response>"
  "test_rospy/MultipleAddTwoIntsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MultipleAddTwoInts-response)))
  "Returns string type for a service object of type 'MultipleAddTwoInts-response"
  "test_rospy/MultipleAddTwoIntsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MultipleAddTwoInts-response>)))
  "Returns md5sum for a message object of type '<MultipleAddTwoInts-response>"
  "51899e11b54a9c6a1153d9517a921791")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MultipleAddTwoInts-response)))
  "Returns md5sum for a message object of type 'MultipleAddTwoInts-response"
  "51899e11b54a9c6a1153d9517a921791")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MultipleAddTwoInts-response>)))
  "Returns full string definition for message of type '<MultipleAddTwoInts-response>"
  (cl:format cl:nil "int32 ab~%int32 cd~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MultipleAddTwoInts-response)))
  "Returns full string definition for message of type 'MultipleAddTwoInts-response"
  (cl:format cl:nil "int32 ab~%int32 cd~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MultipleAddTwoInts-response>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MultipleAddTwoInts-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MultipleAddTwoInts-response
    (cl:cons ':ab (ab msg))
    (cl:cons ':cd (cd msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MultipleAddTwoInts)))
  'MultipleAddTwoInts-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MultipleAddTwoInts)))
  'MultipleAddTwoInts-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MultipleAddTwoInts)))
  "Returns string type for a service object of type '<MultipleAddTwoInts>"
  "test_rospy/MultipleAddTwoInts")