
(cl:in-package :asdf)

(defsystem "test_rospy-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
               :test_rospy-msg
)
  :components ((:file "_package")
    (:file "EmptySrv" :depends-on ("_package_EmptySrv"))
    (:file "_package_EmptySrv" :depends-on ("_package"))
    (:file "StringString" :depends-on ("_package_StringString"))
    (:file "_package_StringString" :depends-on ("_package"))
    (:file "MultipleAddTwoInts" :depends-on ("_package_MultipleAddTwoInts"))
    (:file "_package_MultipleAddTwoInts" :depends-on ("_package"))
    (:file "EmptyRespSrv" :depends-on ("_package_EmptyRespSrv"))
    (:file "_package_EmptyRespSrv" :depends-on ("_package"))
    (:file "ListReturn" :depends-on ("_package_ListReturn"))
    (:file "_package_ListReturn" :depends-on ("_package"))
    (:file "ConstantsMultiplex" :depends-on ("_package_ConstantsMultiplex"))
    (:file "_package_ConstantsMultiplex" :depends-on ("_package"))
    (:file "TransitiveSrv" :depends-on ("_package_TransitiveSrv"))
    (:file "_package_TransitiveSrv" :depends-on ("_package"))
    (:file "EmptyReqSrv" :depends-on ("_package_EmptyReqSrv"))
    (:file "_package_EmptyReqSrv" :depends-on ("_package"))
  ))