; Auto-generated. Do not edit!


(cl:in-package test_rospy-msg)


;//! \htmlinclude TransitiveImport.msg.html

(cl:defclass <TransitiveImport> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type test_rospy-msg:EmbedTest
    :initform (cl:make-instance 'test_rospy-msg:EmbedTest)))
)

(cl:defclass TransitiveImport (<TransitiveImport>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TransitiveImport>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TransitiveImport)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name test_rospy-msg:<TransitiveImport> is deprecated: use test_rospy-msg:TransitiveImport instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <TransitiveImport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_rospy-msg:data-val is deprecated.  Use test_rospy-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TransitiveImport>) ostream)
  "Serializes a message object of type '<TransitiveImport>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'data) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TransitiveImport>) istream)
  "Deserializes a message object of type '<TransitiveImport>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'data) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TransitiveImport>)))
  "Returns string type for a message object of type '<TransitiveImport>"
  "test_rospy/TransitiveImport")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TransitiveImport)))
  "Returns string type for a message object of type 'TransitiveImport"
  "test_rospy/TransitiveImport")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TransitiveImport>)))
  "Returns md5sum for a message object of type '<TransitiveImport>"
  "27665539bacd6d2d02a7538692d3d3d0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TransitiveImport)))
  "Returns md5sum for a message object of type 'TransitiveImport"
  "27665539bacd6d2d02a7538692d3d3d0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TransitiveImport>)))
  "Returns full string definition for message of type '<TransitiveImport>"
  (cl:format cl:nil "# Bug #2133/2139: EmbedTest uses std_msgs, so TransitiveImport needs it as well~%EmbedTest data~%================================================================================~%MSG: test_rospy/EmbedTest~%std_msgs/String str1~%std_msgs/Int32 int1~%std_msgs/Int32[] ints~%Val val~%Val[] vals~%ArrayVal[] arrayval~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%================================================================================~%MSG: std_msgs/Int32~%int32 data~%================================================================================~%MSG: test_rospy/Val~%string val~%================================================================================~%MSG: test_rospy/ArrayVal~%Val[] vals~%#Val[10] vals_fixed~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TransitiveImport)))
  "Returns full string definition for message of type 'TransitiveImport"
  (cl:format cl:nil "# Bug #2133/2139: EmbedTest uses std_msgs, so TransitiveImport needs it as well~%EmbedTest data~%================================================================================~%MSG: test_rospy/EmbedTest~%std_msgs/String str1~%std_msgs/Int32 int1~%std_msgs/Int32[] ints~%Val val~%Val[] vals~%ArrayVal[] arrayval~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%================================================================================~%MSG: std_msgs/Int32~%int32 data~%================================================================================~%MSG: test_rospy/Val~%string val~%================================================================================~%MSG: test_rospy/ArrayVal~%Val[] vals~%#Val[10] vals_fixed~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TransitiveImport>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TransitiveImport>))
  "Converts a ROS message object to a list"
  (cl:list 'TransitiveImport
    (cl:cons ':data (data msg))
))
