;Set custom configuration path
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#212526" "#ff4b4b" "#b4fa70" "#fce94f" "#729fcf" "#e090d7" "#8cc4ff" "#eeeeec"])
 '(column-number-mode t)
 '(custom-enabled-themes '(deeper-blue))
 '(custom-file "~/.emacs.d/config/zz-custom.el")
 '(ensime-implicit-gutter-icons nil)
 '(find-ls-option '("-exec ls -ld {} +" . "-l"))
 '(global-font-lock-mode t nil (font-lock))
 '(line-number-mode t)
 '(line-spacing 0.1)
 '(org-src-fontify-natively t)
 '(package-selected-packages
   '(docker-compose-mode vterm ein markdown-mode typescript-mode js2-mode ws-butler winum which-key volatile-highlights vi-tilde-fringe uuidgen use-package toc-org spaceline restart-emacs request rainbow-delimiters popwin persp-mode pcre2el paradox org-plus-contrib org-bullets open-junk-file neotree move-text macrostep lorem-ipsum linum-relative link-hint indent-guide hungry-delete hl-todo highlight-parentheses highlight-numbers highlight-indentation helm-themes helm-swoop helm-projectile helm-mode-manager helm-make helm-flx helm-descbinds helm-ag google-translate golden-ratio flx-ido fill-column-indicator fancy-battery eyebrowse expand-region exec-path-from-shell evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-surround evil-search-highlight-persist evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-lisp-state evil-indent-plus evil-iedit-state evil-exchange evil-escape evil-ediff evil-args evil-anzu eval-sexp-fu elisp-slime-nav dumb-jump diminish define-word column-enforce-mode clean-aindent-mode auto-highlight-symbol auto-compile aggressive-indent adaptive-wrap ace-window ace-link ace-jump-helm-line))
 '(remember-data-file "~/Documents/Notes/remember.org")
 '(safe-local-variable-values '((allout-layout . t)))
 '(save-place t nil (saveplace))
 '(scroll-bar-mode nil)
 '(show-paren-mode t)
 '(speedbar-frame-parameters
   '((minibuffer)
     (width . 30)
     (border-width . 0)
     (menu-bar-lines . 0)
     (tool-bar-lines . 0)
     (unsplittable . t)
     (left-fringe . 0)))
 '(speedbar-tag-hierarchy-method '(speedbar-trim-words-tag-hierarchy))
 '(tempo-interactive t)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:background "#0c0d0d"))))
 '(ediff-current-diff-A ((t (:background "#221111"))))
 '(ediff-current-diff-B ((t (:background "#112211"))))
 '(ediff-current-diff-C ((t (:background "#222211"))))
 '(ediff-even-diff-A ((t (:background "grey16"))))
 '(ediff-even-diff-B ((t (:background "grey16"))))
 '(ediff-even-diff-C ((t (:background "grey16"))))
 '(ediff-fine-diff-A ((t (:background "#441111"))))
 '(ediff-fine-diff-B ((t (:background "#114411"))))
 '(ediff-fine-diff-C ((t (:background "#444411"))))
 '(ediff-odd-diff-A ((t (:background "grey12"))))
 '(ediff-odd-diff-B ((t (:background "grey12"))))
 '(ediff-odd-diff-C ((t (:background "grey12"))))
 '(ensime-implicit-highlight ((t nil)))
 '(error ((t (:foreground "red" :underline t :weight bold))))
 '(flyspell-incorrect ((t (:inherit error :underline (:color foreground-color :style wave)))))
 '(mode-line ((t (:box nil))))
 '(mode-line-inactive ((t (:box nil))))
 '(powerline-active1 ((t (:inherit mode-line :background "gray63"))))
 '(powerline-inactive1 ((t (:inherit mode-line-inactive :background "gray40"))))
 '(vertical-border ((t (:foreground "gray25"))))
 '(warning ((t (:foreground "DarkOrange" :underline t :weight bold)))))
