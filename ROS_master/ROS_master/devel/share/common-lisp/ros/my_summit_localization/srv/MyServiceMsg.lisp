; Auto-generated. Do not edit!


(cl:in-package my_summit_localization-srv)


;//! \htmlinclude MyServiceMsg-request.msg.html

(cl:defclass <MyServiceMsg-request> (roslisp-msg-protocol:ros-message)
  ((label
    :reader label
    :initarg :label
    :type cl:string
    :initform ""))
)

(cl:defclass MyServiceMsg-request (<MyServiceMsg-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MyServiceMsg-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MyServiceMsg-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name my_summit_localization-srv:<MyServiceMsg-request> is deprecated: use my_summit_localization-srv:MyServiceMsg-request instead.")))

(cl:ensure-generic-function 'label-val :lambda-list '(m))
(cl:defmethod label-val ((m <MyServiceMsg-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_summit_localization-srv:label-val is deprecated.  Use my_summit_localization-srv:label instead.")
  (label m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MyServiceMsg-request>) ostream)
  "Serializes a message object of type '<MyServiceMsg-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'label))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'label))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MyServiceMsg-request>) istream)
  "Deserializes a message object of type '<MyServiceMsg-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'label) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'label) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MyServiceMsg-request>)))
  "Returns string type for a service object of type '<MyServiceMsg-request>"
  "my_summit_localization/MyServiceMsgRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MyServiceMsg-request)))
  "Returns string type for a service object of type 'MyServiceMsg-request"
  "my_summit_localization/MyServiceMsgRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MyServiceMsg-request>)))
  "Returns md5sum for a message object of type '<MyServiceMsg-request>"
  "920ca5ca095e1b5230fc32da338a974c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MyServiceMsg-request)))
  "Returns md5sum for a message object of type 'MyServiceMsg-request"
  "920ca5ca095e1b5230fc32da338a974c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MyServiceMsg-request>)))
  "Returns full string definition for message of type '<MyServiceMsg-request>"
  (cl:format cl:nil "# request~%string label~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MyServiceMsg-request)))
  "Returns full string definition for message of type 'MyServiceMsg-request"
  (cl:format cl:nil "# request~%string label~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MyServiceMsg-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'label))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MyServiceMsg-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MyServiceMsg-request
    (cl:cons ':label (label msg))
))
;//! \htmlinclude MyServiceMsg-response.msg.html

(cl:defclass <MyServiceMsg-response> (roslisp-msg-protocol:ros-message)
  ((navigation_successfull
    :reader navigation_successfull
    :initarg :navigation_successfull
    :type cl:boolean
    :initform cl:nil)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass MyServiceMsg-response (<MyServiceMsg-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MyServiceMsg-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MyServiceMsg-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name my_summit_localization-srv:<MyServiceMsg-response> is deprecated: use my_summit_localization-srv:MyServiceMsg-response instead.")))

(cl:ensure-generic-function 'navigation_successfull-val :lambda-list '(m))
(cl:defmethod navigation_successfull-val ((m <MyServiceMsg-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_summit_localization-srv:navigation_successfull-val is deprecated.  Use my_summit_localization-srv:navigation_successfull instead.")
  (navigation_successfull m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <MyServiceMsg-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_summit_localization-srv:message-val is deprecated.  Use my_summit_localization-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MyServiceMsg-response>) ostream)
  "Serializes a message object of type '<MyServiceMsg-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'navigation_successfull) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MyServiceMsg-response>) istream)
  "Deserializes a message object of type '<MyServiceMsg-response>"
    (cl:setf (cl:slot-value msg 'navigation_successfull) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MyServiceMsg-response>)))
  "Returns string type for a service object of type '<MyServiceMsg-response>"
  "my_summit_localization/MyServiceMsgResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MyServiceMsg-response)))
  "Returns string type for a service object of type 'MyServiceMsg-response"
  "my_summit_localization/MyServiceMsgResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MyServiceMsg-response>)))
  "Returns md5sum for a message object of type '<MyServiceMsg-response>"
  "920ca5ca095e1b5230fc32da338a974c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MyServiceMsg-response)))
  "Returns md5sum for a message object of type 'MyServiceMsg-response"
  "920ca5ca095e1b5230fc32da338a974c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MyServiceMsg-response>)))
  "Returns full string definition for message of type '<MyServiceMsg-response>"
  (cl:format cl:nil "#response~%bool navigation_successfull~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MyServiceMsg-response)))
  "Returns full string definition for message of type 'MyServiceMsg-response"
  (cl:format cl:nil "#response~%bool navigation_successfull~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MyServiceMsg-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MyServiceMsg-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MyServiceMsg-response
    (cl:cons ':navigation_successfull (navigation_successfull msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MyServiceMsg)))
  'MyServiceMsg-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MyServiceMsg)))
  'MyServiceMsg-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MyServiceMsg)))
  "Returns string type for a service object of type '<MyServiceMsg>"
  "my_summit_localization/MyServiceMsg")