;; Auto-generated. Do not edit!


(when (boundp 'common_msgs::Vehicle_Control)
  (if (not (find-package "COMMON_MSGS"))
    (make-package "COMMON_MSGS"))
  (shadow 'Vehicle_Control (find-package "COMMON_MSGS")))
(unless (find-package "COMMON_MSGS::VEHICLE_CONTROL")
  (make-package "COMMON_MSGS::VEHICLE_CONTROL"))

(in-package "ROS")
;;//! \htmlinclude Vehicle_Control.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass common_msgs::Vehicle_Control
  :super ros::object
  :slots (_header _SteeringAngle _ThrottlePedal _Gear _BrakePedal ))

(defmethod common_msgs::Vehicle_Control
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:SteeringAngle __SteeringAngle) 0.0)
    ((:ThrottlePedal __ThrottlePedal) 0.0)
    ((:Gear __Gear) 0)
    ((:BrakePedal __BrakePedal) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _SteeringAngle (float __SteeringAngle))
   (setq _ThrottlePedal (float __ThrottlePedal))
   (setq _Gear (round __Gear))
   (setq _BrakePedal (float __BrakePedal))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:SteeringAngle
   (&optional __SteeringAngle)
   (if __SteeringAngle (setq _SteeringAngle __SteeringAngle)) _SteeringAngle)
  (:ThrottlePedal
   (&optional __ThrottlePedal)
   (if __ThrottlePedal (setq _ThrottlePedal __ThrottlePedal)) _ThrottlePedal)
  (:Gear
   (&optional __Gear)
   (if __Gear (setq _Gear __Gear)) _Gear)
  (:BrakePedal
   (&optional __BrakePedal)
   (if __BrakePedal (setq _BrakePedal __BrakePedal)) _BrakePedal)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32 _SteeringAngle
    4
    ;; float32 _ThrottlePedal
    4
    ;; uint32 _Gear
    4
    ;; float32 _BrakePedal
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32 _SteeringAngle
       (sys::poke _SteeringAngle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _ThrottlePedal
       (sys::poke _ThrottlePedal (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint32 _Gear
       (write-long _Gear s)
     ;; float32 _BrakePedal
       (sys::poke _BrakePedal (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32 _SteeringAngle
     (setq _SteeringAngle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _ThrottlePedal
     (setq _ThrottlePedal (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint32 _Gear
     (setq _Gear (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _BrakePedal
     (setq _BrakePedal (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get common_msgs::Vehicle_Control :md5sum-) "f5f180f742e223d0bc9f7c17b3e27310")
(setf (get common_msgs::Vehicle_Control :datatype-) "common_msgs/Vehicle_Control")
(setf (get common_msgs::Vehicle_Control :definition-)
      "std_msgs/Header  header
float32 SteeringAngle                 #方向盘转角
float32 ThrottlePedal                 #油门踏板开度
uint32 Gear                           #请求档位
float32 BrakePedal                    #制动踏板开度

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



(provide :common_msgs/Vehicle_Control "f5f180f742e223d0bc9f7c17b3e27310")


