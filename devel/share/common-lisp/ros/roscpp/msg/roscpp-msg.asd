
(cl:in-package :asdf)

(defsystem "roscpp-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Logger" :depends-on ("_package_Logger"))
    (:file "_package_Logger" :depends-on ("_package"))
  ))