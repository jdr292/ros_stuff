
(cl:in-package :asdf)

(defsystem "my_package-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :sensor_msgs-msg
)
  :components ((:file "_package")
    (:file "RepublishPointcloud" :depends-on ("_package_RepublishPointcloud"))
    (:file "_package_RepublishPointcloud" :depends-on ("_package"))
  ))