
(cl:in-package :asdf)

(defsystem "test_roscpp-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "TestStringString" :depends-on ("_package_TestStringString"))
    (:file "_package_TestStringString" :depends-on ("_package"))
    (:file "BadTestStringString" :depends-on ("_package_BadTestStringString"))
    (:file "_package_BadTestStringString" :depends-on ("_package"))
  ))