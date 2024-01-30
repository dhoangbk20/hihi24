; Auto-generated. Do not edit!


(cl:in-package marti_dbw_msgs-msg)


;//! \htmlinclude TransmissionFeedback.msg.html

(cl:defclass <TransmissionFeedback> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (current_range
    :reader current_range
    :initarg :current_range
    :type cl:string
    :initform "")
   (stable
    :reader stable
    :initarg :stable
    :type cl:boolean
    :initform cl:nil)
   (reverse
    :reader reverse
    :initarg :reverse
    :type cl:boolean
    :initform cl:nil)
   (forward
    :reader forward
    :initarg :forward
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass TransmissionFeedback (<TransmissionFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TransmissionFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TransmissionFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name marti_dbw_msgs-msg:<TransmissionFeedback> is deprecated: use marti_dbw_msgs-msg:TransmissionFeedback instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <TransmissionFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_dbw_msgs-msg:header-val is deprecated.  Use marti_dbw_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'current_range-val :lambda-list '(m))
(cl:defmethod current_range-val ((m <TransmissionFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_dbw_msgs-msg:current_range-val is deprecated.  Use marti_dbw_msgs-msg:current_range instead.")
  (current_range m))

(cl:ensure-generic-function 'stable-val :lambda-list '(m))
(cl:defmethod stable-val ((m <TransmissionFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_dbw_msgs-msg:stable-val is deprecated.  Use marti_dbw_msgs-msg:stable instead.")
  (stable m))

(cl:ensure-generic-function 'reverse-val :lambda-list '(m))
(cl:defmethod reverse-val ((m <TransmissionFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_dbw_msgs-msg:reverse-val is deprecated.  Use marti_dbw_msgs-msg:reverse instead.")
  (reverse m))

(cl:ensure-generic-function 'forward-val :lambda-list '(m))
(cl:defmethod forward-val ((m <TransmissionFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_dbw_msgs-msg:forward-val is deprecated.  Use marti_dbw_msgs-msg:forward instead.")
  (forward m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TransmissionFeedback>) ostream)
  "Serializes a message object of type '<TransmissionFeedback>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'current_range))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'current_range))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'stable) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'reverse) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'forward) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TransmissionFeedback>) istream)
  "Deserializes a message object of type '<TransmissionFeedback>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'current_range) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'current_range) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'stable) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'reverse) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'forward) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TransmissionFeedback>)))
  "Returns string type for a message object of type '<TransmissionFeedback>"
  "marti_dbw_msgs/TransmissionFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TransmissionFeedback)))
  "Returns string type for a message object of type 'TransmissionFeedback"
  "marti_dbw_msgs/TransmissionFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TransmissionFeedback>)))
  "Returns md5sum for a message object of type '<TransmissionFeedback>"
  "20d42db6f4086e2557c494444b704d8c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TransmissionFeedback)))
  "Returns md5sum for a message object of type 'TransmissionFeedback"
  "20d42db6f4086e2557c494444b704d8c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TransmissionFeedback>)))
  "Returns full string definition for message of type '<TransmissionFeedback>"
  (cl:format cl:nil "std_msgs/Header header~%~%string current_range~%~%# This is false during shifting when the actuator is moving or~%# settling into the final position.~%bool stable~%~%# This is true when the vehicle is in a reversing gear.~%bool reverse~%~%# This is true when the vehicle is in a forward gear.~%bool forward~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TransmissionFeedback)))
  "Returns full string definition for message of type 'TransmissionFeedback"
  (cl:format cl:nil "std_msgs/Header header~%~%string current_range~%~%# This is false during shifting when the actuator is moving or~%# settling into the final position.~%bool stable~%~%# This is true when the vehicle is in a reversing gear.~%bool reverse~%~%# This is true when the vehicle is in a forward gear.~%bool forward~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TransmissionFeedback>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'current_range))
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TransmissionFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'TransmissionFeedback
    (cl:cons ':header (header msg))
    (cl:cons ':current_range (current_range msg))
    (cl:cons ':stable (stable msg))
    (cl:cons ':reverse (reverse msg))
    (cl:cons ':forward (forward msg))
))
