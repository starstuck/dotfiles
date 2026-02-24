; Add hook to colorize compilation buffer
(eval-after-load "compilation-mode"
  '(progn
     (require 'ansi-color)
     (add-hook 'compilation-filter-hook
               (lambda()
                 (toggle-read-only)
                 (ansi-color-apply-on-region compilation-filter-start (point-max))
                 (toggle-read-only)))))
