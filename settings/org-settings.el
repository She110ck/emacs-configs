;;; org-settings.el --- org mode customization -*- lexical-binding: t -*-

;;; Commentary:

;;; Code:


(add-hook 'org-mode-hook 'org-indent-mode)
(add-hook 'org-mode-hook 'org-bullets-mode)

(add-hook 'org-mode-hook '(lambda ()
                            (visual-line-mode 1)
                            (setq org-ellipsis " . . . ")
                            (set-face-attribute 'org-level-1 nil :height 1.15)
                            (setq org-src-fontify-natively t)
                            (setq org-src-tab-acts-natively t)
                            (setq org-confirm-babel-evaluate nil)
                            (setq org-export-with-smart-quotes t)
                            (setq org-src-window-setup 'current-window)
                            (add-to-list 'org-structure-template-alist
                                         '("el" "#+BEGIN_SRC emacs-lisp\n?\n#+END_SRC")
                                         '("py" "#+BEGIN_SRC python\n?\n#+END_SRC"))))

(global-set-key (kbd "C-c '") 'org-edit-src-code)


(setq org-todo-keywords
      '((sequence "TODO(t)"
                  "PROGRESSING(p!)"
                  "WAITING(w@/!)"
                  "SOMEDAY(.)" "|" "DONE(x!)" "CANCELLED(c@)")))

(setq org-todo-keyword-faces
      '(("TODO" . (:foreground "cyan" :weight bold :height 1.1))
        ("PROGRESSING" . (:foreground "yellow" :weight bold))
        ("WAITING" . (:foreground "pink" :weight bold))
        ("SOMEDAY" . (:foreground "gray" :weight bold))
        ("DONE" . (:foreground "green" :weight bold))
        ("CANCELLED" . (:foreground "red" :weight bold))
        ))

(org-babel-do-load-languages
 'org-babel-load-languages
 '((css . t)
   (dot . t)
   (ditaa . t)
   (emacs-lisp . t)
   (js . t)
   (latex . t)
   (org . t)
   (plantuml . t)
   (R . t)
   (scheme . t)
   (python . t)))

(setq org-confirm-babel-evaluate nil)
(setq org-startup-with-inline-images nil)

;;----------------------------------------------------------------------------
;; Archiving finished tasks
;;----------------------------------------------------------------------------

(defun my/org-archive-done-tasks ()
  "Archive finished or cancelled tasks."
  (interactive)
  (org-map-entries
   (lambda ()
     (org-archive-subtree)
     (setq org-map-continue-from (outline-previous-heading)))
   "TODO=\"DONE\"|TODO=\"CANCELLED\"" (if (org-before-first-heading-p) 'file 'tree)))


;;----------------------------------------------------------------------------
;; org presentations with org-reveal
;; from: https://github.com/yjwen/org-reveal
;;----------------------------------------------------------------------------

(require 'ox-reveal)
(setq org-reveal-root "https://cdn.jsdelivr.net/reveal.js/3.0.0/")
(setq org-reveal-transition "concave") ;;linear
(setq org-reveal-theme "black")

;;"black" -  my choice,
;;"blood" - almost offical,
;;"serif" "white" -  offical,
;;"sky" - optimist,
;;"solarized" - old book


(provide 'org-settings)
;;; org-settings.el ends here
