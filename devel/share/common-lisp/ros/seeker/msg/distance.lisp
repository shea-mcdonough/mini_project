; Auto-generated. Do not edit!


(cl:in-package seeker-msg)


;//! \htmlinclude distance.msg.html

(cl:defclass <distance> (roslisp-msg-protocol:ros-message)
  ((distanceMessage
    :reader distanceMessage
    :initarg :distanceMessage
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3)))
)

(cl:defclass distance (<distance>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <distance>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'distance)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name seeker-msg:<distance> is deprecated: use seeker-msg:distance instead.")))

(cl:ensure-generic-function 'distanceMessage-val :lambda-list '(m))
(cl:defmethod distanceMessage-val ((m <distance>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader seeker-msg:distanceMessage-val is deprecated.  Use seeker-msg:distanceMessage instead.")
  (distanceMessage m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <distance>) ostream)
  "Serializes a message object of type '<distance>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'distanceMessage) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <distance>) istream)
  "Deserializes a message object of type '<distance>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'distanceMessage) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<distance>)))
  "Returns string type for a message object of type '<distance>"
  "seeker/distance")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'distance)))
  "Returns string type for a message object of type 'distance"
  "seeker/distance")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<distance>)))
  "Returns md5sum for a message object of type '<distance>"
  "fe0e9932c4dd177553df36353ad63384")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'distance)))
  "Returns md5sum for a message object of type 'distance"
  "fe0e9932c4dd177553df36353ad63384")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<distance>)))
  "Returns full string definition for message of type '<distance>"
  (cl:format cl:nil "geometry_msgs/Vector3 distanceMessage~%#float64 x~%#float64 y~%#float64 z~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'distance)))
  "Returns full string definition for message of type 'distance"
  (cl:format cl:nil "geometry_msgs/Vector3 distanceMessage~%#float64 x~%#float64 y~%#float64 z~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <distance>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'distanceMessage))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <distance>))
  "Converts a ROS message object to a list"
  (cl:list 'distance
    (cl:cons ':distanceMessage (distanceMessage msg))
))
