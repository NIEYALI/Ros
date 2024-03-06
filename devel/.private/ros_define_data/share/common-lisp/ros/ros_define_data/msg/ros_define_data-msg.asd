
(cl:in-package :asdf)

(defsystem "ros_define_data-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "grasp" :depends-on ("_package_grasp"))
    (:file "_package_grasp" :depends-on ("_package"))
  ))