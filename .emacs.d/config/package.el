;; Setup extra package repositories
(require 'package nil t)

;; Packages installed will be stored in ‘package-selected-packages’ custom
;; variables. On new emacs installation packages can be restored by calling
;; ‘package-install-selected-packages’.

(when (featurep 'package)

  ;; For time being use alternate marmelade mirror, because official one is having problems with
  ;; https connection. It seems that most stuff is accessible through melpa nayway.
  ;;(add-to-list 'package-archives '("marmalade" . "https://marmalade-repo.org/packages/"))
  ;;(add-to-list 'package-archives '("marmalade" . "http://marmalade.ferrier.me.uk/packages/"))
  ;; Stale melpa seem sto be down at the moemen
  ;;(add-to-list 'package-archives '("melpa" . "http://stable.melpa.org/packages/"))
  (add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/")))
