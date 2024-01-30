;; Auto-generated. Do not edit!


(when (boundp 'marti_nav_msgs::PathPoint)
  (if (not (find-package "MARTI_NAV_MSGS"))
    (make-package "MARTI_NAV_MSGS"))
  (shadow 'PathPoint (find-package "MARTI_NAV_MSGS")))
(unless (find-package "MARTI_NAV_MSGS::PATHPOINT")
  (make-package "MARTI_NAV_MSGS::PATHPOINT"))

(in-package "ROS")
;;//! \htmlinclude PathPoint.msg.html


(defclass marti_nav_msgs::PathPoint
  :super ros::object
  :slots (_x _y _yaw _speed ))

(defmethod marti_nav_msgs::PathPoint
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:yaw __yaw) 0.0)
    ((:speed __speed) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _yaw (float __yaw))
   (setq _speed (float __speed))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:serialization-length
   ()
   (+
    ;; float64 _x
    8
    ;; float64 _y
    8
    ;; float32 _yaw
    4
    ;; float32 _speed
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float32 _yaw
       (sys::poke _yaw (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _speed
       (sys::poke _speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float32 _yaw
     (setq _yaw (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _speed
     (setq _speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get marti_nav_msgs::PathPoint :md5sum-) "b5784633c612d8c1ebc194d22e5cc305")
(setf (get marti_nav_msgs::PathPoint :datatype-) "marti_nav_msgs/PathPoint")
(setf (get marti_nav_msgs::PathPoint :definition-)
      "float64 x
float64 y
float32 yaw   # In radians
float32 speed # In m/s

")



(provide :marti_nav_msgs/PathPoint "b5784633c612d8c1ebc194d22e5cc305")


