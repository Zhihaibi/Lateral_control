;; Auto-generated. Do not edit!


(when (boundp 'common_msgs::object)
  (if (not (find-package "COMMON_MSGS"))
    (make-package "COMMON_MSGS"))
  (shadow 'object (find-package "COMMON_MSGS")))
(unless (find-package "COMMON_MSGS::OBJECT")
  (make-package "COMMON_MSGS::OBJECT"))

(in-package "ROS")
;;//! \htmlinclude object.msg.html


(defclass common_msgs::object
  :super ros::object
  :slots (_Object_ID _Object_DistLong _Object_DistLat _Object_VrelLong _Object_VrelLat _Object_DynProp _Object_ArelLong _Object_ArelLat _Object_Class _Object_Length _Object_Width _Object_ProbOfExist ))

(defmethod common_msgs::object
  (:init
   (&key
    ((:Object_ID __Object_ID) 0)
    ((:Object_DistLong __Object_DistLong) 0.0)
    ((:Object_DistLat __Object_DistLat) 0.0)
    ((:Object_VrelLong __Object_VrelLong) 0.0)
    ((:Object_VrelLat __Object_VrelLat) 0.0)
    ((:Object_DynProp __Object_DynProp) 0)
    ((:Object_ArelLong __Object_ArelLong) 0.0)
    ((:Object_ArelLat __Object_ArelLat) 0.0)
    ((:Object_Class __Object_Class) 0)
    ((:Object_Length __Object_Length) 0.0)
    ((:Object_Width __Object_Width) 0.0)
    ((:Object_ProbOfExist __Object_ProbOfExist) 0)
    )
   (send-super :init)
   (setq _Object_ID (round __Object_ID))
   (setq _Object_DistLong (float __Object_DistLong))
   (setq _Object_DistLat (float __Object_DistLat))
   (setq _Object_VrelLong (float __Object_VrelLong))
   (setq _Object_VrelLat (float __Object_VrelLat))
   (setq _Object_DynProp (round __Object_DynProp))
   (setq _Object_ArelLong (float __Object_ArelLong))
   (setq _Object_ArelLat (float __Object_ArelLat))
   (setq _Object_Class (round __Object_Class))
   (setq _Object_Length (float __Object_Length))
   (setq _Object_Width (float __Object_Width))
   (setq _Object_ProbOfExist (round __Object_ProbOfExist))
   self)
  (:Object_ID
   (&optional __Object_ID)
   (if __Object_ID (setq _Object_ID __Object_ID)) _Object_ID)
  (:Object_DistLong
   (&optional __Object_DistLong)
   (if __Object_DistLong (setq _Object_DistLong __Object_DistLong)) _Object_DistLong)
  (:Object_DistLat
   (&optional __Object_DistLat)
   (if __Object_DistLat (setq _Object_DistLat __Object_DistLat)) _Object_DistLat)
  (:Object_VrelLong
   (&optional __Object_VrelLong)
   (if __Object_VrelLong (setq _Object_VrelLong __Object_VrelLong)) _Object_VrelLong)
  (:Object_VrelLat
   (&optional __Object_VrelLat)
   (if __Object_VrelLat (setq _Object_VrelLat __Object_VrelLat)) _Object_VrelLat)
  (:Object_DynProp
   (&optional __Object_DynProp)
   (if __Object_DynProp (setq _Object_DynProp __Object_DynProp)) _Object_DynProp)
  (:Object_ArelLong
   (&optional __Object_ArelLong)
   (if __Object_ArelLong (setq _Object_ArelLong __Object_ArelLong)) _Object_ArelLong)
  (:Object_ArelLat
   (&optional __Object_ArelLat)
   (if __Object_ArelLat (setq _Object_ArelLat __Object_ArelLat)) _Object_ArelLat)
  (:Object_Class
   (&optional __Object_Class)
   (if __Object_Class (setq _Object_Class __Object_Class)) _Object_Class)
  (:Object_Length
   (&optional __Object_Length)
   (if __Object_Length (setq _Object_Length __Object_Length)) _Object_Length)
  (:Object_Width
   (&optional __Object_Width)
   (if __Object_Width (setq _Object_Width __Object_Width)) _Object_Width)
  (:Object_ProbOfExist
   (&optional __Object_ProbOfExist)
   (if __Object_ProbOfExist (setq _Object_ProbOfExist __Object_ProbOfExist)) _Object_ProbOfExist)
  (:serialization-length
   ()
   (+
    ;; uint32 _Object_ID
    4
    ;; float32 _Object_DistLong
    4
    ;; float32 _Object_DistLat
    4
    ;; float32 _Object_VrelLong
    4
    ;; float32 _Object_VrelLat
    4
    ;; uint32 _Object_DynProp
    4
    ;; float32 _Object_ArelLong
    4
    ;; float32 _Object_ArelLat
    4
    ;; uint32 _Object_Class
    4
    ;; float32 _Object_Length
    4
    ;; float32 _Object_Width
    4
    ;; uint32 _Object_ProbOfExist
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _Object_ID
       (write-long _Object_ID s)
     ;; float32 _Object_DistLong
       (sys::poke _Object_DistLong (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Object_DistLat
       (sys::poke _Object_DistLat (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Object_VrelLong
       (sys::poke _Object_VrelLong (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Object_VrelLat
       (sys::poke _Object_VrelLat (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint32 _Object_DynProp
       (write-long _Object_DynProp s)
     ;; float32 _Object_ArelLong
       (sys::poke _Object_ArelLong (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Object_ArelLat
       (sys::poke _Object_ArelLat (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint32 _Object_Class
       (write-long _Object_Class s)
     ;; float32 _Object_Length
       (sys::poke _Object_Length (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Object_Width
       (sys::poke _Object_Width (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint32 _Object_ProbOfExist
       (write-long _Object_ProbOfExist s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _Object_ID
     (setq _Object_ID (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _Object_DistLong
     (setq _Object_DistLong (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Object_DistLat
     (setq _Object_DistLat (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Object_VrelLong
     (setq _Object_VrelLong (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Object_VrelLat
     (setq _Object_VrelLat (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint32 _Object_DynProp
     (setq _Object_DynProp (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _Object_ArelLong
     (setq _Object_ArelLong (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Object_ArelLat
     (setq _Object_ArelLat (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint32 _Object_Class
     (setq _Object_Class (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _Object_Length
     (setq _Object_Length (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Object_Width
     (setq _Object_Width (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint32 _Object_ProbOfExist
     (setq _Object_ProbOfExist (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get common_msgs::object :md5sum-) "c59d4e1031406f14a432b85c2df4e43d")
(setf (get common_msgs::object :datatype-) "common_msgs/object")
(setf (get common_msgs::object :definition-)
      "uint32 Object_ID                        #目标的ID编号
float32 Object_DistLong                 #目标的纵向距离
float32 Object_DistLat                  #目标的横向距离
float32 Object_VrelLong                 #目标的纵向相对速度
float32 Object_VrelLat                  #目标的横向相对速度
uint32 Object_DynProp                   #目标的运动状态
float32 Object_ArelLong                 #目标的纵向加速度
float32 Object_ArelLat                  #目标的横向加速度
uint32 Object_Class                     #目标的分类
float32 Object_Length                   #目标的长度
float32 Object_Width                    #目标的宽度
uint32 Object_ProbOfExist               #目标置信度

")



(provide :common_msgs/object "c59d4e1031406f14a432b85c2df4e43d")


