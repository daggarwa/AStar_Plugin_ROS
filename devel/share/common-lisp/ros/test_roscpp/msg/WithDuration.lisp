; Auto-generated. Do not edit!


(cl:in-package test_roscpp-msg)


;//! \htmlinclude WithDuration.msg.html

(cl:defclass <WithDuration> (roslisp-msg-protocol:ros-message)
  ((my_duration
    :reader my_duration
    :initarg :my_duration
    :type cl:real
    :initform 0))
)

(cl:defclass WithDuration (<WithDuration>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WithDuration>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WithDuration)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name test_roscpp-msg:<WithDuration> is deprecated: use test_roscpp-msg:WithDuration instead.")))

(cl:ensure-generic-function 'my_duration-val :lambda-list '(m))
(cl:defmethod my_duration-val ((m <WithDuration>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_roscpp-msg:my_duration-val is deprecated.  Use test_roscpp-msg:my_duration instead.")
  (my_duration m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WithDuration>) ostream)
  "Serializes a message object of type '<WithDuration>"
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'my_duration)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'my_duration) (cl:floor (cl:slot-value msg 'my_duration)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WithDuration>) istream)
  "Deserializes a message object of type '<WithDuration>"
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'my_duration) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WithDuration>)))
  "Returns string type for a message object of type '<WithDuration>"
  "test_roscpp/WithDuration")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WithDuration)))
  "Returns string type for a message object of type 'WithDuration"
  "test_roscpp/WithDuration")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WithDuration>)))
  "Returns md5sum for a message object of type '<WithDuration>"
  "7ad52ba9d0229ba8b9c032400c77c367")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WithDuration)))
  "Returns md5sum for a message object of type 'WithDuration"
  "7ad52ba9d0229ba8b9c032400c77c367")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WithDuration>)))
  "Returns full string definition for message of type '<WithDuration>"
  (cl:format cl:nil "duration my_duration~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WithDuration)))
  "Returns full string definition for message of type 'WithDuration"
  (cl:format cl:nil "duration my_duration~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WithDuration>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WithDuration>))
  "Converts a ROS message object to a list"
  (cl:list 'WithDuration
    (cl:cons ':my_duration (my_duration msg))
))
