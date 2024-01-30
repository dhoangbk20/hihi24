;; Auto-generated. Do not edit!


(when (boundp 'my_summit_localization::MyServiceMsg)
  (if (not (find-package "MY_SUMMIT_LOCALIZATION"))
    (make-package "MY_SUMMIT_LOCALIZATION"))
  (shadow 'MyServiceMsg (find-package "MY_SUMMIT_LOCALIZATION")))
(unless (find-package "MY_SUMMIT_LOCALIZATION::MYSERVICEMSG")
  (make-package "MY_SUMMIT_LOCALIZATION::MYSERVICEMSG"))
(unless (find-package "MY_SUMMIT_LOCALIZATION::MYSERVICEMSGREQUEST")
  (make-package "MY_SUMMIT_LOCALIZATION::MYSERVICEMSGREQUEST"))
(unless (find-package "MY_SUMMIT_LOCALIZATION::MYSERVICEMSGRESPONSE")
  (make-package "MY_SUMMIT_LOCALIZATION::MYSERVICEMSGRESPONSE"))

(in-package "ROS")





(defclass my_summit_localization::MyServiceMsgRequest
  :super ros::object
  :slots (_label ))

(defmethod my_summit_localization::MyServiceMsgRequest
  (:init
   (&key
    ((:label __label) "")
    )
   (send-super :init)
   (setq _label (string __label))
   self)
  (:label
   (&optional __label)
   (if __label (setq _label __label)) _label)
  (:serialization-length
   ()
   (+
    ;; string _label
    4 (length _label)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _label
       (write-long (length _label) s) (princ _label s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _label
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _label (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass my_summit_localization::MyServiceMsgResponse
  :super ros::object
  :slots (_navigation_successfull _message ))

(defmethod my_summit_localization::MyServiceMsgResponse
  (:init
   (&key
    ((:navigation_successfull __navigation_successfull) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _navigation_successfull __navigation_successfull)
   (setq _message (string __message))
   self)
  (:navigation_successfull
   (&optional __navigation_successfull)
   (if __navigation_successfull (setq _navigation_successfull __navigation_successfull)) _navigation_successfull)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool _navigation_successfull
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _navigation_successfull
       (if _navigation_successfull (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _navigation_successfull
     (setq _navigation_successfull (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass my_summit_localization::MyServiceMsg
  :super ros::object
  :slots ())

(setf (get my_summit_localization::MyServiceMsg :md5sum-) "920ca5ca095e1b5230fc32da338a974c")
(setf (get my_summit_localization::MyServiceMsg :datatype-) "my_summit_localization/MyServiceMsg")
(setf (get my_summit_localization::MyServiceMsg :request) my_summit_localization::MyServiceMsgRequest)
(setf (get my_summit_localization::MyServiceMsg :response) my_summit_localization::MyServiceMsgResponse)

(defmethod my_summit_localization::MyServiceMsgRequest
  (:response () (instance my_summit_localization::MyServiceMsgResponse :init)))

(setf (get my_summit_localization::MyServiceMsgRequest :md5sum-) "920ca5ca095e1b5230fc32da338a974c")
(setf (get my_summit_localization::MyServiceMsgRequest :datatype-) "my_summit_localization/MyServiceMsgRequest")
(setf (get my_summit_localization::MyServiceMsgRequest :definition-)
      "# request
string label
---
#response
bool navigation_successfull
string message
")

(setf (get my_summit_localization::MyServiceMsgResponse :md5sum-) "920ca5ca095e1b5230fc32da338a974c")
(setf (get my_summit_localization::MyServiceMsgResponse :datatype-) "my_summit_localization/MyServiceMsgResponse")
(setf (get my_summit_localization::MyServiceMsgResponse :definition-)
      "# request
string label
---
#response
bool navigation_successfull
string message
")



(provide :my_summit_localization/MyServiceMsg "920ca5ca095e1b5230fc32da338a974c")


