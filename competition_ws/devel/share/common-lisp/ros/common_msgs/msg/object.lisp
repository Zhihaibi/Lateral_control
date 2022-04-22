; Auto-generated. Do not edit!


(cl:in-package common_msgs-msg)


;//! \htmlinclude object.msg.html

(cl:defclass <object> (roslisp-msg-protocol:ros-message)
  ((Object_ID
    :reader Object_ID
    :initarg :Object_ID
    :type cl:integer
    :initform 0)
   (Object_DistLong
    :reader Object_DistLong
    :initarg :Object_DistLong
    :type cl:float
    :initform 0.0)
   (Object_DistLat
    :reader Object_DistLat
    :initarg :Object_DistLat
    :type cl:float
    :initform 0.0)
   (Object_VrelLong
    :reader Object_VrelLong
    :initarg :Object_VrelLong
    :type cl:float
    :initform 0.0)
   (Object_VrelLat
    :reader Object_VrelLat
    :initarg :Object_VrelLat
    :type cl:float
    :initform 0.0)
   (Object_DynProp
    :reader Object_DynProp
    :initarg :Object_DynProp
    :type cl:integer
    :initform 0)
   (Object_ArelLong
    :reader Object_ArelLong
    :initarg :Object_ArelLong
    :type cl:float
    :initform 0.0)
   (Object_ArelLat
    :reader Object_ArelLat
    :initarg :Object_ArelLat
    :type cl:float
    :initform 0.0)
   (Object_Class
    :reader Object_Class
    :initarg :Object_Class
    :type cl:integer
    :initform 0)
   (Object_Length
    :reader Object_Length
    :initarg :Object_Length
    :type cl:float
    :initform 0.0)
   (Object_Width
    :reader Object_Width
    :initarg :Object_Width
    :type cl:float
    :initform 0.0)
   (Object_ProbOfExist
    :reader Object_ProbOfExist
    :initarg :Object_ProbOfExist
    :type cl:integer
    :initform 0))
)

(cl:defclass object (<object>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <object>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'object)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name common_msgs-msg:<object> is deprecated: use common_msgs-msg:object instead.")))

(cl:ensure-generic-function 'Object_ID-val :lambda-list '(m))
(cl:defmethod Object_ID-val ((m <object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:Object_ID-val is deprecated.  Use common_msgs-msg:Object_ID instead.")
  (Object_ID m))

(cl:ensure-generic-function 'Object_DistLong-val :lambda-list '(m))
(cl:defmethod Object_DistLong-val ((m <object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:Object_DistLong-val is deprecated.  Use common_msgs-msg:Object_DistLong instead.")
  (Object_DistLong m))

(cl:ensure-generic-function 'Object_DistLat-val :lambda-list '(m))
(cl:defmethod Object_DistLat-val ((m <object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:Object_DistLat-val is deprecated.  Use common_msgs-msg:Object_DistLat instead.")
  (Object_DistLat m))

(cl:ensure-generic-function 'Object_VrelLong-val :lambda-list '(m))
(cl:defmethod Object_VrelLong-val ((m <object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:Object_VrelLong-val is deprecated.  Use common_msgs-msg:Object_VrelLong instead.")
  (Object_VrelLong m))

(cl:ensure-generic-function 'Object_VrelLat-val :lambda-list '(m))
(cl:defmethod Object_VrelLat-val ((m <object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:Object_VrelLat-val is deprecated.  Use common_msgs-msg:Object_VrelLat instead.")
  (Object_VrelLat m))

(cl:ensure-generic-function 'Object_DynProp-val :lambda-list '(m))
(cl:defmethod Object_DynProp-val ((m <object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:Object_DynProp-val is deprecated.  Use common_msgs-msg:Object_DynProp instead.")
  (Object_DynProp m))

(cl:ensure-generic-function 'Object_ArelLong-val :lambda-list '(m))
(cl:defmethod Object_ArelLong-val ((m <object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:Object_ArelLong-val is deprecated.  Use common_msgs-msg:Object_ArelLong instead.")
  (Object_ArelLong m))

(cl:ensure-generic-function 'Object_ArelLat-val :lambda-list '(m))
(cl:defmethod Object_ArelLat-val ((m <object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:Object_ArelLat-val is deprecated.  Use common_msgs-msg:Object_ArelLat instead.")
  (Object_ArelLat m))

(cl:ensure-generic-function 'Object_Class-val :lambda-list '(m))
(cl:defmethod Object_Class-val ((m <object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:Object_Class-val is deprecated.  Use common_msgs-msg:Object_Class instead.")
  (Object_Class m))

(cl:ensure-generic-function 'Object_Length-val :lambda-list '(m))
(cl:defmethod Object_Length-val ((m <object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:Object_Length-val is deprecated.  Use common_msgs-msg:Object_Length instead.")
  (Object_Length m))

(cl:ensure-generic-function 'Object_Width-val :lambda-list '(m))
(cl:defmethod Object_Width-val ((m <object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:Object_Width-val is deprecated.  Use common_msgs-msg:Object_Width instead.")
  (Object_Width m))

(cl:ensure-generic-function 'Object_ProbOfExist-val :lambda-list '(m))
(cl:defmethod Object_ProbOfExist-val ((m <object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:Object_ProbOfExist-val is deprecated.  Use common_msgs-msg:Object_ProbOfExist instead.")
  (Object_ProbOfExist m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <object>) ostream)
  "Serializes a message object of type '<object>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Object_ID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'Object_ID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'Object_ID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'Object_ID)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Object_DistLong))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Object_DistLat))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Object_VrelLong))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Object_VrelLat))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Object_DynProp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'Object_DynProp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'Object_DynProp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'Object_DynProp)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Object_ArelLong))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Object_ArelLat))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Object_Class)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'Object_Class)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'Object_Class)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'Object_Class)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Object_Length))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Object_Width))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Object_ProbOfExist)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'Object_ProbOfExist)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'Object_ProbOfExist)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'Object_ProbOfExist)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <object>) istream)
  "Deserializes a message object of type '<object>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Object_ID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'Object_ID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'Object_ID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'Object_ID)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Object_DistLong) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Object_DistLat) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Object_VrelLong) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Object_VrelLat) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Object_DynProp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'Object_DynProp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'Object_DynProp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'Object_DynProp)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Object_ArelLong) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Object_ArelLat) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Object_Class)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'Object_Class)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'Object_Class)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'Object_Class)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Object_Length) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Object_Width) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Object_ProbOfExist)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'Object_ProbOfExist)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'Object_ProbOfExist)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'Object_ProbOfExist)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<object>)))
  "Returns string type for a message object of type '<object>"
  "common_msgs/object")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'object)))
  "Returns string type for a message object of type 'object"
  "common_msgs/object")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<object>)))
  "Returns md5sum for a message object of type '<object>"
  "c59d4e1031406f14a432b85c2df4e43d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'object)))
  "Returns md5sum for a message object of type 'object"
  "c59d4e1031406f14a432b85c2df4e43d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<object>)))
  "Returns full string definition for message of type '<object>"
  (cl:format cl:nil "uint32 Object_ID                        #目标的ID编号~%float32 Object_DistLong                 #目标的纵向距离~%float32 Object_DistLat                  #目标的横向距离~%float32 Object_VrelLong                 #目标的纵向相对速度~%float32 Object_VrelLat                  #目标的横向相对速度~%uint32 Object_DynProp                   #目标的运动状态~%float32 Object_ArelLong                 #目标的纵向加速度~%float32 Object_ArelLat                  #目标的横向加速度~%uint32 Object_Class                     #目标的分类~%float32 Object_Length                   #目标的长度~%float32 Object_Width                    #目标的宽度~%uint32 Object_ProbOfExist               #目标置信度~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'object)))
  "Returns full string definition for message of type 'object"
  (cl:format cl:nil "uint32 Object_ID                        #目标的ID编号~%float32 Object_DistLong                 #目标的纵向距离~%float32 Object_DistLat                  #目标的横向距离~%float32 Object_VrelLong                 #目标的纵向相对速度~%float32 Object_VrelLat                  #目标的横向相对速度~%uint32 Object_DynProp                   #目标的运动状态~%float32 Object_ArelLong                 #目标的纵向加速度~%float32 Object_ArelLat                  #目标的横向加速度~%uint32 Object_Class                     #目标的分类~%float32 Object_Length                   #目标的长度~%float32 Object_Width                    #目标的宽度~%uint32 Object_ProbOfExist               #目标置信度~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <object>))
  (cl:+ 0
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
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <object>))
  "Converts a ROS message object to a list"
  (cl:list 'object
    (cl:cons ':Object_ID (Object_ID msg))
    (cl:cons ':Object_DistLong (Object_DistLong msg))
    (cl:cons ':Object_DistLat (Object_DistLat msg))
    (cl:cons ':Object_VrelLong (Object_VrelLong msg))
    (cl:cons ':Object_VrelLat (Object_VrelLat msg))
    (cl:cons ':Object_DynProp (Object_DynProp msg))
    (cl:cons ':Object_ArelLong (Object_ArelLong msg))
    (cl:cons ':Object_ArelLat (Object_ArelLat msg))
    (cl:cons ':Object_Class (Object_Class msg))
    (cl:cons ':Object_Length (Object_Length msg))
    (cl:cons ':Object_Width (Object_Width msg))
    (cl:cons ':Object_ProbOfExist (Object_ProbOfExist msg))
))
