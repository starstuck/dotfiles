(define-minor-mode sticky-mode
  "Make the current window always display this buffer."
  nil " Sticky" nil
  (set-window-dedicated-p (selected-window) sticky-mode))
