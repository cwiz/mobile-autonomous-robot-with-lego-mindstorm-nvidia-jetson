
(cl:in-package :asdf)

(defsystem "h4r_ev3_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Seek" :depends-on ("_package_Seek"))
    (:file "_package_Seek" :depends-on ("_package"))
  ))