;; Auto-generated. Do not edit!


(when (boundp 'ros_define_data::grasp)
  (if (not (find-package "ROS_DEFINE_DATA"))
    (make-package "ROS_DEFINE_DATA"))
  (shadow 'grasp (find-package "ROS_DEFINE_DATA")))
(unless (find-package "ROS_DEFINE_DATA::GRASP")
  (make-package "ROS_DEFINE_DATA::GRASP"))

(in-package "ROS")
;;//! \htmlinclude grasp.msg.html


(defclass ros_define_data::grasp
  :super ros::object
  :slots (_x _y _z _angle _width ))

(defmethod ros_define_data::grasp
  (:init
   (&key
    ((:x __x) 0)
    ((:y __y) 0)
    ((:z __z) 0.0)
    ((:angle __angle) 0.0)
    ((:width __width) 0.0)
    )
   (send-super :init)
   (setq _x (round __x))
   (setq _y (round __y))
   (setq _z (float __z))
   (setq _angle (float __angle))
   (setq _width (float __width))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:angle
   (&optional __angle)
   (if __angle (setq _angle __angle)) _angle)
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
  (:serialization-length
   ()
   (+
    ;; uint16 _x
    2
    ;; uint16 _y
    2
    ;; float64 _z
    8
    ;; float64 _angle
    8
    ;; float64 _width
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _x
       (write-word _x s)
     ;; uint16 _y
       (write-word _y s)
     ;; float64 _z
       (sys::poke _z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _angle
       (sys::poke _angle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _width
       (sys::poke _width (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _x
     (setq _x (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _y
     (setq _y (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float64 _z
     (setq _z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _angle
     (setq _angle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _width
     (setq _width (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get ros_define_data::grasp :md5sum-) "abc3897fa241af8b047640ec48eaf40f")
(setf (get ros_define_data::grasp :datatype-) "ros_define_data/grasp")
(setf (get ros_define_data::grasp :definition-)
      "uint16 x
uint16 y
float64 z
float64 angle
float64 width

")



(provide :ros_define_data/grasp "abc3897fa241af8b047640ec48eaf40f")


