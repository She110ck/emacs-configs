;;; org-settings.el --- org mode customization -*- lexical-binding: t -*-

;;; Commentary:

;;; Code:



(add-hook 'org-mode-hook 'org-indent-mode)
(add-hook 'org-mode-hook 'org-bullets-mode)

(add-hook 'org-mode-hook '(lambda ()
                            (visual-line-mode 1)
                            (setq org-ellipsis " . . . ")
                            (setq org-src-fontify-natively t)
                            (setq org-src-tab-acts-natively t)
                            (setq org-confirm-babel-evaluate nil)
                            (setq org-export-with-smart-quotes t)
                            (setq org-src-window-setup 'current-window)
                            (add-to-list 'org-structure-template-alist
                                         '("el" "#+BEGIN_SRC emacs-lisp\n?\n#+END_SRC"))))

(global-set-key (kbd "C-c '") 'org-edit-src-code)


(setq org-todo-keywords
      '((sequence "TODO" "IN-PROGRESS" "WAITING" "REVIEW" "DONE")))

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
   (scheme . t)))


(setq org-confirm-babel-evaluate nil)
(setq org-startup-with-inline-images nil)

(provide 'org-settings)
;;; org-settings.el ends here
