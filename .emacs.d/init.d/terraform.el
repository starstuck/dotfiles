(eval-after-load "terraform-mode"
  '(progn
     ;; Use C-like align rules in terraform
     (require 'align nil t)
     (add-to-list 'align-c++-modes 'terraform-mode)

     ;; I prefere to split words on _
     (modify-syntax-entry ?_ "_" terraform-mode-syntax-table)

     (define-key terraform-mode-map (kbd "C-c a") 'align-current)))
