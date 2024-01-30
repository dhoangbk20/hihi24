;; Auto-generated. Do not edit!


(when (boundp 'marti_nav_msgs::Path)
  (if (not (find-package "MARTI_NAV_MSGS"))
    (make-package "MARTI_NAV_MSGS"))
  (shadow 'Path (find-package "MARTI_NAV_MSGS")))
(unless (find-package "MARTI_NAV_MSGS::PATH")
  (make-package "MARTI_NAV_MSGS::PATH"))

(in-package "ROS")
;;//! \htmlinclude Path.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass marti_nav_msgs::Path
  :super ros::object
  :slots (_header _points _in_reverse ))

(defmethod marti_nav_msgs::Path
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:points __points) (let (r) (dotimes (i 0) (push (instance marti_nav_msgs::PathPoint :init) r)) r))
    ((:in_reverse __in_reverse) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _points __points)
   (setq _in_reverse __in_reverse)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:points
   (&rest __points)
   (if (keywordp (car __points))
       (send* _points __points)
     (progn
       (if __points (setq _points (car __points)))
       _points)))
  (:in_reverse
   (&optional __in_reverse)
   (if __in_reverse (setq _in_reverse __in_reverse)) _in_reverse)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; marti_nav_msgs/PathPoint[] _points
    (apply #'+ (send-all _points :serialization-length)) 4
    ;; bool _in_reverse
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; marti_nav_msgs/PathPoint[] _points
     (write-long (length _points) s)
     (dolist (elem _points)
       (send elem :serialize s)
       )
     ;; bool _in_reverse
       (if _in_reverse (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; marti_nav_msgs/PathPoint[] _points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _points (let (r) (dotimes (i n) (push (instance marti_nav_msgs::PathPoint :init) r)) r))
     (dolist (elem- _points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; bool _in_reverse
     (setq _in_reverse (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get marti_nav_msgs::Path :md5sum-) "da4d7292371593c2128396b6c7229d46")
(setf (get marti_nav_msgs::Path :datatype-) "marti_nav_msgs/Path")
(setf (get marti_nav_msgs::Path :definition-)
      "std_msgs/Header                         header
PathPoint[]                    points
bool in_reverse

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
MSG: marti_nav_msgs/PathPoint
float64 x
float64 y
float32 yaw   # In radians
float32 speed # In m/s

")



(provide :marti_nav_msgs/Path "da4d7292371593c2128396b6c7229d46")


