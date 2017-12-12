
(cl:in-package :asdf)

(defsystem "seeker-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "displacement" :depends-on ("_package_displacement"))
    (:file "_package_displacement" :depends-on ("_package"))
  ))