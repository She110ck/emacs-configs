;;; init.el --- initial config file  -*- lexical-binding: t -*-

;; Free for use
;; Author: she110ck<admin@she110ck.com>
;; Created: 2019-01-14
;; Version: 0.1.0
;; Homepage: https://github.com/She110ck/emacs-configs

;;; Commentary:
;;
;; Actually I don't use Emacs every day, so can't be sure about usability.
;; Soma parts of my config very popular, but I don't get it yet.
;; 
;;
;;; Code:

(require 'package)

;; adding all repo once
(add-to-list 'package-archives
	     '("melpa-stable" . "https://stable.melpa.org/packages/")
	     '("org" . "https://orgmode.org/elpa/"))

(package-initialize)

;;; TODO list

;; terminal config

;; GUI config

;; tramp config

;; writer config (org mode blogging)
;; organizer config (org mode task management)
;; other features

;;; init.el ends here
