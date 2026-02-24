;; Setup extra package repositories
(require 'package nil t)

;; Packages installed will be stored in ‘package-selected-packages’ custom
;; variables. On new emacs installation packages can be restored by calling
;; ‘package-install-selected-packages’.

(with-eval-after-load 'package
  (add-to-list 'package-archives '("nongnu" . "http://elpa.nongnu.org/nongnu/"))
  (add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/")))
