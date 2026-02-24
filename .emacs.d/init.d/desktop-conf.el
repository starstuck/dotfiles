(require 'desktop)

;; Do not use desktop save mode by default to avoid anoying question about saving desktop in default location
;; Enable after loading first file, because then question makes more sense
(add-hook 'desktop-after-read-hook
          (lambda () (desktop-save-mode 1)))

;; Save opened files with desktop history
(setq history-length 100)
(add-to-list 'desktop-globals-to-save 'compile-history)
(add-to-list 'desktop-globals-to-save 'extended-command-history)
(add-to-list 'desktop-globals-to-save 'file-name-history)
(add-to-list 'desktop-globals-to-save 'grep-history)
(add-to-list 'desktop-globals-to-save 'grep-find-history)
(add-to-list 'desktop-globals-to-save 'minibuffer-history)
(add-to-list 'desktop-globals-to-save 'query-replace-history)
(add-to-list 'desktop-globals-to-save 'read-expression-history)
(add-to-list 'desktop-globals-to-save 'regexp-history)
(add-to-list 'desktop-globals-to-save 'regexp-search-ring)
(add-to-list 'desktop-globals-to-save 'search-ring)
(add-to-list 'desktop-globals-to-save 'shell-command-history)

;; Save indention customizations
(add-to-list 'desktop-globals-to-save 'c-basic-offset)
(add-to-list 'desktop-globals-to-save 'js2-basic-offset)

;; Save compilation customizations
(add-to-list 'desktop-globals-to-save 'compilation-search-path)
(add-to-list 'desktop-globals-to-save 'compilation-error-regexp-alist)

;; Other mode specific options
(add-to-list 'desktop-globals-to-save 'skewer-path-strip-level)
(add-to-list 'desktop-globals-to-save 'httpd-port)
(add-to-list 'desktop-globals-to-save 'erlang-compile-extra-opts)
(add-to-list 'desktop-globals-to-save 'inferior-erlang-machine-options)
(add-to-list 'desktop-globals-to-save 'flycheck-erlang-include-path)
(add-to-list 'desktop-globals-to-save 'flycheck-erlang-library-path)
(add-to-list 'desktop-globals-to-save 'flycheck-python-pycompile-executable)

;; Buffers which should not be saved
(setq desktop-buffers-not-to-save
             (concat "\\("
                     "^nn\\.a[0-9]+\\|\\.log\\|(ftp)\\|^tags\\|^TAGS"
                     "\\|\\.emacs.*\\|\\.diary\\|\\.newsrc-dribble\\|\\.bbdb"
                     "\\)$"))

;; Files which should be ignored by mode
(add-to-list 'desktop-modes-not-to-save 'dired-mode)
(add-to-list 'desktop-modes-not-to-save 'Info-mode)
(add-to-list 'desktop-modes-not-to-save 'info-lookup-mode)
(add-to-list 'desktop-modes-not-to-save 'fundamental-mode)

