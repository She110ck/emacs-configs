;;; functions.el --- user defined functions  -*- lexical-binding: t -*-

;;; Commentary:

;;; Code:

;; C-x k kills buffer without RET command
(defun kill-current-buffer ()
  "Kill the current buffer."
  (interactive)
  (kill-buffer (current-buffer)))
(global-set-key (kbd "C-x k") 'kill-current-buffer)



(defun move-line-up ()
  (interactive)
  (transpose-lines 1)
  (forward-line -2))

(defun move-line-down ()
  (interactive)
  (forward-line 1)
  (transpose-lines 1)
  (forward-line -1))

(global-set-key (kbd "C-x <up>") 'move-line-up)
(global-set-key (kbd "C-x <down>") 'move-line-down)

(provide 'functions)
;;; functions.el ends here
