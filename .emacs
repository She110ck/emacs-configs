;;; .emacs --- main emacs config file -*- lexical-binding: t -*-

;; Free for use
;; Author: she110ck<admin@she110ck.com>
;; Created: 2018-12-16
;; Version: 0.1.0
;; Homepage: https://github.com/She110ck/emacs-configs

;;; Commentary:
;;
;; Actually I don't use Emacs every day, so can't be sure about usability.
;; Soma parts of my config very popular, but I don't get it yet.
;;
;;
;;; Code:

;; Produce backtraces when errors occur
(setq debug-on-error t)

;; Package manager:
;; Initialise package and add Melpa repository
(require 'package)

;; previues style adding
;;(add-to-list 'package-archives
;;             '("melpa-stable" . "https://stable.melpa.org/packages/") t)

;; adding all repo once
(add-to-list 'package-archives
	     '("melpa-stable" . "https://stable.melpa.org/packages/")
	     '("org" . "https://orgmode.org/elpa/"))

(package-initialize)

;; Required package list
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

;;(setq custom-file "~/.emacs.d/custom-settings.el")
;;(load custom-file t)
(load "~/.emacs.d/org-settings.el")

;; backup changes(tilda files dir)
(setq backup-directory-alist '(("." . "~/.emacs.local/backups")))
(setq delete-old-versions -1)
(setq version-control t)
(setq vc-make-backup-files t)
(setq auto-save-file-name-transforms '((".*" "~/.emacs.local/auto-save-list/" t)))
(setq auto-save-list-file-prefix "~/.emacs.local/auto-save-list/")

;; eshell history file dir
(setq eshell-history-file-name "~/.emacs.local/eshell-history")

;; undo like a tree
(global-undo-tree-mode)

;; keep open files open across sessions
;; (desktop-save-mode 1)

;; unset emacs suspend key binding
(global-unset-key (kbd "C-z"))

;; Sentences end with a single space
(setq sentence-end-double-space nil)

;; when you type marked area replaces
(delete-selection-mode 1)

;; smart paired expressions
(require 'smartparens-config)
(smartparens-global-mode)

;; auto-comlete, good for terminal
(require 'auto-complete)
(require 'auto-complete-config)
(ac-config-default)
(setq ac-comphist-file "~/.emacs.local/ac-comphist.dat")
(global-auto-complete-mode t)
(setq ac-auto-start nil) ; if want to use with TAB
(ac-set-trigger-key "TAB") ; trigger for ac
(ac-flyspell-workaround)
(ac-linum-workaround)
(setq popup-use-optimized-column-computation nil) ;vertical fixed start
;;(setq ac-auto-start 4) ;starts after 4 character

;; add own words for autocomplete
(add-to-list 'ac-user-dictionary "foobar@example.com")
;; for X system use company-quickhelp

;; bookmark jumps
(require 'bookmark)
(setq bookmark-default-file "~/.emacs.local/bookmarks.el")

;; when emacs started, show bookmark list
(bookmark-bmenu-list)
(switch-to-buffer "*Bookmark List*")
;;(global-set-key (kbd "<f3>") 'visit-tags-table)
(global-set-key (kbd "C-c b") 'bookmark-set)
(global-set-key (kbd "C-c j") 'bookmark-jump)
(global-set-key (kbd "<f3>") 'bookmark-bmenu-list)

;; VCS interface
(require 'magit)
(global-set-key (kbd "C-x g") 'magit-status)

;; navigation. meh, not much useful
(require 'neotree)
(global-set-key (kbd "<f8>") 'neotree-toggle)
(setq neo-theme (if (display-graphic-p) 'icons 'arrow))

;; window navigation
(require 'ace-window)
(global-set-key (kbd "M-p") 'ace-window)

;; agressive indent
(require 'aggressive-indent)
(global-aggressive-indent-mode 1)

;; prettify mode
(global-prettify-symbols-mode 1)
(setq show-paren-style 'expression)
(show-paren-mode 2)

;; diminish - hide minor mode names
(require 'diminish)
(diminish 'eldoc-mode)
;; Hide flycheck-mode lighter from mode line
(diminish 'flycheck-mode)
(diminish 'auto-complete-mode "↝")
(diminish 'smartparens-mode "⚖")
(diminish 'ivy-mode)
(diminish 'which-key-mode)
(diminish 'undo-tree-mode "↺")



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
(setq ido-save-directory-list-file "~/.emacs.local/ido/")
(require 'ido-vertical-mode); vertical interaction
(ido-vertical-mode 1)
;;(setq ido-vertical-define-keys 'C-n-C-p-up-and-down) ;try without arrow

;; M-x interaction
;;(global-set-key (kbd "M-x") 'smex)
;;(global-set-key (kbd "M-x") 'smex-major-mode-commands)

;; ivy - vertical M-x interaction
(ivy-mode 1)
;; not close when you delete searchline
(setq ivy-on-del-error-function nil)

;; swiper - search interaction
(require 'swiper)
(global-set-key (kbd "C-s") 'swiper)


;; This is your old M-x
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-comma)
(global-set-key (kbd "M-RET") 'other-window) ;"Alt+Ret" move cursor to next pane

;; C-x k kills buffer without RET command
(defun kill-current-buffer ()
  "Kill the current buffer."
  (interactive)
  (kill-buffer (current-buffer)))
(global-set-key (kbd "C-x k") 'kill-current-buffer)



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
(set-face-background 'highlight "#454035") ;"#008b8b") ;"#2f4f4f") ;
;;(set-face-background 'highlight "#222") ;;;;;
;;(set-face-foreground 'highlight "cyan")
;;(set-face-underline-p 'highlight t)

;; 80 character limit for line
(require 'fill-column-indicator)
(setq fci-rule-column 80)

;; declare own globalized minor mode
(define-globalized-minor-mode global-fci-mode
  fci-mode (lambda () (fci-mode 1)
	     (setq fci-rule-color "cyan")
	     ))
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
 '(custom-enabled-themes (quote (sanityinc-tomorrow-night)))
 '(custom-safe-themes
   (quote
    ("06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" "51ba4e2db6df909499cd1d85b6be2e543a315b004c67d6f72e0b35b4eb1ef3de" "d7441a80851d30a369268e50bbad6777a82ff37405f70328f21a8f30a7c6e31d" "8eafb06bf98f69bfb86f0bfcbe773b44b465d234d4b95ed7fa882c99d365ebfd" default)))
 '(display-time-24hr-format t)
 '(package-selected-packages
   (quote
    (htmlize color-theme-sanityinc-tomorrow org-bullets undo-tree diminish ace-window gotham-theme darcula-theme powerline which-key ido-vertical-mode swiper all-the-icons neotree magit projectile aggressive-indent auto-complete fill-column-indicator flycheck smartparens smex))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )



;;; .emacs ends here
