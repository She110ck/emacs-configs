;;; base.el --- basic configs -*- lexical-binding: t -*-

;;; Commentary:
;;
;; This file contains basic configs
;;
;;
;;; Code:

;; Package manager:
;; Initialise package and add Melpa repository
(require 'package)

;; adding all repo once
(add-to-list 'package-archives
	     '("melpa-stable" . "https://stable.melpa.org/packages/")
	     '("org" . "https://orgmode.org/elpa/"))

(package-initialize)

;; Required package list(needs check)
(defvar required-packages '(smartparents
			    smex
			    flycheck
			    auto-complete
			    aggressive-indent
			    fill-column-indicator
			    magit
			    neotree
			    swiper
			    ido-vertical-mode
			    projectile
			    all-the-icons
			    powerline
			    which-key
			    ace-window
			    undo-tree
			    color-theme-modern
			    org-bullets
			    ))

;; install packages automatically, elisp
;;(dolist (p required-packages)
;;  (when (not (package-installed-p p))
;;    (package-refresh-contents)
;;(package-install p)))


;; UTF-8 please
(set-charset-priority 'unicode)
(setq locale-coding-system   'utf-8)   ; pretty
(set-terminal-coding-system  'utf-8)   ; pretty
(set-keyboard-coding-system  'utf-8)   ; pretty
(set-selection-coding-system 'utf-8)   ; please
(prefer-coding-system        'utf-8)   ; with sugar on top
(setq default-process-coding-system '(utf-8-unix . utf-8-unix))


;; Start screen with emacs logo closed
(setq inhibit-startup-screen 1)

;; font config
(set-frame-font "Ubuntu Mono-10")

;; change title frame
(setq frame-title-format '("Epicode"))


(setq ring-bell-function 'ignore)

;; Disable toolbar & menubar
(menu-bar-mode -1)
(when (fboundp 'tool-bar-mode)
  (tool-bar-mode -1))
(when (  fboundp 'scroll-bar-mode)
  (scroll-bar-mode -1))


;; Delete trailing whitespace before save
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; always use spaces instead of tab characters
(setq-default indent-tabs-mode nil)

;; set tab width to 4 spaces
(setq tab-width 4)

;; Sentences end with a single space
(setq sentence-end-double-space nil)

;; change answer to one key
(fset 'yes-or-no-p 'y-or-n-p)

;; if file changed on disk but buffer not, you get changes
(global-auto-revert-mode t)

;; prettify mode lambda
(global-prettify-symbols-mode 1)

(setq show-paren-style 'expression) ; highlight whole expression
(show-paren-mode 2)

;; show coordinates in mode line
(column-number-mode 1)

;; make two buffers with the same file name open distinguishable(not alike)
(setq uniquify-buffer-name-style 'forward)

;; numerize lines
(global-linum-mode 1)

;; when you type marked area replaces
(delete-selection-mode 1)


;; keep open files open across sessions
;; (desktop-save-mode 1)

(provide 'base)
;;; base.el ends here
