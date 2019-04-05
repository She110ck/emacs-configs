;;; init-ehsell.el --- Summary:
;;; Commentary:
;;; Code:

;; helpers

(defun esh-directory-section ()
  (concat
   (propertize "dir: " 'face '(:foreground "green"))
   (propertize (abbreviate-file-name (eshell/pwd)) 'face '(:foreground "cyan"))))

(defun esh-branch-section ()
  (let ((branch (magit-get-current-branch)))
    (if (> (length branch) 0)
	(progn
	  (concat
	   (propertize "branch: " 'face '(:foreground "green"))
	   (propertize branch 'face '(:foreground "cyan"))))
      "")))

(defun esh-eol-section ()
  (if (= (user-uid) 0)
      (propertize "#" 'face '(:foreground "white"))
    (propertize "$" 'face '(:foreground "white"))))

;; long mode

(defun esh-prompt-string-long ()
  (concat
   (esh-directory-section) " "
   (esh-branch-section) " "
   (esh-eol-section) " "))

(defun esh-prompt-enable-long-mode ()
  (setq eshell-prompt-function 'esh-prompt-string-long)
  (setq eshell-prompt-regexp "^[^#$\n]* [#$] "))

;; short mode

(defun esh-prompt-string-short ()
  (concat
   (propertize "$:" 'face '(:foreground "cyan"))
   (propertize " " 'face '(:foreground "white"))))

(defun esh-prompt-enable-short-mode ()
  (setq eshell-prompt-function 'esh-prompt-string-short)
  (setq eshell-prompt-regexp "$: "))

(esh-prompt-enable-long-mode)
;;(esh-prompt-enable-short-mode)
(setq eshell-highlight-prompt nil)

(provide 'init-eshell)
;;; init-eshell.el ends here
