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


(add-to-list 'load-path (concat user-emacs-directory "settings"))


(require 'base)
(require 'hist-settings)
(require 'org-settings)
(require 'init-extensions)
(require 'init-autocomplete)
(require 'functions)
(require 'theme-settings)
;;(require 'fancy)
(require 'init-diminish)


;;; TODO list

;; terminal config

;; GUI config

;; tramp config

;; writer config (org mode blogging)
;; organizer config (org mode task management)
;; other features



;;; init.el ends here
