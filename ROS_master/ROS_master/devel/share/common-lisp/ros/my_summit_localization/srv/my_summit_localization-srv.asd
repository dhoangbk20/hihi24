
(cl:in-package :asdf)

(defsystem "my_summit_localization-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "MyServiceMsg" :depends-on ("_package_MyServiceMsg"))
    (:file "_package_MyServiceMsg" :depends-on ("_package"))
  ))