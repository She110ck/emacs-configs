;;; .emacs --- main emacs config file -*- lexical-binding: t -*-

;; Free for use
;; Author: she110ck<admin@she110ck.com>
;; Created: 2018-12-16
;; Version: 0.9.2
;; Homepage: https://github.com/She110ck/emacs-configs

;;; Commentary:
;;
;; Actually I don't use Emacs every day, so can't be sure about usability.
;; Soma parts of my config very popular, but I don't get it yet.
;;
;;
;; for disable caps lock use: setxkbmap -option 'ctrl:nocaps'
;;
;;; Code:


;; Produce backtraces when errors occur
(setq debug-on-error t)

;;; define dir for configuration
(add-to-list 'load-path (expand-file-name "settings" user-emacs-directory))


;;----------------------------------------------------------------------------
;; Adjust garbage collection thresholds during startup, and thereafter
;;----------------------------------------------------------------------------
(let ((normal-gc-cons-threshold (* 20 1024 1024))
      (init-gc-cons-threshold (* 128 1024 1024)))
  (setq gc-cons-threshold init-gc-cons-threshold)
  (add-hook 'emacs-startup-hook
            (lambda () (setq gc-cons-threshold normal-gc-cons-threshold))))


;;----------------------------------------------------------------------------
;; Load configs for specific features and modes
;;----------------------------------------------------------------------------

(require 'base)
(require 'hist-settings)
(require 'init-extensions)
(require 'init-autocomplete)
(require 'functions)
(require 'theme-settings)
(require 'org-settings)
;;(require 'fancy)
(require 'init-diminish)


;;----------------------------------------------------------------------------
;; Variables configured via the interactive 'customize' interface
;;----------------------------------------------------------------------------

(setq custom-file (concat user-emacs-directory "settings/custom.el"))
(load custom-file 'noerror)

;; for transparent terminal
(if (not (display-graphic-p))
    (add-to-list 'default-frame-alist '(background-color . "#"))
  )
;;(set-background-color "#1b1c1d") ; custom change


;;----------------------------------------------------------------------------
;; TRAMP and editing files over SSH on windows
;;----------------------------------------------------------------------------
(setq tramp-default-method "ssh")
(when (eq system-type 'windows-nt)
  (setq tramp-default-method "plink"))


;;; TODO list
;;
;; writer config (org mode blogging)
;; organizer config (org mode task management)
;; other features

;;; init.el ends here
