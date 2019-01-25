;;; theme-settings.el --- theme customizations -*- lexical-binding: t -*-

;;; Commentary:
;;;
;;; This file contains some color settings for more compatibility and
;;; comfort on all environments
;;;
;;; Code:


(setq custom-theme-directory (concat user-emacs-directory "themes/"))


;; cool transparency
(defun toggle-transparency ()
  (interactive)
  (let ((alpha (frame-parameter nil 'alpha)))
    (set-frame-parameter
     nil 'alpha
     (if (eql (cond ((numberp alpha) alpha)
                    ((numberp (cdr alpha)) (cdr alpha))
                    ;; Also handle undocumented (<active> <inactive>) form.
                    ((numberp (cadr alpha)) (cadr alpha)))
              60)
         '(90 . 86) '(100 . 60)))))

;; for work on start
(toggle-transparency)
(toggle-transparency)

;; you know it
(global-set-key (kbd "C-c t") 'toggle-transparency)


(provide 'theme-settings)

;;; theme-settings.el ends here
