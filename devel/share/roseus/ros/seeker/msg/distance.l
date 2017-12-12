;; Auto-generated. Do not edit!


(when (boundp 'seeker::distance)
  (if (not (find-package "SEEKER"))
    (make-package "SEEKER"))
  (shadow 'distance (find-package "SEEKER")))
(unless (find-package "SEEKER::DISTANCE")
  (make-package "SEEKER::DISTANCE"))

(in-package "ROS")
;;//! \htmlinclude distance.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass seeker::distance
  :super ros::object
  :slots (_distanceMessage ))

(defmethod seeker::distance
  (:init
   (&key
    ((:distanceMessage __distanceMessage) (instance geometry_msgs::Vector3 :init))
    )
   (send-super :init)
   (setq _distanceMessage __distanceMessage)
   self)
  (:distanceMessage
   (&rest __distanceMessage)
   (if (keywordp (car __distanceMessage))
       (send* _distanceMessage __distanceMessage)
     (progn
       (if __distanceMessage (setq _distanceMessage (car __distanceMessage)))
       _distanceMessage)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Vector3 _distanceMessage
    (send _distanceMessage :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Vector3 _distanceMessage
       (send _distanceMessage :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Vector3 _distanceMessage
     (send _distanceMessage :deserialize buf ptr-) (incf ptr- (send _distanceMessage :serialization-length))
   ;;
   self)
  )

(setf (get seeker::distance :md5sum-) "fe0e9932c4dd177553df36353ad63384")
(setf (get seeker::distance :datatype-) "seeker/distance")
(setf (get seeker::distance :definition-)
      "geometry_msgs/Vector3 distanceMessage
#float64 x
#float64 y
#float64 z

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :seeker/distance "fe0e9932c4dd177553df36353ad63384")


