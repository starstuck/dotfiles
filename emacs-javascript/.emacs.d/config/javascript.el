(autoload 'js2-mode "js2-mode" nil t)

(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
(add-to-list 'auto-mode-alist '("\\.mjs\\'" . js2-mode))
(add-to-list 'interpreter-mode-alist '("node" . js2-mode))
(add-to-list 'interpreter-mode-alist '("phantomjs" . js2-mode))

(add-hook 'js2-mode-hook
          (lambda()
            ;; Set up js2-refactor bindings if package is installed
            (when (featurep 'js2-refactor)
              (js2r-add-keybindings-with-prefix "C-c"))

            ;; Add skewer support if package installed
            (when (featurep 'skewer-mode)
              (skewer-mode 1))))

;; Add additional extensions to speedbar (.js seems to be working out of the box)
(eval-after-load 'speedbar-load-hook
  (lambda ()
    (speedbar-add-supported-extension ".mjs")))

;; Try loading optional extension modules
(eval-after-load "js2-mode"
  '(progn ()
     (require 'js-doc nil t)
     (require 'speedbar nil t)
     (require 'js2-refactor nil t)
     (require 'expand-region nil t)
     (require 'skewer-mode nil t)
     (require 'flycheck nil t)
     (require 'tide nil t)

     ;; Adapt to airbnb javascript style guide (https://github.com/airbnb/javascript)
     (setq js-switch-indent-offset js-indent-level)
     (setq js2-strict-trailing-comma-warning nil)
     (advice-add 'js--multi-line-declaration-indentation :around (lambda (orig-fun &rest args) nil))

     ;; Add flyspell for JavaScript comments
     (add-hook 'js2-mode-hook 'flyspell-prog-mode)

     ;; Setup js doc triggers
     (when (featurep 'js-doc)
       (define-key js2-mode-map (kbd "C-c d") 'js-doc-insert-function-doc)
       (define-key js2-mode-map (kbd "C-c @") 'js-doc-insert-tag))

     (when (featurep 'expand-region)
       (define-key js2-mode-map (kbd "C-c =") 'er/expand-region))

     ;; Some skewer shortcut utilities
     (defun skewer-reload-page ()
       (interactive)
       (skewer-eval "window.parent.location.reload()")
       (message "Sent page reload command"))

     ;; Enable flycheck when available
     (when (featurep 'flycheck)
       (add-hook 'js2-mode-hook 'flycheck-mode))

     (when (featurep 'tide)
       (add-hook 'js2-mode-hook
                 (lambda ()
                   (when (or (locate-dominating-file default-directory "jsconfig.json")
                             (locate-dominating-file default-directory "tsconfig.json"))
                     (tide-setup)))))
     
     (define-key js2-mode-map (kbd "C-c r r") 'skewer-reload-page)

     ;; Define various js test/linting compilation errrors matchers. You can say,
     ;; which you want to consider on matching output from compilation, by
     ;; customizing compilation-error-regexp-alist variable.
     ;;
     ;;   (setq compilation-error-regexp-alist (list 'jstestdriver 'jslint-file 'jslint-line))
     ;;
     (require 'compile)
     (dolist (item
              '(
                ;; Match errors in JS Test Driver output like (Regexp based on java error matcher):
                ;;    at http://localhost:4224/test/src/test/libs/bdd.js:373:16
                (jstestdriver-anon-func "^[    ]+at.+http://[[:alpha:][:digit:]:.]+/test/\\([^()\n]+\\):\\([[:digit:]]+\\):\\([[:digit:]]+\\)$" 1 2 3 2)
                ;;    at assertable.is (http://localhost:4224/test/src/test/libs/bdd.js:143:28)
                (jstestdriver-named-func "^[   ]+at.+(http://[[:alpha:][:digit:]:.]+/test/\\([^()\n]+\\):\\([[:digit:]]+\\):\\([[:digit:]]+\\))$" 1 2 3 2)
                ;;    error loading file: /test/src/test/jstestdriver/tooltiptextrendererTest.js:129
                (jstestdriver-load-err "^[     ]+error.+: /test/\\([^:]+\\):\\([[:digit:]]+\\):.*$" 1 2 nil 2)
                ;; Match errors in jslint output:
                ;;   testfile.js
                (jslint-file "^\\(.+.js\\)$" 1 nil nil 2)
                ;;   #1 Missing 'use strict' statement.
                ;;      TestCase('model test', { // Line 3, Pos 4
                (jslint-line "\\/\\/ Line \\([[:digit:]]+\\), Pos \\([[:digit:]]+\\)$" nil 1 2 0)
                ;; Match errors in mocha output:
                ;;    at Assertion.assert (C:\Home\express-pipeworks\node_modules\expect.js\expect.js:99:13)
                (node "at[^(\n]* (\\([^()\n]+\\):\\([[:digit:]]+\\):\\([[:digit:]]+\\))$" 1 2 3 2)
                ;;    at C:\Home\express-pipeworks\node_modules\expect.js\expect.js:99:13
                (node-anonymous "at \\([^()\n]+\\):\\([[:digit:]]+\\):\\([[:digit:]]+\\)$" 1 2 3 2)
                ))
       (add-to-list 'compilation-error-regexp-alist-alist item))))
