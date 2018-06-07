;; -*-Lisp-*-

; Define load path
(add-to-list 'load-path "~/.emacs.d/lisp")

;; Added by Package.el.  This must come before configurations of
;; installed packages.
(when (featurep 'package)
  (package-initialize))

; Load cunfiguration
(dolist (file (file-expand-wildcards "~/.emacs.d/config/*.el"))
  (load-file file))
