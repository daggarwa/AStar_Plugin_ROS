; Auto-generated. Do not edit!


(cl:in-package test_rosmaster-msg)


;//! \htmlinclude TestString.msg.html

(cl:defclass <TestString> (roslisp-msg-protocol:ros-message)
  ((caller_id
    :reader caller_id
    :initarg :caller_id
    :type cl:string
    :initform "")
   (orig_caller_id
    :reader orig_caller_id
    :initarg :orig_caller_id
    :type cl:string
    :initform "")
   (data
    :reader data
    :initarg :data
    :type cl:string
    :initform ""))
)

(cl:defclass TestString (<TestString>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TestString>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TestString)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name test_rosmaster-msg:<TestString> is deprecated: use test_rosmaster-msg:TestString instead.")))

(cl:ensure-generic-function 'caller_id-val :lambda-list '(m))
(cl:defmethod caller_id-val ((m <TestString>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_rosmaster-msg:caller_id-val is deprecated.  Use test_rosmaster-msg:caller_id instead.")
  (caller_id m))

(cl:ensure-generic-function 'orig_caller_id-val :lambda-list '(m))
(cl:defmethod orig_caller_id-val ((m <TestString>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_rosmaster-msg:orig_caller_id-val is deprecated.  Use test_rosmaster-msg:orig_caller_id instead.")
  (orig_caller_id m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <TestString>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_rosmaster-msg:data-val is deprecated.  Use test_rosmaster-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TestString>) ostream)
  "Serializes a message object of type '<TestString>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'caller_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'caller_id))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'orig_caller_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'orig_caller_id))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TestString>) istream)
  "Deserializes a message object of type '<TestString>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'caller_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'caller_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'orig_caller_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'orig_caller_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'data) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'data) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TestString>)))
  "Returns string type for a message object of type '<TestString>"
  "test_rosmaster/TestString")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TestString)))
  "Returns string type for a message object of type 'TestString"
  "test_rosmaster/TestString")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TestString>)))
  "Returns md5sum for a message object of type '<TestString>"
  "334ff4377be93faa44ebc66d23d40fd3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TestString)))
  "Returns md5sum for a message object of type 'TestString"
  "334ff4377be93faa44ebc66d23d40fd3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TestString>)))
  "Returns full string definition for message of type '<TestString>"
  (cl:format cl:nil "# Integration test message~%# caller_id of most recent node to send this message~%string caller_id~%# caller_id of the original node to send this message~%string orig_caller_id~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TestString)))
  "Returns full string definition for message of type 'TestString"
  (cl:format cl:nil "# Integration test message~%# caller_id of most recent node to send this message~%string caller_id~%# caller_id of the original node to send this message~%string orig_caller_id~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TestString>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'caller_id))
     4 (cl:length (cl:slot-value msg 'orig_caller_id))
     4 (cl:length (cl:slot-value msg 'data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TestString>))
  "Converts a ROS message object to a list"
  (cl:list 'TestString
    (cl:cons ':caller_id (caller_id msg))
    (cl:cons ':orig_caller_id (orig_caller_id msg))
    (cl:cons ':data (data msg))
))
