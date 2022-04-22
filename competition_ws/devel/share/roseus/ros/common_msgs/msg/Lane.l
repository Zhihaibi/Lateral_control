;; Auto-generated. Do not edit!


(when (boundp 'common_msgs::Lane)
  (if (not (find-package "COMMON_MSGS"))
    (make-package "COMMON_MSGS"))
  (shadow 'Lane (find-package "COMMON_MSGS")))
(unless (find-package "COMMON_MSGS::LANE")
  (make-package "COMMON_MSGS::LANE"))

(in-package "ROS")
;;//! \htmlinclude Lane.msg.html


(defclass common_msgs::Lane
  :super ros::object
  :slots (_lane_idx _c_0 _c_1 _c_2 _c_3 ))

(defmethod common_msgs::Lane
  (:init
   (&key
    ((:lane_idx __lane_idx) 0)
    ((:c_0 __c_0) 0.0)
    ((:c_1 __c_1) 0.0)
    ((:c_2 __c_2) 0.0)
    ((:c_3 __c_3) 0.0)
    )
   (send-super :init)
   (setq _lane_idx (round __lane_idx))
   (setq _c_0 (float __c_0))
   (setq _c_1 (float __c_1))
   (setq _c_2 (float __c_2))
   (setq _c_3 (float __c_3))
   self)
  (:lane_idx
   (&optional __lane_idx)
   (if __lane_idx (setq _lane_idx __lane_idx)) _lane_idx)
  (:c_0
   (&optional __c_0)
   (if __c_0 (setq _c_0 __c_0)) _c_0)
  (:c_1
   (&optional __c_1)
   (if __c_1 (setq _c_1 __c_1)) _c_1)
  (:c_2
   (&optional __c_2)
   (if __c_2 (setq _c_2 __c_2)) _c_2)
  (:c_3
   (&optional __c_3)
   (if __c_3 (setq _c_3 __c_3)) _c_3)
  (:serialization-length
   ()
   (+
    ;; uint8 _lane_idx
    1
    ;; float32 _c_0
    4
    ;; float32 _c_1
    4
    ;; float32 _c_2
    4
    ;; float32 _c_3
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _lane_idx
       (write-byte _lane_idx s)
     ;; float32 _c_0
       (sys::poke _c_0 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _c_1
       (sys::poke _c_1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _c_2
       (sys::poke _c_2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _c_3
       (sys::poke _c_3 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _lane_idx
     (setq _lane_idx (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _c_0
     (setq _c_0 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _c_1
     (setq _c_1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _c_2
     (setq _c_2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _c_3
     (setq _c_3 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get common_msgs::Lane :md5sum-) "e6ece6904fb62b4ebe5a720f5abf96c2")
(setf (get common_msgs::Lane :datatype-) "common_msgs/Lane")
(setf (get common_msgs::Lane :definition-)
      "# 单条车道线描述
uint8 lane_idx #车道线ID
float32 c_0    #车道线参数C0
float32 c_1    #车道线参数C1
float32 c_2    #车道线参数C2
float32 c_3    #车道线参数C3

")



(provide :common_msgs/Lane "e6ece6904fb62b4ebe5a720f5abf96c2")


