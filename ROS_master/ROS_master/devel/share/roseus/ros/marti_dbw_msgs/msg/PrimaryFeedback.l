;; Auto-generated. Do not edit!


(when (boundp 'marti_dbw_msgs::PrimaryFeedback)
  (if (not (find-package "MARTI_DBW_MSGS"))
    (make-package "MARTI_DBW_MSGS"))
  (shadow 'PrimaryFeedback (find-package "MARTI_DBW_MSGS")))
(unless (find-package "MARTI_DBW_MSGS::PRIMARYFEEDBACK")
  (make-package "MARTI_DBW_MSGS::PRIMARYFEEDBACK"))

(in-package "ROS")
;;//! \htmlinclude PrimaryFeedback.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass marti_dbw_msgs::PrimaryFeedback
  :super ros::object
  :slots (_header _present _robotic_mode _steering_command _steering_measure _throttle_command _throttle_measure _brake_command _brake_measure _estop_command _estop_measure _error_steering _error_throttle _error_brake _error_other ))

(defmethod marti_dbw_msgs::PrimaryFeedback
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:present __present) nil)
    ((:robotic_mode __robotic_mode) nil)
    ((:steering_command __steering_command) 0.0)
    ((:steering_measure __steering_measure) 0.0)
    ((:throttle_command __throttle_command) 0.0)
    ((:throttle_measure __throttle_measure) 0.0)
    ((:brake_command __brake_command) 0.0)
    ((:brake_measure __brake_measure) 0.0)
    ((:estop_command __estop_command) nil)
    ((:estop_measure __estop_measure) nil)
    ((:error_steering __error_steering) nil)
    ((:error_throttle __error_throttle) nil)
    ((:error_brake __error_brake) nil)
    ((:error_other __error_other) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _present __present)
   (setq _robotic_mode __robotic_mode)
   (setq _steering_command (float __steering_command))
   (setq _steering_measure (float __steering_measure))
   (setq _throttle_command (float __throttle_command))
   (setq _throttle_measure (float __throttle_measure))
   (setq _brake_command (float __brake_command))
   (setq _brake_measure (float __brake_measure))
   (setq _estop_command __estop_command)
   (setq _estop_measure __estop_measure)
   (setq _error_steering __error_steering)
   (setq _error_throttle __error_throttle)
   (setq _error_brake __error_brake)
   (setq _error_other __error_other)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:present
   (&optional __present)
   (if __present (setq _present __present)) _present)
  (:robotic_mode
   (&optional __robotic_mode)
   (if __robotic_mode (setq _robotic_mode __robotic_mode)) _robotic_mode)
  (:steering_command
   (&optional __steering_command)
   (if __steering_command (setq _steering_command __steering_command)) _steering_command)
  (:steering_measure
   (&optional __steering_measure)
   (if __steering_measure (setq _steering_measure __steering_measure)) _steering_measure)
  (:throttle_command
   (&optional __throttle_command)
   (if __throttle_command (setq _throttle_command __throttle_command)) _throttle_command)
  (:throttle_measure
   (&optional __throttle_measure)
   (if __throttle_measure (setq _throttle_measure __throttle_measure)) _throttle_measure)
  (:brake_command
   (&optional __brake_command)
   (if __brake_command (setq _brake_command __brake_command)) _brake_command)
  (:brake_measure
   (&optional __brake_measure)
   (if __brake_measure (setq _brake_measure __brake_measure)) _brake_measure)
  (:estop_command
   (&optional __estop_command)
   (if __estop_command (setq _estop_command __estop_command)) _estop_command)
  (:estop_measure
   (&optional __estop_measure)
   (if __estop_measure (setq _estop_measure __estop_measure)) _estop_measure)
  (:error_steering
   (&optional __error_steering)
   (if __error_steering (setq _error_steering __error_steering)) _error_steering)
  (:error_throttle
   (&optional __error_throttle)
   (if __error_throttle (setq _error_throttle __error_throttle)) _error_throttle)
  (:error_brake
   (&optional __error_brake)
   (if __error_brake (setq _error_brake __error_brake)) _error_brake)
  (:error_other
   (&optional __error_other)
   (if __error_other (setq _error_other __error_other)) _error_other)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; bool _present
    1
    ;; bool _robotic_mode
    1
    ;; float32 _steering_command
    4
    ;; float32 _steering_measure
    4
    ;; float32 _throttle_command
    4
    ;; float32 _throttle_measure
    4
    ;; float32 _brake_command
    4
    ;; float32 _brake_measure
    4
    ;; bool _estop_command
    1
    ;; bool _estop_measure
    1
    ;; bool _error_steering
    1
    ;; bool _error_throttle
    1
    ;; bool _error_brake
    1
    ;; bool _error_other
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; bool _present
       (if _present (write-byte -1 s) (write-byte 0 s))
     ;; bool _robotic_mode
       (if _robotic_mode (write-byte -1 s) (write-byte 0 s))
     ;; float32 _steering_command
       (sys::poke _steering_command (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _steering_measure
       (sys::poke _steering_measure (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _throttle_command
       (sys::poke _throttle_command (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _throttle_measure
       (sys::poke _throttle_measure (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _brake_command
       (sys::poke _brake_command (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _brake_measure
       (sys::poke _brake_measure (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _estop_command
       (if _estop_command (write-byte -1 s) (write-byte 0 s))
     ;; bool _estop_measure
       (if _estop_measure (write-byte -1 s) (write-byte 0 s))
     ;; bool _error_steering
       (if _error_steering (write-byte -1 s) (write-byte 0 s))
     ;; bool _error_throttle
       (if _error_throttle (write-byte -1 s) (write-byte 0 s))
     ;; bool _error_brake
       (if _error_brake (write-byte -1 s) (write-byte 0 s))
     ;; bool _error_other
       (if _error_other (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; bool _present
     (setq _present (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _robotic_mode
     (setq _robotic_mode (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _steering_command
     (setq _steering_command (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _steering_measure
     (setq _steering_measure (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _throttle_command
     (setq _throttle_command (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _throttle_measure
     (setq _throttle_measure (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _brake_command
     (setq _brake_command (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _brake_measure
     (setq _brake_measure (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _estop_command
     (setq _estop_command (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _estop_measure
     (setq _estop_measure (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _error_steering
     (setq _error_steering (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _error_throttle
     (setq _error_throttle (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _error_brake
     (setq _error_brake (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _error_other
     (setq _error_other (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get marti_dbw_msgs::PrimaryFeedback :md5sum-) "30a7ed1579a7c53a676c3444badef268")
(setf (get marti_dbw_msgs::PrimaryFeedback :datatype-) "marti_dbw_msgs/PrimaryFeedback")
(setf (get marti_dbw_msgs::PrimaryFeedback :definition-)
      "std_msgs/Header header

bool present
# Boolean flag indicating that DBW system is present and communicating
# properly.  If this is false, none of the remaining data in the
# feedback can be considered valid.

# Boolean flag indicating that DBW system is in robotic mode.
bool robotic_mode

float32 steering_command
float32 steering_measure
# The current steering command and measured value of the steering
# axies in the range [0.0 to 1.0].  Typically 0.0 is full left and 1.0
# is full right, but the steering calibration can handle either
# direction.

float32 throttle_command
float32 throttle_measure
# The current throttle command and measured value of the throttle
# control in the range [0.0 to 1.0]

float32 brake_command
float32 brake_measure
# The current throttle command and measured value of the throttle
# control in the range [0.0 to 1.0]

bool estop_command
bool estop_measure

bool error_steering
bool error_throttle
bool error_brake
bool error_other

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



(provide :marti_dbw_msgs/PrimaryFeedback "30a7ed1579a7c53a676c3444badef268")


