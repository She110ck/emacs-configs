
;; Start screen with emacs logo closed
(setq inhibit-startup-screen t)

;; in terminal we need only font size. 100/10 = 10pt
;; (set-face-attribute 'default nil :height 100)

;; font config
(set-default-font "Ubuntu Mono-10")

;; change title frame
(setq frame-title-format '("Epicode"))

;; menu bar, tool bar and scroll bar disabled
(menu-bar-mode 0)
(tool-bar-mode 0)
(scroll-bar-mode 0)

;; clock in mode line
(setq display-time-24hr-format t)
(display-time-mode 1)

;; display battery mode
(display-battery-mode 1)

;; show coordinates in mode line
(column-number-mode 1)

;; C-x C-f interaction
(ido-mode 1)

;; M-x interaction
(global-set-key (kbd "M-x") 'smex)
;(global-set-key (kbd "M-x") 'smex-major-mode-commands)

;; This is your old M-x
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-comma)
(global-set-key (kbd "M-RET") 'other-window) ; "Alt+Return" move cursor to next pane


;; install not required
;; make two buffers with the same file name open distinguishable(not alike)
(require 'uniquify)
(setq uniquify-buffer-name-style 'forward)

;; change answer to one key
(fset 'yes-or-no-p 'y-or-n-p)

;; mini buffer resize allow
(setq resize-mini-windows t)
(setq max-mini-window-height 0.33)

;; numerize
(global-linum-mode 1)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (smartparens smex))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
