;; Auto-generated. Do not edit!


(when (boundp 'common_msgs::Lanes)
  (if (not (find-package "COMMON_MSGS"))
    (make-package "COMMON_MSGS"))
  (shadow 'Lanes (find-package "COMMON_MSGS")))
(unless (find-package "COMMON_MSGS::LANES")
  (make-package "COMMON_MSGS::LANES"))

(in-package "ROS")
;;//! \htmlinclude Lanes.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass common_msgs::Lanes
  :super ros::object
  :slots (_header _num _lanes ))

(defmethod common_msgs::Lanes
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:num __num) 0)
    ((:lanes __lanes) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _num (round __num))
   (setq _lanes __lanes)
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
  (:lanes
   (&rest __lanes)
   (if (keywordp (car __lanes))
       (send* _lanes __lanes)
     (progn
       (if __lanes (setq _lanes (car __lanes)))
       _lanes)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int32 _num
    4
    ;; common_msgs/Lane[] _lanes
    (apply #'+ (send-all _lanes :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int32 _num
       (write-long _num s)
     ;; common_msgs/Lane[] _lanes
     (write-long (length _lanes) s)
     (dolist (elem _lanes)
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
   ;; common_msgs/Lane[] _lanes
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _lanes (let (r) (dotimes (i n) (push (instance common_msgs::Lane :init) r)) r))
     (dolist (elem- _lanes)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get common_msgs::Lanes :md5sum-) "d7338c9f7da570ebf95e5bc3ebf71638")
(setf (get common_msgs::Lanes :datatype-) "common_msgs/Lanes")
(setf (get common_msgs::Lanes :definition-)
      "std_msgs/Header  header
int32 num                                            #车道线数量
Lane[] lanes                                         #车道线描述

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
MSG: common_msgs/Lane
# 单条车道线描述
uint8 lane_idx #车道线ID
float32 c_0    #车道线参数C0
float32 c_1    #车道线参数C1
float32 c_2    #车道线参数C2
float32 c_3    #车道线参数C3

")



(provide :common_msgs/Lanes "d7338c9f7da570ebf95e5bc3ebf71638")


