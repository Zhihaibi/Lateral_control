;; Auto-generated. Do not edit!


(when (boundp 'common_msgs::Vehicle_Feedback)
  (if (not (find-package "COMMON_MSGS"))
    (make-package "COMMON_MSGS"))
  (shadow 'Vehicle_Feedback (find-package "COMMON_MSGS")))
(unless (find-package "COMMON_MSGS::VEHICLE_FEEDBACK")
  (make-package "COMMON_MSGS::VEHICLE_FEEDBACK"))

(in-package "ROS")
;;//! \htmlinclude Vehicle_Feedback.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass common_msgs::Vehicle_Feedback
  :super ros::object
  :slots (_header _V_VehSpdX _V_VehSpdY _V_VehAccelX _V_VehAccelY _V_VehPosYaw _V_VehPosX _V_VehPosY _V_VehPosRoll _V_VehPosPitch _GearLevPos ))

(defmethod common_msgs::Vehicle_Feedback
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:V_VehSpdX __V_VehSpdX) 0.0)
    ((:V_VehSpdY __V_VehSpdY) 0.0)
    ((:V_VehAccelX __V_VehAccelX) 0.0)
    ((:V_VehAccelY __V_VehAccelY) 0.0)
    ((:V_VehPosYaw __V_VehPosYaw) 0.0)
    ((:V_VehPosX __V_VehPosX) 0.0)
    ((:V_VehPosY __V_VehPosY) 0.0)
    ((:V_VehPosRoll __V_VehPosRoll) 0.0)
    ((:V_VehPosPitch __V_VehPosPitch) 0.0)
    ((:GearLevPos __GearLevPos) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _V_VehSpdX (float __V_VehSpdX))
   (setq _V_VehSpdY (float __V_VehSpdY))
   (setq _V_VehAccelX (float __V_VehAccelX))
   (setq _V_VehAccelY (float __V_VehAccelY))
   (setq _V_VehPosYaw (float __V_VehPosYaw))
   (setq _V_VehPosX (float __V_VehPosX))
   (setq _V_VehPosY (float __V_VehPosY))
   (setq _V_VehPosRoll (float __V_VehPosRoll))
   (setq _V_VehPosPitch (float __V_VehPosPitch))
   (setq _GearLevPos (round __GearLevPos))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:V_VehSpdX
   (&optional __V_VehSpdX)
   (if __V_VehSpdX (setq _V_VehSpdX __V_VehSpdX)) _V_VehSpdX)
  (:V_VehSpdY
   (&optional __V_VehSpdY)
   (if __V_VehSpdY (setq _V_VehSpdY __V_VehSpdY)) _V_VehSpdY)
  (:V_VehAccelX
   (&optional __V_VehAccelX)
   (if __V_VehAccelX (setq _V_VehAccelX __V_VehAccelX)) _V_VehAccelX)
  (:V_VehAccelY
   (&optional __V_VehAccelY)
   (if __V_VehAccelY (setq _V_VehAccelY __V_VehAccelY)) _V_VehAccelY)
  (:V_VehPosYaw
   (&optional __V_VehPosYaw)
   (if __V_VehPosYaw (setq _V_VehPosYaw __V_VehPosYaw)) _V_VehPosYaw)
  (:V_VehPosX
   (&optional __V_VehPosX)
   (if __V_VehPosX (setq _V_VehPosX __V_VehPosX)) _V_VehPosX)
  (:V_VehPosY
   (&optional __V_VehPosY)
   (if __V_VehPosY (setq _V_VehPosY __V_VehPosY)) _V_VehPosY)
  (:V_VehPosRoll
   (&optional __V_VehPosRoll)
   (if __V_VehPosRoll (setq _V_VehPosRoll __V_VehPosRoll)) _V_VehPosRoll)
  (:V_VehPosPitch
   (&optional __V_VehPosPitch)
   (if __V_VehPosPitch (setq _V_VehPosPitch __V_VehPosPitch)) _V_VehPosPitch)
  (:GearLevPos
   (&optional __GearLevPos)
   (if __GearLevPos (setq _GearLevPos __GearLevPos)) _GearLevPos)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32 _V_VehSpdX
    4
    ;; float32 _V_VehSpdY
    4
    ;; float32 _V_VehAccelX
    4
    ;; float32 _V_VehAccelY
    4
    ;; float32 _V_VehPosYaw
    4
    ;; float32 _V_VehPosX
    4
    ;; float32 _V_VehPosY
    4
    ;; float32 _V_VehPosRoll
    4
    ;; float32 _V_VehPosPitch
    4
    ;; uint32 _GearLevPos
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32 _V_VehSpdX
       (sys::poke _V_VehSpdX (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _V_VehSpdY
       (sys::poke _V_VehSpdY (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _V_VehAccelX
       (sys::poke _V_VehAccelX (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _V_VehAccelY
       (sys::poke _V_VehAccelY (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _V_VehPosYaw
       (sys::poke _V_VehPosYaw (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _V_VehPosX
       (sys::poke _V_VehPosX (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _V_VehPosY
       (sys::poke _V_VehPosY (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _V_VehPosRoll
       (sys::poke _V_VehPosRoll (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _V_VehPosPitch
       (sys::poke _V_VehPosPitch (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint32 _GearLevPos
       (write-long _GearLevPos s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32 _V_VehSpdX
     (setq _V_VehSpdX (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _V_VehSpdY
     (setq _V_VehSpdY (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _V_VehAccelX
     (setq _V_VehAccelX (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _V_VehAccelY
     (setq _V_VehAccelY (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _V_VehPosYaw
     (setq _V_VehPosYaw (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _V_VehPosX
     (setq _V_VehPosX (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _V_VehPosY
     (setq _V_VehPosY (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _V_VehPosRoll
     (setq _V_VehPosRoll (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _V_VehPosPitch
     (setq _V_VehPosPitch (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint32 _GearLevPos
     (setq _GearLevPos (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get common_msgs::Vehicle_Feedback :md5sum-) "9dae5a81ecfdc3c6e7aac43803325361")
(setf (get common_msgs::Vehicle_Feedback :datatype-) "common_msgs/Vehicle_Feedback")
(setf (get common_msgs::Vehicle_Feedback :definition-)
      "std_msgs/Header  header
float32 V_VehSpdX               #本车X向车速
float32 V_VehSpdY               #本车Y向车速
float32 V_VehAccelX             #本车纵向加速度
float32 V_VehAccelY             #本车横向加速度
float32 V_VehPosYaw             #本车航向角
float32 V_VehPosX               #本车X向坐标
float32 V_VehPosY               #本车Y向坐标
float32 V_VehPosRoll            #本车Roll
float32 V_VehPosPitch           #本车Pitch
uint32 GearLevPos               #底盘反馈当前档位
#float32 BrakePedal              #本车制动踏板开度
#float32 ThrottlePedal           #本车油门踏板开度
#float32 SteeringAngle           #本车方向盘转角


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

")



(provide :common_msgs/Vehicle_Feedback "9dae5a81ecfdc3c6e7aac43803325361")


