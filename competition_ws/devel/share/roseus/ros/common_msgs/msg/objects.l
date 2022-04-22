;; Auto-generated. Do not edit!


(when (boundp 'common_msgs::objects)
  (if (not (find-package "COMMON_MSGS"))
    (make-package "COMMON_MSGS"))
  (shadow 'objects (find-package "COMMON_MSGS")))
(unless (find-package "COMMON_MSGS::OBJECTS")
  (make-package "COMMON_MSGS::OBJECTS"))

(in-package "ROS")
;;//! \htmlinclude objects.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass common_msgs::objects
  :super ros::object
  :slots (_header _num _objects ))

(defmethod common_msgs::objects
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:num __num) 0)
    ((:objects __objects) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _num (round __num))
   (setq _objects __objects)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:num
   (&optional __num)
   (if __num (setq _num __num)) _num)
  (:objects
   (&rest __objects)
   (if (keywordp (car __objects))
       (send* _objects __objects)
     (progn
       (if __objects (setq _objects (car __objects)))
       _objects)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int32 _num
    4
    ;; common_msgs/object[] _objects
    (apply #'+ (send-all _objects :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int32 _num
       (write-long _num s)
     ;; common_msgs/object[] _objects
     (write-long (length _objects) s)
     (dolist (elem _objects)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int32 _num
     (setq _num (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; common_msgs/object[] _objects
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _objects (let (r) (dotimes (i n) (push (instance common_msgs::object :init) r)) r))
     (dolist (elem- _objects)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get common_msgs::objects :md5sum-) "ed31e297e0290d75c5fb045bbeea74cb")
(setf (get common_msgs::objects :datatype-) "common_msgs/objects")
(setf (get common_msgs::objects :definition-)
      "std_msgs/Header  header
int32 num                                #目标数量
object[] objects                         #目标描述

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: common_msgs/object
uint32 Object_ID                        #目标的ID编号
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



(provide :common_msgs/objects "ed31e297e0290d75c5fb045bbeea74cb")


