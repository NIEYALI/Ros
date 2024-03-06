
(cl:in-package :asdf)

(defsystem "ros_define_data-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "grasp_" :depends-on ("_package_grasp_"))
    (:file "_package_grasp_" :depends-on ("_package"))
  ))