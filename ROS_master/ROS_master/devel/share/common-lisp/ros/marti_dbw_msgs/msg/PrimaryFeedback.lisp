; Auto-generated. Do not edit!


(cl:in-package marti_dbw_msgs-msg)


;//! \htmlinclude PrimaryFeedback.msg.html

(cl:defclass <PrimaryFeedback> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (present
    :reader present
    :initarg :present
    :type cl:boolean
    :initform cl:nil)
   (robotic_mode
    :reader robotic_mode
    :initarg :robotic_mode
    :type cl:boolean
    :initform cl:nil)
   (steering_command
    :reader steering_command
    :initarg :steering_command
    :type cl:float
    :initform 0.0)
   (steering_measure
    :reader steering_measure
    :initarg :steering_measure
    :type cl:float
    :initform 0.0)
   (throttle_command
    :reader throttle_command
    :initarg :throttle_command
    :type cl:float
    :initform 0.0)
   (throttle_measure
    :reader throttle_measure
    :initarg :throttle_measure
    :type cl:float
    :initform 0.0)
   (brake_command
    :reader brake_command
    :initarg :brake_command
    :type cl:float
    :initform 0.0)
   (brake_measure
    :reader brake_measure
    :initarg :brake_measure
    :type cl:float
    :initform 0.0)
   (estop_command
    :reader estop_command
    :initarg :estop_command
    :type cl:boolean
    :initform cl:nil)
   (estop_measure
    :reader estop_measure
    :initarg :estop_measure
    :type cl:boolean
    :initform cl:nil)
   (error_steering
    :reader error_steering
    :initarg :error_steering
    :type cl:boolean
    :initform cl:nil)
   (error_throttle
    :reader error_throttle
    :initarg :error_throttle
    :type cl:boolean
    :initform cl:nil)
   (error_brake
    :reader error_brake
    :initarg :error_brake
    :type cl:boolean
    :initform cl:nil)
   (error_other
    :reader error_other
    :initarg :error_other
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass PrimaryFeedback (<PrimaryFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PrimaryFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PrimaryFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name marti_dbw_msgs-msg:<PrimaryFeedback> is deprecated: use marti_dbw_msgs-msg:PrimaryFeedback instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <PrimaryFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_dbw_msgs-msg:header-val is deprecated.  Use marti_dbw_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'present-val :lambda-list '(m))
(cl:defmethod present-val ((m <PrimaryFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_dbw_msgs-msg:present-val is deprecated.  Use marti_dbw_msgs-msg:present instead.")
  (present m))

(cl:ensure-generic-function 'robotic_mode-val :lambda-list '(m))
(cl:defmethod robotic_mode-val ((m <PrimaryFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_dbw_msgs-msg:robotic_mode-val is deprecated.  Use marti_dbw_msgs-msg:robotic_mode instead.")
  (robotic_mode m))

(cl:ensure-generic-function 'steering_command-val :lambda-list '(m))
(cl:defmethod steering_command-val ((m <PrimaryFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_dbw_msgs-msg:steering_command-val is deprecated.  Use marti_dbw_msgs-msg:steering_command instead.")
  (steering_command m))

(cl:ensure-generic-function 'steering_measure-val :lambda-list '(m))
(cl:defmethod steering_measure-val ((m <PrimaryFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_dbw_msgs-msg:steering_measure-val is deprecated.  Use marti_dbw_msgs-msg:steering_measure instead.")
  (steering_measure m))

(cl:ensure-generic-function 'throttle_command-val :lambda-list '(m))
(cl:defmethod throttle_command-val ((m <PrimaryFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_dbw_msgs-msg:throttle_command-val is deprecated.  Use marti_dbw_msgs-msg:throttle_command instead.")
  (throttle_command m))

(cl:ensure-generic-function 'throttle_measure-val :lambda-list '(m))
(cl:defmethod throttle_measure-val ((m <PrimaryFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_dbw_msgs-msg:throttle_measure-val is deprecated.  Use marti_dbw_msgs-msg:throttle_measure instead.")
  (throttle_measure m))

(cl:ensure-generic-function 'brake_command-val :lambda-list '(m))
(cl:defmethod brake_command-val ((m <PrimaryFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_dbw_msgs-msg:brake_command-val is deprecated.  Use marti_dbw_msgs-msg:brake_command instead.")
  (brake_command m))

(cl:ensure-generic-function 'brake_measure-val :lambda-list '(m))
(cl:defmethod brake_measure-val ((m <PrimaryFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_dbw_msgs-msg:brake_measure-val is deprecated.  Use marti_dbw_msgs-msg:brake_measure instead.")
  (brake_measure m))

(cl:ensure-generic-function 'estop_command-val :lambda-list '(m))
(cl:defmethod estop_command-val ((m <PrimaryFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_dbw_msgs-msg:estop_command-val is deprecated.  Use marti_dbw_msgs-msg:estop_command instead.")
  (estop_command m))

(cl:ensure-generic-function 'estop_measure-val :lambda-list '(m))
(cl:defmethod estop_measure-val ((m <PrimaryFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_dbw_msgs-msg:estop_measure-val is deprecated.  Use marti_dbw_msgs-msg:estop_measure instead.")
  (estop_measure m))

(cl:ensure-generic-function 'error_steering-val :lambda-list '(m))
(cl:defmethod error_steering-val ((m <PrimaryFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_dbw_msgs-msg:error_steering-val is deprecated.  Use marti_dbw_msgs-msg:error_steering instead.")
  (error_steering m))

(cl:ensure-generic-function 'error_throttle-val :lambda-list '(m))
(cl:defmethod error_throttle-val ((m <PrimaryFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_dbw_msgs-msg:error_throttle-val is deprecated.  Use marti_dbw_msgs-msg:error_throttle instead.")
  (error_throttle m))

(cl:ensure-generic-function 'error_brake-val :lambda-list '(m))
(cl:defmethod error_brake-val ((m <PrimaryFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_dbw_msgs-msg:error_brake-val is deprecated.  Use marti_dbw_msgs-msg:error_brake instead.")
  (error_brake m))

(cl:ensure-generic-function 'error_other-val :lambda-list '(m))
(cl:defmethod error_other-val ((m <PrimaryFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_dbw_msgs-msg:error_other-val is deprecated.  Use marti_dbw_msgs-msg:error_other instead.")
  (error_other m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PrimaryFeedback>) ostream)
  "Serializes a message object of type '<PrimaryFeedback>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'present) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'robotic_mode) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'steering_command))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'steering_measure))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'throttle_command))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'throttle_measure))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'brake_command))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'brake_measure))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'estop_command) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'estop_measure) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'error_steering) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'error_throttle) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'error_brake) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'error_other) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PrimaryFeedback>) istream)
  "Deserializes a message object of type '<PrimaryFeedback>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:slot-value msg 'present) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'robotic_mode) (cl:not (cl:zerop (cl:read-byte istream))))
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
    (cl:setf (cl:slot-value msg 'steering_measure) (roslisp-utils:decode-single-float-bits bits)))
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
    (cl:setf (cl:slot-value msg 'throttle_measure) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'brake_command) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'brake_measure) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'estop_command) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'estop_measure) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'error_steering) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'error_throttle) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'error_brake) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'error_other) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PrimaryFeedback>)))
  "Returns string type for a message object of type '<PrimaryFeedback>"
  "marti_dbw_msgs/PrimaryFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PrimaryFeedback)))
  "Returns string type for a message object of type 'PrimaryFeedback"
  "marti_dbw_msgs/PrimaryFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PrimaryFeedback>)))
  "Returns md5sum for a message object of type '<PrimaryFeedback>"
  "30a7ed1579a7c53a676c3444badef268")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PrimaryFeedback)))
  "Returns md5sum for a message object of type 'PrimaryFeedback"
  "30a7ed1579a7c53a676c3444badef268")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PrimaryFeedback>)))
  "Returns full string definition for message of type '<PrimaryFeedback>"
  (cl:format cl:nil "std_msgs/Header header~%~%bool present~%# Boolean flag indicating that DBW system is present and communicating~%# properly.  If this is false, none of the remaining data in the~%# feedback can be considered valid.~%~%# Boolean flag indicating that DBW system is in robotic mode.~%bool robotic_mode~%~%float32 steering_command~%float32 steering_measure~%# The current steering command and measured value of the steering~%# axies in the range [0.0 to 1.0].  Typically 0.0 is full left and 1.0~%# is full right, but the steering calibration can handle either~%# direction.~%~%float32 throttle_command~%float32 throttle_measure~%# The current throttle command and measured value of the throttle~%# control in the range [0.0 to 1.0]~%~%float32 brake_command~%float32 brake_measure~%# The current throttle command and measured value of the throttle~%# control in the range [0.0 to 1.0]~%~%bool estop_command~%bool estop_measure~%~%bool error_steering~%bool error_throttle~%bool error_brake~%bool error_other~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PrimaryFeedback)))
  "Returns full string definition for message of type 'PrimaryFeedback"
  (cl:format cl:nil "std_msgs/Header header~%~%bool present~%# Boolean flag indicating that DBW system is present and communicating~%# properly.  If this is false, none of the remaining data in the~%# feedback can be considered valid.~%~%# Boolean flag indicating that DBW system is in robotic mode.~%bool robotic_mode~%~%float32 steering_command~%float32 steering_measure~%# The current steering command and measured value of the steering~%# axies in the range [0.0 to 1.0].  Typically 0.0 is full left and 1.0~%# is full right, but the steering calibration can handle either~%# direction.~%~%float32 throttle_command~%float32 throttle_measure~%# The current throttle command and measured value of the throttle~%# control in the range [0.0 to 1.0]~%~%float32 brake_command~%float32 brake_measure~%# The current throttle command and measured value of the throttle~%# control in the range [0.0 to 1.0]~%~%bool estop_command~%bool estop_measure~%~%bool error_steering~%bool error_throttle~%bool error_brake~%bool error_other~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PrimaryFeedback>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     4
     4
     4
     4
     4
     4
     1
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PrimaryFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'PrimaryFeedback
    (cl:cons ':header (header msg))
    (cl:cons ':present (present msg))
    (cl:cons ':robotic_mode (robotic_mode msg))
    (cl:cons ':steering_command (steering_command msg))
    (cl:cons ':steering_measure (steering_measure msg))
    (cl:cons ':throttle_command (throttle_command msg))
    (cl:cons ':throttle_measure (throttle_measure msg))
    (cl:cons ':brake_command (brake_command msg))
    (cl:cons ':brake_measure (brake_measure msg))
    (cl:cons ':estop_command (estop_command msg))
    (cl:cons ':estop_measure (estop_measure msg))
    (cl:cons ':error_steering (error_steering msg))
    (cl:cons ':error_throttle (error_throttle msg))
    (cl:cons ':error_brake (error_brake msg))
    (cl:cons ':error_other (error_other msg))
))
