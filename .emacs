;;; .emacs --- main emacs config file -*- lexical-binding: t -*-

;; Free for use
;; Author: she110ck<admin@she110ck.com>
;; Created: 2018-12-16
;; Version: 0.0.3
;; Homepage: https://github.com/She110ck/emacs-configs

;;; Commentary:
;;
;; Actually I don't use Emacs every day, so can't be sure about usability.
;; Soma parts of my config very popular, but I don't get it yet.
;; 
;;
;;; Code:

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


(setq custom-file "~/.emacs.d/custom-settings.el")
(load custom-file t)
(load "~/.emacs.d/org-settings.el")

;; backup changes(tilda files dir)
(setq backup-directory-alist '(("." . "~/.emacs.local/backups")))
(setq delete-old-versions -1)
(setq version-control t)
(setq vc-make-backup-files t)
(setq auto-save-file-name-transforms '((".*" "~/.emacs.local/auto-save-list/" t)))

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

;; project management, didn't like it
;;(require 'projectile)
;;(projectile-mode +1)
;;(define-key projectile-mode-map (kbd "s-p") 'projectile-command-map)
;;(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)

;; bookmark jumps
(require 'bookmark)
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

;; navigation
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

;;; TODO: org





;;; .emacs ends here
