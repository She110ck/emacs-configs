;;; init-extensions.el --- extension settings -*- lexical-binding: t -*-

;;; Commentary:
;;;
;;; There is package settings which not requires much customization
;;;

;;; Code:

;; undo like a tree
(global-undo-tree-mode)

;; smart paired expressions
(require 'smartparens-config)
(smartparens-global-mode)

;; agressive indent
(require 'aggressive-indent)
(global-aggressive-indent-mode 1)

;; move region,line or word with M-<up>, M-<down>, M-<left>, M-<right>
(drag-stuff-global-mode)
(drag-stuff-define-keys)

;; VCS interface
(require 'magit)
(global-set-key (kbd "C-x g") 'magit-status)

;; syntax checker
(require 'flycheck)
(global-flycheck-mode)

;; bookmark jumps
(require 'bookmark)

;; when emacs started, show bookmark list
(bookmark-bmenu-list)
(switch-to-buffer "*Bookmark List*")
;;(global-set-key (kbd "<f3>") 'visit-tags-table)
(global-set-key (kbd "C-c b") 'bookmark-set)
(global-set-key (kbd "C-c j") 'bookmark-jump)
(global-set-key (kbd "<f3>") 'bookmark-bmenu-list)

;; window navigation
(require 'ace-window)
(global-set-key (kbd "M-p") 'ace-window)

;; which key
(require 'which-key)
(which-key-mode)

;; navigation. meh, not much useful
(require 'neotree)
(global-set-key (kbd "<f8>") 'neotree-toggle)
(setq neo-theme (if (display-graphic-p) 'icons 'arrow))

;; C-x C-f interaction
(ido-mode 1)
(require 'ido-vertical-mode); vertical interaction
(ido-vertical-mode 1)
(setq ido-vertical-define-keys 'C-n-C-p-up-and-down) ;try without arrow

;; ivy - vertical M-x interaction
(ivy-mode 1)

;; not close when you delete search line
(setq ivy-on-del-error-function nil)

;; swiper - search interaction
(require 'swiper)
(global-set-key (kbd "C-s") 'swiper)

;; This is your old M-x
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-comma)
(global-set-key (kbd "M-RET") 'other-window) ;"Alt+Ret" move cursor to next pane

;; powerline
(require 'powerline)
(powerline-default-theme)
(setq powerline-default-separator 'utf-8)

(provide 'init-extensions)

;;; init-extensions.el ends here
