; Auto-generated. Do not edit!


(cl:in-package test_roscpp-msg)


;//! \htmlinclude WithTime.msg.html

(cl:defclass <WithTime> (roslisp-msg-protocol:ros-message)
  ((my_time
    :reader my_time
    :initarg :my_time
    :type cl:real
    :initform 0))
)

(cl:defclass WithTime (<WithTime>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WithTime>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WithTime)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name test_roscpp-msg:<WithTime> is deprecated: use test_roscpp-msg:WithTime instead.")))

(cl:ensure-generic-function 'my_time-val :lambda-list '(m))
(cl:defmethod my_time-val ((m <WithTime>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_roscpp-msg:my_time-val is deprecated.  Use test_roscpp-msg:my_time instead.")
  (my_time m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WithTime>) ostream)
  "Serializes a message object of type '<WithTime>"
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'my_time)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'my_time) (cl:floor (cl:slot-value msg 'my_time)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WithTime>) istream)
  "Deserializes a message object of type '<WithTime>"
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'my_time) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WithTime>)))
  "Returns string type for a message object of type '<WithTime>"
  "test_roscpp/WithTime")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WithTime)))
  "Returns string type for a message object of type 'WithTime"
  "test_roscpp/WithTime")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WithTime>)))
  "Returns md5sum for a message object of type '<WithTime>"
  "60f189e40cfeaefbc79e6cdbd1605364")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WithTime)))
  "Returns md5sum for a message object of type 'WithTime"
  "60f189e40cfeaefbc79e6cdbd1605364")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WithTime>)))
  "Returns full string definition for message of type '<WithTime>"
  (cl:format cl:nil "time my_time~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WithTime)))
  "Returns full string definition for message of type 'WithTime"
  (cl:format cl:nil "time my_time~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WithTime>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WithTime>))
  "Converts a ROS message object to a list"
  (cl:list 'WithTime
    (cl:cons ':my_time (my_time msg))
))
