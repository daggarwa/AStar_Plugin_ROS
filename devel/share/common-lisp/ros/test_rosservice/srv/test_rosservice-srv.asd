
(cl:in-package :asdf)

(defsystem "test_rosservice-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "HeaderEcho" :depends-on ("_package_HeaderEcho"))
    (:file "_package_HeaderEcho" :depends-on ("_package"))
  ))