; Auto-generated. Do not edit!


(cl:in-package common_msgs-msg)


;//! \htmlinclude Vehicle_Control.msg.html

(cl:defclass <Vehicle_Control> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (SteeringAngle
    :reader SteeringAngle
    :initarg :SteeringAngle
    :type cl:float
    :initform 0.0)
   (ThrottlePedal
    :reader ThrottlePedal
    :initarg :ThrottlePedal
    :type cl:float
    :initform 0.0)
   (Gear
    :reader Gear
    :initarg :Gear
    :type cl:integer
    :initform 0)
   (BrakePedal
    :reader BrakePedal
    :initarg :BrakePedal
    :type cl:float
    :initform 0.0))
)

(cl:defclass Vehicle_Control (<Vehicle_Control>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Vehicle_Control>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Vehicle_Control)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name common_msgs-msg:<Vehicle_Control> is deprecated: use common_msgs-msg:Vehicle_Control instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Vehicle_Control>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:header-val is deprecated.  Use common_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'SteeringAngle-val :lambda-list '(m))
(cl:defmethod SteeringAngle-val ((m <Vehicle_Control>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:SteeringAngle-val is deprecated.  Use common_msgs-msg:SteeringAngle instead.")
  (SteeringAngle m))

(cl:ensure-generic-function 'ThrottlePedal-val :lambda-list '(m))
(cl:defmethod ThrottlePedal-val ((m <Vehicle_Control>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:ThrottlePedal-val is deprecated.  Use common_msgs-msg:ThrottlePedal instead.")
  (ThrottlePedal m))

(cl:ensure-generic-function 'Gear-val :lambda-list '(m))
(cl:defmethod Gear-val ((m <Vehicle_Control>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:Gear-val is deprecated.  Use common_msgs-msg:Gear instead.")
  (Gear m))

(cl:ensure-generic-function 'BrakePedal-val :lambda-list '(m))
(cl:defmethod BrakePedal-val ((m <Vehicle_Control>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:BrakePedal-val is deprecated.  Use common_msgs-msg:BrakePedal instead.")
  (BrakePedal m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Vehicle_Control>) ostream)
  "Serializes a message object of type '<Vehicle_Control>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'SteeringAngle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'ThrottlePedal))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Gear)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'Gear)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'Gear)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'Gear)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'BrakePedal))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Vehicle_Control>) istream)
  "Deserializes a message object of type '<Vehicle_Control>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'SteeringAngle) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ThrottlePedal) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Gear)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'Gear)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'Gear)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'Gear)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'BrakePedal) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Vehicle_Control>)))
  "Returns string type for a message object of type '<Vehicle_Control>"
  "common_msgs/Vehicle_Control")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Vehicle_Control)))
  "Returns string type for a message object of type 'Vehicle_Control"
  "common_msgs/Vehicle_Control")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Vehicle_Control>)))
  "Returns md5sum for a message object of type '<Vehicle_Control>"
  "f5f180f742e223d0bc9f7c17b3e27310")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Vehicle_Control)))
  "Returns md5sum for a message object of type 'Vehicle_Control"
  "f5f180f742e223d0bc9f7c17b3e27310")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Vehicle_Control>)))
  "Returns full string definition for message of type '<Vehicle_Control>"
  (cl:format cl:nil "std_msgs/Header  header~%float32 SteeringAngle                 #方向盘转角~%float32 ThrottlePedal                 #油门踏板开度~%uint32 Gear                           #请求档位~%float32 BrakePedal                    #制动踏板开度~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Vehicle_Control)))
  "Returns full string definition for message of type 'Vehicle_Control"
  (cl:format cl:nil "std_msgs/Header  header~%float32 SteeringAngle                 #方向盘转角~%float32 ThrottlePedal                 #油门踏板开度~%uint32 Gear                           #请求档位~%float32 BrakePedal                    #制动踏板开度~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Vehicle_Control>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Vehicle_Control>))
  "Converts a ROS message object to a list"
  (cl:list 'Vehicle_Control
    (cl:cons ':header (header msg))
    (cl:cons ':SteeringAngle (SteeringAngle msg))
    (cl:cons ':ThrottlePedal (ThrottlePedal msg))
    (cl:cons ':Gear (Gear msg))
    (cl:cons ':BrakePedal (BrakePedal msg))
))
