;;; functions.el --- user defined functions  -*- lexical-binding: t -*-

;;; Commentary:

;;; Code:

;; C-x k kills buffer without RET command
(defun kill-current-buffer ()
  "Kill the current buffer."
  (interactive)
  (kill-buffer (current-buffer)))
(global-set-key (kbd "C-x k") 'kill-current-buffer)


;; 80 character limit for line
(require 'fill-column-indicator)
(setq fci-rule-column 80)

;; declare own globalized minor mode
(define-globalized-minor-mode global-fci-mode
  fci-mode (lambda () (fci-mode 1)
	     (setq fci-rule-color "cyan")
	     ))
(global-fci-mode 1)

(provide 'functions)


;;; functions.el ends here
