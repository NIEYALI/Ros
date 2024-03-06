; Auto-generated. Do not edit!


(cl:in-package ros_define_data-srv)


;//! \htmlinclude grasp_-request.msg.html

(cl:defclass <grasp_-request> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:fixnum
    :initform 0)
   (y
    :reader y
    :initarg :y
    :type cl:fixnum
    :initform 0))
)

(cl:defclass grasp_-request (<grasp_-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <grasp_-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'grasp_-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_define_data-srv:<grasp_-request> is deprecated: use ros_define_data-srv:grasp_-request instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <grasp_-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_define_data-srv:x-val is deprecated.  Use ros_define_data-srv:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <grasp_-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_define_data-srv:y-val is deprecated.  Use ros_define_data-srv:y instead.")
  (y m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <grasp_-request>) ostream)
  "Serializes a message object of type '<grasp_-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'x)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'x)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'y)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'y)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <grasp_-request>) istream)
  "Deserializes a message object of type '<grasp_-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'x)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'x)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'y)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'y)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<grasp_-request>)))
  "Returns string type for a service object of type '<grasp_-request>"
  "ros_define_data/grasp_Request")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'grasp_-request)))
  "Returns string type for a service object of type 'grasp_-request"
  "ros_define_data/grasp_Request")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<grasp_-request>)))
  "Returns md5sum for a message object of type '<grasp_-request>"
  "4de6ef4ba77ca302deb19b408e53f740")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'grasp_-request)))
  "Returns md5sum for a message object of type 'grasp_-request"
  "4de6ef4ba77ca302deb19b408e53f740")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<grasp_-request>)))
  "Returns full string definition for message of type '<grasp_-request>"
  (cl:format cl:nil "# request~%uint16 x~%uint16 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'grasp_-request)))
  "Returns full string definition for message of type 'grasp_-request"
  (cl:format cl:nil "# request~%uint16 x~%uint16 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <grasp_-request>))
  (cl:+ 0
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <grasp_-request>))
  "Converts a ROS message object to a list"
  (cl:list 'grasp_-request
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
))
;//! \htmlinclude grasp_-response.msg.html

(cl:defclass <grasp_-response> (roslisp-msg-protocol:ros-message)
  ((distance
    :reader distance
    :initarg :distance
    :type cl:fixnum
    :initform 0))
)

(cl:defclass grasp_-response (<grasp_-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <grasp_-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'grasp_-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_define_data-srv:<grasp_-response> is deprecated: use ros_define_data-srv:grasp_-response instead.")))

(cl:ensure-generic-function 'distance-val :lambda-list '(m))
(cl:defmethod distance-val ((m <grasp_-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_define_data-srv:distance-val is deprecated.  Use ros_define_data-srv:distance instead.")
  (distance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <grasp_-response>) ostream)
  "Serializes a message object of type '<grasp_-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'distance)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'distance)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <grasp_-response>) istream)
  "Deserializes a message object of type '<grasp_-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'distance)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'distance)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<grasp_-response>)))
  "Returns string type for a service object of type '<grasp_-response>"
  "ros_define_data/grasp_Response")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'grasp_-response)))
  "Returns string type for a service object of type 'grasp_-response"
  "ros_define_data/grasp_Response")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<grasp_-response>)))
  "Returns md5sum for a message object of type '<grasp_-response>"
  "4de6ef4ba77ca302deb19b408e53f740")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'grasp_-response)))
  "Returns md5sum for a message object of type 'grasp_-response"
  "4de6ef4ba77ca302deb19b408e53f740")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<grasp_-response>)))
  "Returns full string definition for message of type '<grasp_-response>"
  (cl:format cl:nil "# response~%uint16 distance~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'grasp_-response)))
  "Returns full string definition for message of type 'grasp_-response"
  (cl:format cl:nil "# response~%uint16 distance~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <grasp_-response>))
  (cl:+ 0
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <grasp_-response>))
  "Converts a ROS message object to a list"
  (cl:list 'grasp_-response
    (cl:cons ':distance (distance msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'grasp_)))
  'grasp_-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'grasp_)))
  'grasp_-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'grasp_)))
  "Returns string type for a service object of type '<grasp_>"
  "ros_define_data/grasp_")