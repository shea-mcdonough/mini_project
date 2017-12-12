;; Auto-generated. Do not edit!


(when (boundp 'seeker::displacement)
  (if (not (find-package "SEEKER"))
    (make-package "SEEKER"))
  (shadow 'displacement (find-package "SEEKER")))
(unless (find-package "SEEKER::DISPLACEMENT")
  (make-package "SEEKER::DISPLACEMENT"))

(in-package "ROS")
;;//! \htmlinclude displacement.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass seeker::displacement
  :super ros::object
  :slots (_displacementMessage ))

(defmethod seeker::displacement
  (:init
   (&key
    ((:displacementMessage __displacementMessage) (instance geometry_msgs::Vector3 :init))
    )
   (send-super :init)
   (setq _displacementMessage __displacementMessage)
   self)
  (:displacementMessage
   (&rest __displacementMessage)
   (if (keywordp (car __displacementMessage))
       (send* _displacementMessage __displacementMessage)
     (progn
       (if __displacementMessage (setq _displacementMessage (car __displacementMessage)))
       _displacementMessage)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Vector3 _displacementMessage
    (send _displacementMessage :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Vector3 _displacementMessage
       (send _displacementMessage :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Vector3 _displacementMessage
     (send _displacementMessage :deserialize buf ptr-) (incf ptr- (send _displacementMessage :serialization-length))
   ;;
   self)
  )

(setf (get seeker::displacement :md5sum-) "32f65ba4fdf766c71719d0c45327361d")
(setf (get seeker::displacement :datatype-) "seeker/displacement")
(setf (get seeker::displacement :definition-)
      "geometry_msgs/Vector3 displacementMessage
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



(provide :seeker/displacement "32f65ba4fdf766c71719d0c45327361d")


