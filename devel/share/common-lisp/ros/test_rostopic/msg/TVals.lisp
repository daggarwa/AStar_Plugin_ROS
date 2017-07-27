; Auto-generated. Do not edit!


(cl:in-package test_rostopic-msg)


;//! \htmlinclude TVals.msg.html

(cl:defclass <TVals> (roslisp-msg-protocol:ros-message)
  ((t
    :reader t
    :initarg :t
    :type cl:real
    :initform 0)
   (d
    :reader d
    :initarg :d
    :type cl:real
    :initform 0))
)

(cl:defclass TVals (<TVals>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TVals>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TVals)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name test_rostopic-msg:<TVals> is deprecated: use test_rostopic-msg:TVals instead.")))

(cl:ensure-generic-function 't-val :lambda-list '(m))
(cl:defmethod t-val ((m <TVals>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_rostopic-msg:t-val is deprecated.  Use test_rostopic-msg:t instead.")
  (t m))

(cl:ensure-generic-function 'd-val :lambda-list '(m))
(cl:defmethod d-val ((m <TVals>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_rostopic-msg:d-val is deprecated.  Use test_rostopic-msg:d instead.")
  (d m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TVals>) ostream)
  "Serializes a message object of type '<TVals>"
  (cl:let ((__sec (cl:floor (cl:slot-value msg 't)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 't) (cl:floor (cl:slot-value msg 't)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'd)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'd) (cl:floor (cl:slot-value msg 'd)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TVals>) istream)
  "Deserializes a message object of type '<TVals>"
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 't) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'd) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TVals>)))
  "Returns string type for a message object of type '<TVals>"
  "test_rostopic/TVals")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TVals)))
  "Returns string type for a message object of type 'TVals"
  "test_rostopic/TVals")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TVals>)))
  "Returns md5sum for a message object of type '<TVals>"
  "ae4d4f9600b9ab683a5dc9372c031758")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TVals)))
  "Returns md5sum for a message object of type 'TVals"
  "ae4d4f9600b9ab683a5dc9372c031758")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TVals>)))
  "Returns full string definition for message of type '<TVals>"
  (cl:format cl:nil "# for rostopic tests~%time t~%duration d~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TVals)))
  "Returns full string definition for message of type 'TVals"
  (cl:format cl:nil "# for rostopic tests~%time t~%duration d~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TVals>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TVals>))
  "Converts a ROS message object to a list"
  (cl:list 'TVals
    (cl:cons ':t (t msg))
    (cl:cons ':d (d msg))
))
