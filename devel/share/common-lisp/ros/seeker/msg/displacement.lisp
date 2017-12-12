; Auto-generated. Do not edit!


(cl:in-package seeker-msg)


;//! \htmlinclude displacement.msg.html

(cl:defclass <displacement> (roslisp-msg-protocol:ros-message)
  ((displacementMessage
    :reader displacementMessage
    :initarg :displacementMessage
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3)))
)

(cl:defclass displacement (<displacement>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <displacement>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'displacement)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name seeker-msg:<displacement> is deprecated: use seeker-msg:displacement instead.")))

(cl:ensure-generic-function 'displacementMessage-val :lambda-list '(m))
(cl:defmethod displacementMessage-val ((m <displacement>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader seeker-msg:displacementMessage-val is deprecated.  Use seeker-msg:displacementMessage instead.")
  (displacementMessage m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <displacement>) ostream)
  "Serializes a message object of type '<displacement>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'displacementMessage) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <displacement>) istream)
  "Deserializes a message object of type '<displacement>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'displacementMessage) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<displacement>)))
  "Returns string type for a message object of type '<displacement>"
  "seeker/displacement")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'displacement)))
  "Returns string type for a message object of type 'displacement"
  "seeker/displacement")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<displacement>)))
  "Returns md5sum for a message object of type '<displacement>"
  "32f65ba4fdf766c71719d0c45327361d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'displacement)))
  "Returns md5sum for a message object of type 'displacement"
  "32f65ba4fdf766c71719d0c45327361d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<displacement>)))
  "Returns full string definition for message of type '<displacement>"
  (cl:format cl:nil "geometry_msgs/Vector3 displacementMessage~%#float64 x~%#float64 y~%#float64 z~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'displacement)))
  "Returns full string definition for message of type 'displacement"
  (cl:format cl:nil "geometry_msgs/Vector3 displacementMessage~%#float64 x~%#float64 y~%#float64 z~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <displacement>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'displacementMessage))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <displacement>))
  "Converts a ROS message object to a list"
  (cl:list 'displacement
    (cl:cons ':displacementMessage (displacementMessage msg))
))
