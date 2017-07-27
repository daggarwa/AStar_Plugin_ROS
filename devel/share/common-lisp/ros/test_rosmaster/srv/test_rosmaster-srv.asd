
(cl:in-package :asdf)

(defsystem "test_rosmaster-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :test_rosmaster-msg
)
  :components ((:file "_package")
    (:file "AddTwoInts" :depends-on ("_package_AddTwoInts"))
    (:file "_package_AddTwoInts" :depends-on ("_package"))
    (:file "RossrvB" :depends-on ("_package_RossrvB"))
    (:file "_package_RossrvB" :depends-on ("_package"))
    (:file "RossrvA" :depends-on ("_package_RossrvA"))
    (:file "_package_RossrvA" :depends-on ("_package"))
  ))