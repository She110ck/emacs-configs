;;; functions.el --- user defined functions  -*- lexical-binding: t -*-

;;; Commentary:

;;; Code:

;; C-x k kills buffer without RET command
(defun kill-current-buffer ()
  "Kill the current buffer."
  (interactive)
  (kill-buffer (current-buffer)))
(global-set-key (kbd "C-x k") 'kill-current-buffer)


(provide 'functions)
;;; functions.el ends here
