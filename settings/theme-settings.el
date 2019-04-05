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
  "If condition will check alpha parameter value when frame inactive.
\(100. 60\) means 100% alpha when frame active and 60% alpha when inactive
\(90 . 86\) when transparency enabled."
  (interactive)
  (let ((alpha (frame-parameter nil 'alpha)))
    (set-frame-parameter
     nil 'alpha
     (if (eql (cond ((numberp alpha) alpha)
                    ((numberp (cdr alpha)) (cdr alpha))
                    ;; Also handle undocumented (<active> <inactive>) form.
                    ((numberp (cadr alpha)) (cadr alpha)))
              86)
         '(100 . 60) '(90 . 86)))))

;; for work on start
(toggle-transparency)
;; add keybinding for this
(global-set-key (kbd "C-c t") 'toggle-transparency)

;; highlight current line
(global-hl-line-mode 1)

(if (display-graphic-p)
    ;;    (set-face-background 'hl-line "#454035")
    ()
  (progn (set-face-underline 'hl-line t)
         (set-face-background 'hl-line "#"))
  )

;;"#008b8b") ;"#2f4f4f") ;
;;(set-face-background 'hl-line "#454035") ;"#008b8b") ;"#2f4f4f") ;
;;(set-face-foreground 'highlight "cyan")
;;(set-face-underline-p 'highlight t)

;;----------------------------------------------------------------------------
;; general customization for all programming languages
;;----------------------------------------------------------------------------
(defun my/programming-mode()
  (require 'whitespace-cleanup-mode)
  (setq whitespace-cleanup-mode-only-if-initially-clean nil)
  (setq whitespace-line-column 80)
  (setq whitespace-style '(face lines-tail))
  (global-whitespace-mode)
  (global-whitespace-cleanup-mode)
  (linum-mode))


(add-hook 'emacs-lisp-mode-hook 'my/programming-mode)
(add-hook 'python-mode-hook 'my/programming-mode)

(provide 'theme-settings)

;;; theme-settings.el ends here
