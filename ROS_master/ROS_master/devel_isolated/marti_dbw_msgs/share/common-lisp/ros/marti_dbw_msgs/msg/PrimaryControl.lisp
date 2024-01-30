; Auto-generated. Do not edit!


(cl:in-package marti_dbw_msgs-msg)


;//! \htmlinclude PrimaryControl.msg.html

(cl:defclass <PrimaryControl> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (active
    :reader active
    :initarg :active
    :type cl:boolean
    :initform cl:nil)
   (estop
    :reader estop
    :initarg :estop
    :type cl:boolean
    :initform cl:nil)
   (steering_command
    :reader steering_command
    :initarg :steering_command
    :type cl:float
    :initform 0.0)
   (throttle_command
    :reader throttle_command
    :initarg :throttle_command
    :type cl:float
    :initform 0.0)
   (brake_command
    :reader brake_command
    :initarg :brake_command
    :type cl:float
    :initform 0.0))
)

(cl:defclass PrimaryControl (<PrimaryControl>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PrimaryControl>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PrimaryControl)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name marti_dbw_msgs-msg:<PrimaryControl> is deprecated: use marti_dbw_msgs-msg:PrimaryControl instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <PrimaryControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_dbw_msgs-msg:header-val is deprecated.  Use marti_dbw_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'active-val :lambda-list '(m))
(cl:defmethod active-val ((m <PrimaryControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_dbw_msgs-msg:active-val is deprecated.  Use marti_dbw_msgs-msg:active instead.")
  (active m))

(cl:ensure-generic-function 'estop-val :lambda-list '(m))
(cl:defmethod estop-val ((m <PrimaryControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_dbw_msgs-msg:estop-val is deprecated.  Use marti_dbw_msgs-msg:estop instead.")
  (estop m))

(cl:ensure-generic-function 'steering_command-val :lambda-list '(m))
(cl:defmethod steering_command-val ((m <PrimaryControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_dbw_msgs-msg:steering_command-val is deprecated.  Use marti_dbw_msgs-msg:steering_command instead.")
  (steering_command m))

(cl:ensure-generic-function 'throttle_command-val :lambda-list '(m))
(cl:defmethod throttle_command-val ((m <PrimaryControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_dbw_msgs-msg:throttle_command-val is deprecated.  Use marti_dbw_msgs-msg:throttle_command instead.")
  (throttle_command m))

(cl:ensure-generic-function 'brake_command-val :lambda-list '(m))
(cl:defmethod brake_command-val ((m <PrimaryControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_dbw_msgs-msg:brake_command-val is deprecated.  Use marti_dbw_msgs-msg:brake_command instead.")
  (brake_command m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PrimaryControl>) ostream)
  "Serializes a message object of type '<PrimaryControl>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'active) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'estop) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'steering_command))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'throttle_command))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'brake_command))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PrimaryControl>) istream)
  "Deserializes a message object of type '<PrimaryControl>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:slot-value msg 'active) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'estop) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'steering_command) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'throttle_command) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'brake_command) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PrimaryControl>)))
  "Returns string type for a message object of type '<PrimaryControl>"
  "marti_dbw_msgs/PrimaryControl")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PrimaryControl)))
  "Returns string type for a message object of type 'PrimaryControl"
  "marti_dbw_msgs/PrimaryControl")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PrimaryControl>)))
  "Returns md5sum for a message object of type '<PrimaryControl>"
  "27c1b402f9d823bdca2b54b539b73c0d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PrimaryControl)))
  "Returns md5sum for a message object of type 'PrimaryControl"
  "27c1b402f9d823bdca2b54b539b73c0d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PrimaryControl>)))
  "Returns full string definition for message of type '<PrimaryControl>"
  (cl:format cl:nil "std_msgs/Header header~%~%bool active~%bool estop~%~%float32 steering_command~%# Steering command in range [0.0 to 1.0]~%~%float32 throttle_command~%# Throttle command in range [0.0 to 1.0]~%~%float32 brake_command~%# Brake command in range [0.0 to 1.0]~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PrimaryControl)))
  "Returns full string definition for message of type 'PrimaryControl"
  (cl:format cl:nil "std_msgs/Header header~%~%bool active~%bool estop~%~%float32 steering_command~%# Steering command in range [0.0 to 1.0]~%~%float32 throttle_command~%# Throttle command in range [0.0 to 1.0]~%~%float32 brake_command~%# Brake command in range [0.0 to 1.0]~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PrimaryControl>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PrimaryControl>))
  "Converts a ROS message object to a list"
  (cl:list 'PrimaryControl
    (cl:cons ':header (header msg))
    (cl:cons ':active (active msg))
    (cl:cons ':estop (estop msg))
    (cl:cons ':steering_command (steering_command msg))
    (cl:cons ':throttle_command (throttle_command msg))
    (cl:cons ':brake_command (brake_command msg))
))
