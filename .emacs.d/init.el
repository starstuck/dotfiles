;; -*-Lisp-*-

; Define load path
(add-to-list 'load-path (locate-user-emacs-file "lisp"))
;; Keep custom-file locally
(setq custom-file (locate-user-emacs-file "custom.el"))
 
;; Added by Package.el.  This should come before configurations of
;; installed packages.
(when (featurep 'package)
  (package-initialize))

;; Load configuration
(dolist (file (file-expand-wildcards (locate-user-emacs-file "init.d/*.el")))
  (load-file file))

;; Load local customizations
(when (file-exists-p custom-file)
    (load custom-file)) 
