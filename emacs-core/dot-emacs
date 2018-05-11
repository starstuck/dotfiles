;; -*-Lisp-*-

; Define load path
(add-to-list 'load-path "~/usr/share/emacs/site-lisp")

;; Added by Package.el.  This must come before configurations of
;; installed packages.
(when (featurep 'package)
  (package-initialize))

; Load customizations
(dolist (file (file-expand-wildcards "~/usr/etc/emacs.d/*.el"))
  (load-file file))
