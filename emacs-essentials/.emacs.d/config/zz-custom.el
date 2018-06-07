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
 '(case-fold-search t)
 '(column-number-mode t)
 '(custom-enabled-themes (quote (deeper-blue)))
 '(custom-file "~/usr/etc/emacs.d/zz-custom.el")
 '(custom-safe-themes
   (quote
    ("82d2cac368ccdec2fcc7573f24c3f79654b78bf133096f9b40c20d97ec1d8016" "06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" "c74e83f8aa4c78a121b52146eadb792c9facc5b1f02c917e3dbb454fca931223" "3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" "b04425cc726711a6c91e8ebc20cf5a3927160681941e06bc7900a5a5bfe1a77f" "a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" default)))
 '(deft-directory "~/Documents/Notes")
 '(ensime-implicit-gutter-icons nil)
 '(fci-rule-color "gray10")
 '(fci-rule-column 80)
 '(find-ls-option (quote ("-exec ls -ld {} +" . "-l")))
 '(global-font-lock-mode t nil (font-lock))
 '(line-number-mode t)
 '(line-spacing 0.1)
 '(mumamo-chunk-coloring 10)
 '(mumamo-margin-use (quote (right-margin 13)))
 '(org-src-fontify-natively t)
 '(package-selected-packages
   (quote
    (popup-imenu ensime flycheck-rust rust-mode flycheck flycheck-rebar3 package-lint w3 dash deft git-link fill-column-indicator powerline zencoding-mode yascroll yaml-mode typescript tss smart-mode-line-powerline-theme neotree less-css-mode js2-mode go-mode git-rebase-mode git-commit-mode expand-region dockerfile-mode diminish coffee-mode alchemist)))
 '(powerline-default-separator (quote utf-8))
 '(powerline-gui-use-vcs-glyph t)
 '(remember-data-file "~/Documents/Notes/remember.org")
 '(safe-local-variable-values (quote ((allout-layout . t))))
 '(save-place t nil (saveplace))
 '(scroll-bar-mode nil)
 '(show-paren-mode t)
 '(speedbar-frame-parameters
   (quote
    ((minibuffer)
     (width . 30)
     (border-width . 0)
     (menu-bar-lines . 0)
     (tool-bar-lines . 0)
     (unsplittable . t)
     (left-fringe . 0))))
 '(speedbar-tag-hierarchy-method (quote (speedbar-trim-words-tag-hierarchy)))
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
