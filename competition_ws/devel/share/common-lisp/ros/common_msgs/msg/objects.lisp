; Auto-generated. Do not edit!


(cl:in-package common_msgs-msg)


;//! \htmlinclude objects.msg.html

(cl:defclass <objects> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (num
    :reader num
    :initarg :num
    :type cl:integer
    :initform 0)
   (objects
    :reader objects
    :initarg :objects
    :type (cl:vector common_msgs-msg:object)
   :initform (cl:make-array 0 :element-type 'common_msgs-msg:object :initial-element (cl:make-instance 'common_msgs-msg:object))))
)

(cl:defclass objects (<objects>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <objects>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'objects)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name common_msgs-msg:<objects> is deprecated: use common_msgs-msg:objects instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <objects>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:header-val is deprecated.  Use common_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'num-val :lambda-list '(m))
(cl:defmethod num-val ((m <objects>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:num-val is deprecated.  Use common_msgs-msg:num instead.")
  (num m))

(cl:ensure-generic-function 'objects-val :lambda-list '(m))
(cl:defmethod objects-val ((m <objects>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:objects-val is deprecated.  Use common_msgs-msg:objects instead.")
  (objects m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <objects>) ostream)
  "Serializes a message object of type '<objects>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'num)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'objects))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'objects))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <objects>) istream)
  "Deserializes a message object of type '<objects>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'num) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'objects) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'objects)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'common_msgs-msg:object))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<objects>)))
  "Returns string type for a message object of type '<objects>"
  "common_msgs/objects")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'objects)))
  "Returns string type for a message object of type 'objects"
  "common_msgs/objects")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<objects>)))
  "Returns md5sum for a message object of type '<objects>"
  "ed31e297e0290d75c5fb045bbeea74cb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'objects)))
  "Returns md5sum for a message object of type 'objects"
  "ed31e297e0290d75c5fb045bbeea74cb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<objects>)))
  "Returns full string definition for message of type '<objects>"
  (cl:format cl:nil "std_msgs/Header  header~%int32 num                                #目标数量~%object[] objects                         #目标描述~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: common_msgs/object~%uint32 Object_ID                        #目标的ID编号~%float32 Object_DistLong                 #目标的纵向距离~%float32 Object_DistLat                  #目标的横向距离~%float32 Object_VrelLong                 #目标的纵向相对速度~%float32 Object_VrelLat                  #目标的横向相对速度~%uint32 Object_DynProp                   #目标的运动状态~%float32 Object_ArelLong                 #目标的纵向加速度~%float32 Object_ArelLat                  #目标的横向加速度~%uint32 Object_Class                     #目标的分类~%float32 Object_Length                   #目标的长度~%float32 Object_Width                    #目标的宽度~%uint32 Object_ProbOfExist               #目标置信度~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'objects)))
  "Returns full string definition for message of type 'objects"
  (cl:format cl:nil "std_msgs/Header  header~%int32 num                                #目标数量~%object[] objects                         #目标描述~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: common_msgs/object~%uint32 Object_ID                        #目标的ID编号~%float32 Object_DistLong                 #目标的纵向距离~%float32 Object_DistLat                  #目标的横向距离~%float32 Object_VrelLong                 #目标的纵向相对速度~%float32 Object_VrelLat                  #目标的横向相对速度~%uint32 Object_DynProp                   #目标的运动状态~%float32 Object_ArelLong                 #目标的纵向加速度~%float32 Object_ArelLat                  #目标的横向加速度~%uint32 Object_Class                     #目标的分类~%float32 Object_Length                   #目标的长度~%float32 Object_Width                    #目标的宽度~%uint32 Object_ProbOfExist               #目标置信度~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <objects>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'objects) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <objects>))
  "Converts a ROS message object to a list"
  (cl:list 'objects
    (cl:cons ':header (header msg))
    (cl:cons ':num (num msg))
    (cl:cons ':objects (objects msg))
))
