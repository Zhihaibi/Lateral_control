; Auto-generated. Do not edit!


(cl:in-package common_msgs-msg)


;//! \htmlinclude Vehicle_Feedback.msg.html

(cl:defclass <Vehicle_Feedback> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (V_VehSpdX
    :reader V_VehSpdX
    :initarg :V_VehSpdX
    :type cl:float
    :initform 0.0)
   (V_VehSpdY
    :reader V_VehSpdY
    :initarg :V_VehSpdY
    :type cl:float
    :initform 0.0)
   (V_VehAccelX
    :reader V_VehAccelX
    :initarg :V_VehAccelX
    :type cl:float
    :initform 0.0)
   (V_VehAccelY
    :reader V_VehAccelY
    :initarg :V_VehAccelY
    :type cl:float
    :initform 0.0)
   (V_VehPosYaw
    :reader V_VehPosYaw
    :initarg :V_VehPosYaw
    :type cl:float
    :initform 0.0)
   (V_VehPosX
    :reader V_VehPosX
    :initarg :V_VehPosX
    :type cl:float
    :initform 0.0)
   (V_VehPosY
    :reader V_VehPosY
    :initarg :V_VehPosY
    :type cl:float
    :initform 0.0)
   (V_VehPosRoll
    :reader V_VehPosRoll
    :initarg :V_VehPosRoll
    :type cl:float
    :initform 0.0)
   (V_VehPosPitch
    :reader V_VehPosPitch
    :initarg :V_VehPosPitch
    :type cl:float
    :initform 0.0)
   (GearLevPos
    :reader GearLevPos
    :initarg :GearLevPos
    :type cl:integer
    :initform 0))
)

(cl:defclass Vehicle_Feedback (<Vehicle_Feedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Vehicle_Feedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Vehicle_Feedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name common_msgs-msg:<Vehicle_Feedback> is deprecated: use common_msgs-msg:Vehicle_Feedback instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Vehicle_Feedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:header-val is deprecated.  Use common_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'V_VehSpdX-val :lambda-list '(m))
(cl:defmethod V_VehSpdX-val ((m <Vehicle_Feedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:V_VehSpdX-val is deprecated.  Use common_msgs-msg:V_VehSpdX instead.")
  (V_VehSpdX m))

(cl:ensure-generic-function 'V_VehSpdY-val :lambda-list '(m))
(cl:defmethod V_VehSpdY-val ((m <Vehicle_Feedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:V_VehSpdY-val is deprecated.  Use common_msgs-msg:V_VehSpdY instead.")
  (V_VehSpdY m))

(cl:ensure-generic-function 'V_VehAccelX-val :lambda-list '(m))
(cl:defmethod V_VehAccelX-val ((m <Vehicle_Feedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:V_VehAccelX-val is deprecated.  Use common_msgs-msg:V_VehAccelX instead.")
  (V_VehAccelX m))

(cl:ensure-generic-function 'V_VehAccelY-val :lambda-list '(m))
(cl:defmethod V_VehAccelY-val ((m <Vehicle_Feedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:V_VehAccelY-val is deprecated.  Use common_msgs-msg:V_VehAccelY instead.")
  (V_VehAccelY m))

(cl:ensure-generic-function 'V_VehPosYaw-val :lambda-list '(m))
(cl:defmethod V_VehPosYaw-val ((m <Vehicle_Feedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:V_VehPosYaw-val is deprecated.  Use common_msgs-msg:V_VehPosYaw instead.")
  (V_VehPosYaw m))

(cl:ensure-generic-function 'V_VehPosX-val :lambda-list '(m))
(cl:defmethod V_VehPosX-val ((m <Vehicle_Feedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:V_VehPosX-val is deprecated.  Use common_msgs-msg:V_VehPosX instead.")
  (V_VehPosX m))

(cl:ensure-generic-function 'V_VehPosY-val :lambda-list '(m))
(cl:defmethod V_VehPosY-val ((m <Vehicle_Feedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:V_VehPosY-val is deprecated.  Use common_msgs-msg:V_VehPosY instead.")
  (V_VehPosY m))

(cl:ensure-generic-function 'V_VehPosRoll-val :lambda-list '(m))
(cl:defmethod V_VehPosRoll-val ((m <Vehicle_Feedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:V_VehPosRoll-val is deprecated.  Use common_msgs-msg:V_VehPosRoll instead.")
  (V_VehPosRoll m))

(cl:ensure-generic-function 'V_VehPosPitch-val :lambda-list '(m))
(cl:defmethod V_VehPosPitch-val ((m <Vehicle_Feedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:V_VehPosPitch-val is deprecated.  Use common_msgs-msg:V_VehPosPitch instead.")
  (V_VehPosPitch m))

(cl:ensure-generic-function 'GearLevPos-val :lambda-list '(m))
(cl:defmethod GearLevPos-val ((m <Vehicle_Feedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:GearLevPos-val is deprecated.  Use common_msgs-msg:GearLevPos instead.")
  (GearLevPos m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Vehicle_Feedback>) ostream)
  "Serializes a message object of type '<Vehicle_Feedback>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'V_VehSpdX))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'V_VehSpdY))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'V_VehAccelX))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'V_VehAccelY))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'V_VehPosYaw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'V_VehPosX))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'V_VehPosY))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'V_VehPosRoll))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'V_VehPosPitch))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'GearLevPos)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'GearLevPos)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'GearLevPos)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'GearLevPos)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Vehicle_Feedback>) istream)
  "Deserializes a message object of type '<Vehicle_Feedback>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'V_VehSpdX) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'V_VehSpdY) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'V_VehAccelX) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'V_VehAccelY) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'V_VehPosYaw) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'V_VehPosX) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'V_VehPosY) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'V_VehPosRoll) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'V_VehPosPitch) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'GearLevPos)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'GearLevPos)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'GearLevPos)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'GearLevPos)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Vehicle_Feedback>)))
  "Returns string type for a message object of type '<Vehicle_Feedback>"
  "common_msgs/Vehicle_Feedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Vehicle_Feedback)))
  "Returns string type for a message object of type 'Vehicle_Feedback"
  "common_msgs/Vehicle_Feedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Vehicle_Feedback>)))
  "Returns md5sum for a message object of type '<Vehicle_Feedback>"
  "9dae5a81ecfdc3c6e7aac43803325361")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Vehicle_Feedback)))
  "Returns md5sum for a message object of type 'Vehicle_Feedback"
  "9dae5a81ecfdc3c6e7aac43803325361")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Vehicle_Feedback>)))
  "Returns full string definition for message of type '<Vehicle_Feedback>"
  (cl:format cl:nil "std_msgs/Header  header~%float32 V_VehSpdX               #本车X向车速~%float32 V_VehSpdY               #本车Y向车速~%float32 V_VehAccelX             #本车纵向加速度~%float32 V_VehAccelY             #本车横向加速度~%float32 V_VehPosYaw             #本车航向角~%float32 V_VehPosX               #本车X向坐标~%float32 V_VehPosY               #本车Y向坐标~%float32 V_VehPosRoll            #本车Roll~%float32 V_VehPosPitch           #本车Pitch~%uint32 GearLevPos               #底盘反馈当前档位~%#float32 BrakePedal              #本车制动踏板开度~%#float32 ThrottlePedal           #本车油门踏板开度~%#float32 SteeringAngle           #本车方向盘转角~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Vehicle_Feedback)))
  "Returns full string definition for message of type 'Vehicle_Feedback"
  (cl:format cl:nil "std_msgs/Header  header~%float32 V_VehSpdX               #本车X向车速~%float32 V_VehSpdY               #本车Y向车速~%float32 V_VehAccelX             #本车纵向加速度~%float32 V_VehAccelY             #本车横向加速度~%float32 V_VehPosYaw             #本车航向角~%float32 V_VehPosX               #本车X向坐标~%float32 V_VehPosY               #本车Y向坐标~%float32 V_VehPosRoll            #本车Roll~%float32 V_VehPosPitch           #本车Pitch~%uint32 GearLevPos               #底盘反馈当前档位~%#float32 BrakePedal              #本车制动踏板开度~%#float32 ThrottlePedal           #本车油门踏板开度~%#float32 SteeringAngle           #本车方向盘转角~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Vehicle_Feedback>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Vehicle_Feedback>))
  "Converts a ROS message object to a list"
  (cl:list 'Vehicle_Feedback
    (cl:cons ':header (header msg))
    (cl:cons ':V_VehSpdX (V_VehSpdX msg))
    (cl:cons ':V_VehSpdY (V_VehSpdY msg))
    (cl:cons ':V_VehAccelX (V_VehAccelX msg))
    (cl:cons ':V_VehAccelY (V_VehAccelY msg))
    (cl:cons ':V_VehPosYaw (V_VehPosYaw msg))
    (cl:cons ':V_VehPosX (V_VehPosX msg))
    (cl:cons ':V_VehPosY (V_VehPosY msg))
    (cl:cons ':V_VehPosRoll (V_VehPosRoll msg))
    (cl:cons ':V_VehPosPitch (V_VehPosPitch msg))
    (cl:cons ':GearLevPos (GearLevPos msg))
))
