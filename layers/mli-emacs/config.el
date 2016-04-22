;; ;;; config.el --- Javascript Layer configuration File for Spacemacs

;;; (setq tern-command (append tern-command '("--no-port-file")))

(global-linum-mode)
;;; (with-eval-after-load 'linum
;;;   (linum-relative-toggle))

(setq-default
 ;; js2-mode
 js2-basic-offset 2
 ;; web-mode
 css-indent-offset 2
 js-indent-level 2
 web-mode-markup-indent-offset 2
 web-mode-css-indent-offset 2
 web-mode-code-indent-offset 2
 web-mode-attr-indent-offset 2)

(setq json-reformat:indent-width 4)

(with-eval-after-load 'web-mode
  (add-to-list 'web-mode-indentation-params '("lineup-args" . nil))
  (add-to-list 'web-mode-indentation-params '("lineup-concats" . nil))
  (add-to-list 'web-mode-indentation-params '("lineup-calls" . nil)))

(add-hook 'c-mode-common-hook 'corvu-set-c-style)
(add-hook 'c-mode-common-hook 'corvu-make-newline-indent)
