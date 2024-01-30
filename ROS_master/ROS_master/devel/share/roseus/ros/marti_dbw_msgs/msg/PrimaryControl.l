;; Auto-generated. Do not edit!


(when (boundp 'marti_dbw_msgs::PrimaryControl)
  (if (not (find-package "MARTI_DBW_MSGS"))
    (make-package "MARTI_DBW_MSGS"))
  (shadow 'PrimaryControl (find-package "MARTI_DBW_MSGS")))
(unless (find-package "MARTI_DBW_MSGS::PRIMARYCONTROL")
  (make-package "MARTI_DBW_MSGS::PRIMARYCONTROL"))

(in-package "ROS")
;;//! \htmlinclude PrimaryControl.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass marti_dbw_msgs::PrimaryControl
  :super ros::object
  :slots (_header _active _estop _steering_command _throttle_command _brake_command ))

(defmethod marti_dbw_msgs::PrimaryControl
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:active __active) nil)
    ((:estop __estop) nil)
    ((:steering_command __steering_command) 0.0)
    ((:throttle_command __throttle_command) 0.0)
    ((:brake_command __brake_command) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _active __active)
   (setq _estop __estop)
   (setq _steering_command (float __steering_command))
   (setq _throttle_command (float __throttle_command))
   (setq _brake_command (float __brake_command))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:active
   (&optional __active)
   (if __active (setq _active __active)) _active)
  (:estop
   (&optional __estop)
   (if __estop (setq _estop __estop)) _estop)
  (:steering_command
   (&optional __steering_command)
   (if __steering_command (setq _steering_command __steering_command)) _steering_command)
  (:throttle_command
   (&optional __throttle_command)
   (if __throttle_command (setq _throttle_command __throttle_command)) _throttle_command)
  (:brake_command
   (&optional __brake_command)
   (if __brake_command (setq _brake_command __brake_command)) _brake_command)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; bool _active
    1
    ;; bool _estop
    1
    ;; float32 _steering_command
    4
    ;; float32 _throttle_command
    4
    ;; float32 _brake_command
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; bool _active
       (if _active (write-byte -1 s) (write-byte 0 s))
     ;; bool _estop
       (if _estop (write-byte -1 s) (write-byte 0 s))
     ;; float32 _steering_command
       (sys::poke _steering_command (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _throttle_command
       (sys::poke _throttle_command (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _brake_command
       (sys::poke _brake_command (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; bool _active
     (setq _active (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _estop
     (setq _estop (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _steering_command
     (setq _steering_command (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _throttle_command
     (setq _throttle_command (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _brake_command
     (setq _brake_command (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get marti_dbw_msgs::PrimaryControl :md5sum-) "27c1b402f9d823bdca2b54b539b73c0d")
(setf (get marti_dbw_msgs::PrimaryControl :datatype-) "marti_dbw_msgs/PrimaryControl")
(setf (get marti_dbw_msgs::PrimaryControl :definition-)
      "std_msgs/Header header

bool active
bool estop

float32 steering_command
# Steering command in range [0.0 to 1.0]

float32 throttle_command
# Throttle command in range [0.0 to 1.0]

float32 brake_command
# Brake command in range [0.0 to 1.0]

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



(provide :marti_dbw_msgs/PrimaryControl "27c1b402f9d823bdca2b54b539b73c0d")


