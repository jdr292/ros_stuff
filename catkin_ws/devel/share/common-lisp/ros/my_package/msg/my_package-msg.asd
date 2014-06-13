
(cl:in-package :asdf)

(defsystem "my_package-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :sensor_msgs-msg
)
  :components ((:file "_package")
    (:file "PCAndString" :depends-on ("_package_PCAndString"))
    (:file "_package_PCAndString" :depends-on ("_package"))
  ))