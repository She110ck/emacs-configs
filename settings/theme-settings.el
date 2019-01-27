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
  (set-face-underline 'hl-line t)
  )

;;"#008b8b") ;"#2f4f4f") ;
;;(set-face-background 'hl-line "#454035") ;"#008b8b") ;"#2f4f4f") ;
;;(set-face-foreground 'highlight "cyan")
;;(set-face-underline-p 'highlight t)


(add-hook 'emacs-lisp-mode-hook (lambda ()
                                  (require 'fill-column-indicator)
                                  (setq fci-rule-column 80)
                                  (setq fci-rule-color "cyan")
                                  (fci-mode 1)
                                  ))

;; highlight current column
;; !!hurts eyes!!
;;(require 'vline)
;;(set-face-background 'vline "#454035")
;;(vline-global-mode 1) ;also performance problems

;; declare own globalized minor mode
;;(define-globalized-minor-mode global-fci-mode
;;  fci-mode (lambda () (fci-mode 1)
;;	     (setq fci-rule-color "cyan")
;;	     ))
;;(global-fci-mode 1)


(provide 'theme-settings)

;;; theme-settings.el ends here
