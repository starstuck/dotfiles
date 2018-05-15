(eval-after-load "typescript-mode"
  '(progn
     (require 'flycheck nil t)
     (require 'tide nit t)

     (setq-default typescript-ident-level 2)

     (when (featurep 'flycheck)
       (add-hook 'typescript-mode-hook 'flycheck-mode))

     (when (featurep 'tide)
       (add-hook 'typescript-mode-hook 'tide-setup))))
