;; -*-Lisp-*-

; Define load path
(add-to-list 'load-path "~/.emacs.d/lisp")
;; Keep custom-file locally
(setq custom-file "~/.emacs.d/custom.el")
 
;; Added by Package.el.  This must come before configurations of
;; installed packages.
(when (featurep 'package)
  (package-initialize))

;; Load configuration
(dolist (file (file-expand-wildcards "~/.emacs.d/config/*.el"))
  (load-file file))

;; Load local customizations
(when (file-exists-p custom-file)
    (load custom-file)) 
