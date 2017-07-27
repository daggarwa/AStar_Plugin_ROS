
(cl:in-package :asdf)

(defsystem "roscpp-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :roscpp-msg
)
  :components ((:file "_package")
    (:file "Empty" :depends-on ("_package_Empty"))
    (:file "_package_Empty" :depends-on ("_package"))
    (:file "GetLoggers" :depends-on ("_package_GetLoggers"))
    (:file "_package_GetLoggers" :depends-on ("_package"))
    (:file "SetLoggerLevel" :depends-on ("_package_SetLoggerLevel"))
    (:file "_package_SetLoggerLevel" :depends-on ("_package"))
  ))