; Auto-generated. Do not edit!


(cl:in-package test_roslib_comm-msg)


;//! \htmlinclude ArrayOfMsgs.msg.html

(cl:defclass <ArrayOfMsgs> (roslisp-msg-protocol:ros-message)
  ((strings
    :reader strings
    :initarg :strings
    :type (cl:vector std_msgs-msg:String)
   :initform (cl:make-array 0 :element-type 'std_msgs-msg:String :initial-element (cl:make-instance 'std_msgs-msg:String)))
   (times
    :reader times
    :initarg :times
    :type (cl:vector std_msgs-msg:Time)
   :initform (cl:make-array 0 :element-type 'std_msgs-msg:Time :initial-element (cl:make-instance 'std_msgs-msg:Time)))
   (muls
    :reader muls
    :initarg :muls
    :type (cl:vector std_msgs-msg:MultiArrayLayout)
   :initform (cl:make-array 0 :element-type 'std_msgs-msg:MultiArrayLayout :initial-element (cl:make-instance 'std_msgs-msg:MultiArrayLayout))))
)

(cl:defclass ArrayOfMsgs (<ArrayOfMsgs>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ArrayOfMsgs>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ArrayOfMsgs)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name test_roslib_comm-msg:<ArrayOfMsgs> is deprecated: use test_roslib_comm-msg:ArrayOfMsgs instead.")))

(cl:ensure-generic-function 'strings-val :lambda-list '(m))
(cl:defmethod strings-val ((m <ArrayOfMsgs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_roslib_comm-msg:strings-val is deprecated.  Use test_roslib_comm-msg:strings instead.")
  (strings m))

(cl:ensure-generic-function 'times-val :lambda-list '(m))
(cl:defmethod times-val ((m <ArrayOfMsgs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_roslib_comm-msg:times-val is deprecated.  Use test_roslib_comm-msg:times instead.")
  (times m))

(cl:ensure-generic-function 'muls-val :lambda-list '(m))
(cl:defmethod muls-val ((m <ArrayOfMsgs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_roslib_comm-msg:muls-val is deprecated.  Use test_roslib_comm-msg:muls instead.")
  (muls m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ArrayOfMsgs>) ostream)
  "Serializes a message object of type '<ArrayOfMsgs>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'strings))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'strings))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'times))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'times))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'muls))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'muls))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ArrayOfMsgs>) istream)
  "Deserializes a message object of type '<ArrayOfMsgs>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'strings) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'strings)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'std_msgs-msg:String))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'times) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'times)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'std_msgs-msg:Time))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'muls) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'muls)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'std_msgs-msg:MultiArrayLayout))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ArrayOfMsgs>)))
  "Returns string type for a message object of type '<ArrayOfMsgs>"
  "test_roslib_comm/ArrayOfMsgs")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ArrayOfMsgs)))
  "Returns string type for a message object of type 'ArrayOfMsgs"
  "test_roslib_comm/ArrayOfMsgs")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ArrayOfMsgs>)))
  "Returns md5sum for a message object of type '<ArrayOfMsgs>"
  "1f4cf3ffabe2555a0cfe19c974f01a01")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ArrayOfMsgs)))
  "Returns md5sum for a message object of type 'ArrayOfMsgs"
  "1f4cf3ffabe2555a0cfe19c974f01a01")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ArrayOfMsgs>)))
  "Returns full string definition for message of type '<ArrayOfMsgs>"
  (cl:format cl:nil "std_msgs/String[] strings~%std_msgs/Time[] times~%std_msgs/MultiArrayLayout[] muls~%================================================================================~%MSG: std_msgs/String~%string data~%~%================================================================================~%MSG: std_msgs/Time~%time data~%~%================================================================================~%MSG: std_msgs/MultiArrayLayout~%# The multiarray declares a generic multi-dimensional array of a~%# particular data type.  Dimensions are ordered from outer most~%# to inner most.~%~%MultiArrayDimension[] dim # Array of dimension properties~%uint32 data_offset        # padding elements at front of data~%~%# Accessors should ALWAYS be written in terms of dimension stride~%# and specified outer-most dimension first.~%# ~%# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]~%#~%# A standard, 3-channel 640x480 image with interleaved color channels~%# would be specified as:~%#~%# dim[0].label  = \"height\"~%# dim[0].size   = 480~%# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)~%# dim[1].label  = \"width\"~%# dim[1].size   = 640~%# dim[1].stride = 3*640 = 1920~%# dim[2].label  = \"channel\"~%# dim[2].size   = 3~%# dim[2].stride = 3~%#~%# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.~%~%================================================================================~%MSG: std_msgs/MultiArrayDimension~%string label   # label of given dimension~%uint32 size    # size of given dimension (in type units)~%uint32 stride  # stride of given dimension~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ArrayOfMsgs)))
  "Returns full string definition for message of type 'ArrayOfMsgs"
  (cl:format cl:nil "std_msgs/String[] strings~%std_msgs/Time[] times~%std_msgs/MultiArrayLayout[] muls~%================================================================================~%MSG: std_msgs/String~%string data~%~%================================================================================~%MSG: std_msgs/Time~%time data~%~%================================================================================~%MSG: std_msgs/MultiArrayLayout~%# The multiarray declares a generic multi-dimensional array of a~%# particular data type.  Dimensions are ordered from outer most~%# to inner most.~%~%MultiArrayDimension[] dim # Array of dimension properties~%uint32 data_offset        # padding elements at front of data~%~%# Accessors should ALWAYS be written in terms of dimension stride~%# and specified outer-most dimension first.~%# ~%# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]~%#~%# A standard, 3-channel 640x480 image with interleaved color channels~%# would be specified as:~%#~%# dim[0].label  = \"height\"~%# dim[0].size   = 480~%# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)~%# dim[1].label  = \"width\"~%# dim[1].size   = 640~%# dim[1].stride = 3*640 = 1920~%# dim[2].label  = \"channel\"~%# dim[2].size   = 3~%# dim[2].stride = 3~%#~%# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.~%~%================================================================================~%MSG: std_msgs/MultiArrayDimension~%string label   # label of given dimension~%uint32 size    # size of given dimension (in type units)~%uint32 stride  # stride of given dimension~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ArrayOfMsgs>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'strings) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'times) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'muls) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ArrayOfMsgs>))
  "Converts a ROS message object to a list"
  (cl:list 'ArrayOfMsgs
    (cl:cons ':strings (strings msg))
    (cl:cons ':times (times msg))
    (cl:cons ':muls (muls msg))
))
