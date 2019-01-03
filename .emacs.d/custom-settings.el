;;; custom-settings.el --- customization for termial -*- lexical-binding: t -*-

;;; Commentary:

;;; Code:

;; Start screen with emacs logo closed
(setq inhibit-startup-screen 1)

;; in terminal we need only font size. 100/10 = 10pt
;; (set-face-attribute 'default nil :height 100)

;; font config
(set-frame-font "Ubuntu Mono-10")

;; change title frame
(setq frame-title-format '("Epicode"))

;; menu bar, tool bar and scroll bar disabled
(menu-bar-mode 0)
(tool-bar-mode 0)
(scroll-bar-mode 0)

;; clock in mode line
(display-time-mode 1)

;; display battery mode
(display-battery-mode 1)

;; show coordinates in mode line
(column-number-mode 1)

;; which key
(require 'which-key)
(which-key-mode)

;; syntax checker
(require 'flycheck)
(global-flycheck-mode)

;; C-x C-f interaction
(ido-mode 1)
(require 'ido-vertical-mode); vertical interaction
(ido-vertical-mode 1)
;;(setq ido-vertical-define-keys 'C-n-C-p-up-and-down) ;try without arrow

;; M-x interaction
;;(global-set-key (kbd "M-x") 'smex)
;;(global-set-key (kbd "M-x") 'smex-major-mode-commands)

;; ivy - vertical M-x interaction
(ivy-mode 1)

;; swiper - search interaction
(require 'swiper)
(global-set-key (kbd "C-s") 'swiper)


;; This is your old M-x
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-comma)
(global-set-key (kbd "M-RET") 'other-window) ;"Alt+Ret" move cursor to next pane

;; install not required
;; make two buffers with the same file name open distinguishable(not alike)
(require 'uniquify)
(setq uniquify-buffer-name-style 'forward)

;; change answer to one key
(fset 'yes-or-no-p 'y-or-n-p)

;; mini buffer resize allow
(setq resize-mini-windows t)
(setq max-mini-window-height 0.33)

;; powerline
(require 'powerline)
(powerline-default-theme)
(setq powerline-default-separator 'utf-8)


;; numerize
(global-linum-mode 1)

;; highlight current line
(global-hl-line-mode 1)
(set-face-background 'highlight "#222")
;;(set-face-foreground 'highlight "cyan")
;;(set-face-underline-p 'highlight t)

;; 80 character limit for line
(require 'fill-column-indicator)
(setq fci-rule-column 80)
(setq fci-rule-color "cyan")

;; declare own globalized minor mode
(define-globalized-minor-mode global-fci-mode fci-mode (lambda () (fci-mode 1)))
(global-fci-mode 1)

;; whitespace, didn't like
;;(setq whitespace-style '(trailing lines tab-mark))
;;(global-whitespace-mode 1)   ; didn't like
;;(global-whitespace-newline-mode 1)

;; theme for fun
;;(require 'darcula-theme)
;;(darcula-theme)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#282c34" "#ff6c6b" "#98be65" "#da8548" "#61afef" "#c678dd" "#1f5582" "#abb2bf"])
 '(custom-safe-themes
   (quote
    ("51ba4e2db6df909499cd1d85b6be2e543a315b004c67d6f72e0b35b4eb1ef3de" "d7441a80851d30a369268e50bbad6777a82ff37405f70328f21a8f30a7c6e31d" "8eafb06bf98f69bfb86f0bfcbe773b44b465d234d4b95ed7fa882c99d365ebfd" default)))
 '(display-time-24hr-format t)
 '(package-selected-packages
   (quote
    (diminish ace-window gotham-theme darcula-theme powerline which-key ido-vertical-mode swiper all-the-icons neotree magit projectile aggressive-indent auto-complete fill-column-indicator flycheck smartparens smex))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


;;; custom-settings.el ends here
