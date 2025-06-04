;; Update environment variables from launchctl
;;
;; TODO: We could skip it all together on emacs sessions started from bash
;;
;; NOTE:
;;  * PATH must be first, to work with exec-path
;;  * It dows not work with spaces in variable names or values

(defun mapcar* (function &rest args)
  "Apply FUNCTION to successive cars of all ARGS.
          Return the list of results."
  ;; If no list is exhausted,
  (if (not (memq nil args))
      ;; apply function to cars.
      (cons (apply function (mapcar 'car args))
            (apply 'mapcar* function
                   ;; Recurse for rest of elements.
                   (mapcar 'cdr args)))))

;(when (file-exists-p "/bin/launchctl")
;  (let* ((vars '("PATH" "SSH_AUTH_SOCK" "EMAIL"))
;         (vals (split-string
;                (shell-command-to-string
;                 (format "for V in %s; do /bin/launchctl getenv $V; done"
;                         (mapconcat 'identity vars " ")))))
;         ; Below is safer variant that does not work on emacs 22
;         ;(vals (split-string-and-unquote
;         ;       (shell-command-to-string
;         ;        (format "bash -l -c 'echo -n \\\"$%s\\\"'"
;         ;                (combine-and-quote-strings vars "\\\" \\\"$")))))
;         (path (car vals)))
;    (setq exec-path
;          (append (split-string path ":") exec-path))
;    (mapcar* #'setenv vars vals)))
