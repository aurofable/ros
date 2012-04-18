
(cl:in-package :asdf)

(defsystem "my_controller_pkg-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "SetAmplitude" :depends-on ("_package_SetAmplitude"))
    (:file "_package_SetAmplitude" :depends-on ("_package"))
  ))