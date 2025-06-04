;;-----------------------------------------------------------------------------
;; emacs configuration
;;-----------------------------------------------------------------------------

;; Enable transparency
;; (set-frame-parameter (selected-frame) 'alpha '(<active> [<inactive>]))
;;(set-frame-parameter (selected-frame) 'alpha '(85 85))
;;(add-to-list 'default-frame-alist '(alpha 85 85))

; (add-to-list 'default-frame-alist '(ns-transparent-titlebar . t))
;(add-to-list 'default-frame-alist '(ns-appearance . dark))

;; Enable syntax higlighting, XEmacs has it by default
(global-font-lock-mode t)
(setq font-lock-maximum-decoration t)

;; Use visible bell rather than audible
(setq visible-bell t)

;; Map righr CMD to Control, this helps a lot with mac laptop keyboards
(setq ns-right-command-modifier 'control)

;; Place backup files in the user home directory
(defconst emacs-backup-directory (locate-user-emacs-file "backups"))
(setq backup-directory-alist
      `((".*" . ,emacs-backup-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,emacs-backup-directory t)))
(setq keep-old-versions 5)
(setq create-lockfiles nil)

;; Use aspell for spellchecking
;;(setq ispell-personal-dictionary "~/usr/etc/ispell.d/personal-english")
;;(ispell-change-dictionary "english")
(eval-after-load "ispell"
  (progn
      (setq ispell-silently-savep t)))
(setq-default ispell-program-name "aspell")
(require 'ispell)

;; Set mdfind as locate command on OS X
(setq locate-command "mdfind")

;; This copies every text selection to kill ring. With this I get more
;; intuitive copy & paster behaviour with mouse selections.
;; Otherwise I end up coppying region from last pointer to mouse position
;; with cmd-C. I guess alternatilvelly I will have to ammend Cmd-C behaviour if
;; this becomes too annoying
(setq mouse-drag-copy-region t)

;; Slow down mouse scroll to work better on OS X
(setq mouse-wheel-scroll-amount '(1))
(setq mouse-wheel-progressive-speed t)
(defun mwheel-slowdown (amt)
  (let ((amt1 (min 6 (+ 1 (/ amt 12)))))
    ;; TODO: ammount seems to be growing with time. We should make it rather
    ;; based on innertion
    amt1))
(defun mwheel-slow-scroll-up (amt)
  (scroll-up (mwheel-slowdown amt)))
(defun mwheel-slow-scroll-down (amt)
  (scroll-down (mwheel-slowdown amt)))
(setq mwheel-scroll-up-function 'mwheel-slow-scroll-up)
(setq mwheel-scroll-down-function 'mwheel-slow-scroll-down)

;; Tune scrolling when cursors moves out of screen
(setq scroll-step 1)
(setq scroll-conservatively 10)

;; Setup indention in various modes
(setq-default tab-width 4) ;; For displaying
;; Fallback to have tab entering 4 spaces in text modes. Most complex modes don't use it.
;; It is not used when usings tabs
(setq tab-stop-list (number-sequence 4 120 4)) 
;; Use spaces for indention
(setq-default indent-tabs-mode nil)
;; Use 2 spaces in all c style languages
(setq-default c-basic-offset 2)
(setq-default sh-basic-offset 2)
(setq-default js-indent-level 2)
(setq-default css-indent-offset 2)
;; Also use 2 spaces in markup languages
(setq-default sgml-basic-offset 2)
(setq-default nxml-child-indent 2)


;; Set default fill column to 100
(setq-default fill-column 100)
(setq fci-rule-color "gray10")

;; Do not truncate long lines by default
(setq-default truncate-lines t)

;; Highlight matching branckets
(show-paren-mode 1)

;; Use ediff horizontal split with embeded frame
(setq ediff-split-window-function 'split-window-horizontally)
(setq ediff-window-setup-function 'ediff-setup-windows-plain)

;; Use utf-8 as default coding system
(prefer-coding-system 'utf-8)
(setq default-process-coding-system '(utf-8-unix . utf-8-unix))

;; This fix some unicode character interpretation in term mode
(add-hook 'term-exec-hook
          (function
           (lambda ()
             (set-buffer-process-coding-system 'utf-8-unix 'utf-8-unix))))

;; Emacs style key bindings to switch between frames and windows
(global-set-key (kbd "s-]") 'other-frame)
(global-set-key (kbd "s-[") (kbd "C-u - s-]"))
(global-set-key (kbd "s-}") 'other-window)
(global-set-key (kbd "s-{") (kbd "C-u - s-}"))

;; Following options will be applied only in windowed systems
(if window-system
    (progn
      ;; Hide toolbar
      (tool-bar-mode -1)

      ;; Disable scroll bars (I like yascroll more)
      (scroll-bar-mode -1)))

;; Use colours in shell-mode
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)

;; Scroll buffer in compilation mode. Value 'first-error works well
;; only if you have very good matching of errors
;; TODO: should probably move to that mode customization
(setq compilation-scroll-output t)
