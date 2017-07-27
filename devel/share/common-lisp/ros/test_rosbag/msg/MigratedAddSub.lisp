; Auto-generated. Do not edit!


(cl:in-package test_rosbag-msg)


;//! \htmlinclude MigratedAddSub.msg.html

(cl:defclass <MigratedAddSub> (roslisp-msg-protocol:ros-message)
  ((field1
    :reader field1
    :initarg :field1
    :type test_rosbag-msg:Simple
    :initform (cl:make-instance 'test_rosbag-msg:Simple))
   (field2
    :reader field2
    :initarg :field2
    :type test_rosbag-msg:Simple
    :initform (cl:make-instance 'test_rosbag-msg:Simple)))
)

(cl:defclass MigratedAddSub (<MigratedAddSub>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MigratedAddSub>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MigratedAddSub)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name test_rosbag-msg:<MigratedAddSub> is deprecated: use test_rosbag-msg:MigratedAddSub instead.")))

(cl:ensure-generic-function 'field1-val :lambda-list '(m))
(cl:defmethod field1-val ((m <MigratedAddSub>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_rosbag-msg:field1-val is deprecated.  Use test_rosbag-msg:field1 instead.")
  (field1 m))

(cl:ensure-generic-function 'field2-val :lambda-list '(m))
(cl:defmethod field2-val ((m <MigratedAddSub>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_rosbag-msg:field2-val is deprecated.  Use test_rosbag-msg:field2 instead.")
  (field2 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MigratedAddSub>) ostream)
  "Serializes a message object of type '<MigratedAddSub>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'field1) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'field2) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MigratedAddSub>) istream)
  "Deserializes a message object of type '<MigratedAddSub>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'field1) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'field2) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MigratedAddSub>)))
  "Returns string type for a message object of type '<MigratedAddSub>"
  "test_rosbag/MigratedAddSub")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MigratedAddSub)))
  "Returns string type for a message object of type 'MigratedAddSub"
  "test_rosbag/MigratedAddSub")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MigratedAddSub>)))
  "Returns md5sum for a message object of type '<MigratedAddSub>"
  "f54ff3b9ba622359fa96ac15d4498153")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MigratedAddSub)))
  "Returns md5sum for a message object of type 'MigratedAddSub"
  "f54ff3b9ba622359fa96ac15d4498153")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MigratedAddSub>)))
  "Returns full string definition for message of type '<MigratedAddSub>"
  (cl:format cl:nil "Simple field1~%Simple field2~%================================================================================~%MSG: test_rosbag/Simple~%int32 field1 #42~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MigratedAddSub)))
  "Returns full string definition for message of type 'MigratedAddSub"
  (cl:format cl:nil "Simple field1~%Simple field2~%================================================================================~%MSG: test_rosbag/Simple~%int32 field1 #42~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MigratedAddSub>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'field1))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'field2))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MigratedAddSub>))
  "Converts a ROS message object to a list"
  (cl:list 'MigratedAddSub
    (cl:cons ':field1 (field1 msg))
    (cl:cons ':field2 (field2 msg))
))
