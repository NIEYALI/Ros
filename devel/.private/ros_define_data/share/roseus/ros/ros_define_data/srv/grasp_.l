;; Auto-generated. Do not edit!


(when (boundp 'ros_define_data::grasp_)
  (if (not (find-package "ROS_DEFINE_DATA"))
    (make-package "ROS_DEFINE_DATA"))
  (shadow 'grasp_ (find-package "ROS_DEFINE_DATA")))
(unless (find-package "ROS_DEFINE_DATA::GRASP_")
  (make-package "ROS_DEFINE_DATA::GRASP_"))
(unless (find-package "ROS_DEFINE_DATA::GRASP_REQUEST")
  (make-package "ROS_DEFINE_DATA::GRASP_REQUEST"))
(unless (find-package "ROS_DEFINE_DATA::GRASP_RESPONSE")
  (make-package "ROS_DEFINE_DATA::GRASP_RESPONSE"))

(in-package "ROS")





(defclass ros_define_data::grasp_Request
  :super ros::object
  :slots (_x _y ))

(defmethod ros_define_data::grasp_Request
  (:init
   (&key
    ((:x __x) 0)
    ((:y __y) 0)
    )
   (send-super :init)
   (setq _x (round __x))
   (setq _y (round __y))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:serialization-length
   ()
   (+
    ;; uint16 _x
    2
    ;; uint16 _y
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _x
       (write-word _x s)
     ;; uint16 _y
       (write-word _y s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _x
     (setq _x (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _y
     (setq _y (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(defclass ros_define_data::grasp_Response
  :super ros::object
  :slots (_distance ))

(defmethod ros_define_data::grasp_Response
  (:init
   (&key
    ((:distance __distance) 0)
    )
   (send-super :init)
   (setq _distance (round __distance))
   self)
  (:distance
   (&optional __distance)
   (if __distance (setq _distance __distance)) _distance)
  (:serialization-length
   ()
   (+
    ;; uint16 _distance
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _distance
       (write-word _distance s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _distance
     (setq _distance (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(defclass ros_define_data::grasp_
  :super ros::object
  :slots ())

(setf (get ros_define_data::grasp_ :md5sum-) "4de6ef4ba77ca302deb19b408e53f740")
(setf (get ros_define_data::grasp_ :datatype-) "ros_define_data/grasp_")
(setf (get ros_define_data::grasp_ :request) ros_define_data::grasp_Request)
(setf (get ros_define_data::grasp_ :response) ros_define_data::grasp_Response)

(defmethod ros_define_data::grasp_Request
  (:response () (instance ros_define_data::grasp_Response :init)))

(setf (get ros_define_data::grasp_Request :md5sum-) "4de6ef4ba77ca302deb19b408e53f740")
(setf (get ros_define_data::grasp_Request :datatype-) "ros_define_data/grasp_Request")
(setf (get ros_define_data::grasp_Request :definition-)
      "# request
uint16 x
uint16 y
---
# response
uint16 distance

")

(setf (get ros_define_data::grasp_Response :md5sum-) "4de6ef4ba77ca302deb19b408e53f740")
(setf (get ros_define_data::grasp_Response :datatype-) "ros_define_data/grasp_Response")
(setf (get ros_define_data::grasp_Response :definition-)
      "# request
uint16 x
uint16 y
---
# response
uint16 distance

")



(provide :ros_define_data/grasp_ "4de6ef4ba77ca302deb19b408e53f740")


