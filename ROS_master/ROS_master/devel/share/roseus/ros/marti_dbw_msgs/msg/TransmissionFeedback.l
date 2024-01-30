;; Auto-generated. Do not edit!


(when (boundp 'marti_dbw_msgs::TransmissionFeedback)
  (if (not (find-package "MARTI_DBW_MSGS"))
    (make-package "MARTI_DBW_MSGS"))
  (shadow 'TransmissionFeedback (find-package "MARTI_DBW_MSGS")))
(unless (find-package "MARTI_DBW_MSGS::TRANSMISSIONFEEDBACK")
  (make-package "MARTI_DBW_MSGS::TRANSMISSIONFEEDBACK"))

(in-package "ROS")
;;//! \htmlinclude TransmissionFeedback.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass marti_dbw_msgs::TransmissionFeedback
  :super ros::object
  :slots (_header _current_range _stable _reverse _forward ))

(defmethod marti_dbw_msgs::TransmissionFeedback
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:current_range __current_range) "")
    ((:stable __stable) nil)
    ((:reverse __reverse) nil)
    ((:forward __forward) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _current_range (string __current_range))
   (setq _stable __stable)
   (setq _reverse __reverse)
   (setq _forward __forward)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:current_range
   (&optional __current_range)
   (if __current_range (setq _current_range __current_range)) _current_range)
  (:stable
   (&optional __stable)
   (if __stable (setq _stable __stable)) _stable)
  (:reverse
   (&optional __reverse)
   (if __reverse (setq _reverse __reverse)) _reverse)
  (:forward
   (&optional __forward)
   (if __forward (setq _forward __forward)) _forward)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _current_range
    4 (length _current_range)
    ;; bool _stable
    1
    ;; bool _reverse
    1
    ;; bool _forward
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _current_range
       (write-long (length _current_range) s) (princ _current_range s)
     ;; bool _stable
       (if _stable (write-byte -1 s) (write-byte 0 s))
     ;; bool _reverse
       (if _reverse (write-byte -1 s) (write-byte 0 s))
     ;; bool _forward
       (if _forward (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _current_range
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _current_range (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _stable
     (setq _stable (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _reverse
     (setq _reverse (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _forward
     (setq _forward (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get marti_dbw_msgs::TransmissionFeedback :md5sum-) "20d42db6f4086e2557c494444b704d8c")
(setf (get marti_dbw_msgs::TransmissionFeedback :datatype-) "marti_dbw_msgs/TransmissionFeedback")
(setf (get marti_dbw_msgs::TransmissionFeedback :definition-)
      "std_msgs/Header header

string current_range

# This is false during shifting when the actuator is moving or
# settling into the final position.
bool stable

# This is true when the vehicle is in a reversing gear.
bool reverse

# This is true when the vehicle is in a forward gear.
bool forward

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



(provide :marti_dbw_msgs/TransmissionFeedback "20d42db6f4086e2557c494444b704d8c")


