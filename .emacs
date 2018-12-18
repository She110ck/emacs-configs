;;; .emacs --- main emacs config file -*- lexical-binding: t -*-

;; Free for use
;; Author: she110ck<admin@she110ck.com>
;; Created: 2018-12-16
;; Version: 0.0.2
;; Homepage: https://github.com/She110ck/emacs-configs

;;; Commentary:
;; 
;; Actually I don't use Emacs every day, so can't be sure about usability.
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
(defvar required-packages '(smex
			    smartparents
			    flycheck
			    auto-complete
			    aggressive-indent
			    fill-column-indicator
			    ))

;; install packages automatically, elisp
;;(dolist (p required-packages)
;;  (when (not (package-installed-p p))
;;    (package-refresh-contents)
;;(package-install p)))


(setq custom-file "~/.emacs.d/custom-settings.el")
(load custom-file t)


;; backup changes
(setq backup-directory-alist '(("." . "~/.emacs.d/backups")))
(setq delete-old-versions -1)
(setq version-control t)
(setq vc-make-backup-files t)
(setq auto-save-file-name-transforms '((".*" "~/.emacs.d/auto-save-list/" t)))

;; history of changes I guess
(savehist-mode 1)
(setq history-length t)
(setq history-delete-duplicates t)

;; keep open files open across sessions
(desktop-save-mode 1)


;; Sentences end with a single space
(setq sentence-end-double-space nil)

;; when you type marked area replaces
(delete-selection-mode 1)

;; smart paired expressions
(require 'smartparens-config)
(smartparens-global-mode)

;; auto-comlete
(require 'auto-complete)
(ac-config-default)

;; agressive indent
(require 'aggressive-indent)
(global-aggressive-indent-mode 1)


;;; .emacs ends here
