;;; hist-settings.el --- backup file configs -*- lexical-binding: t -*-

;;; Commentary:
;;
;; This file contains history, backup and version control settings
;;
;;; Code:

;; backup changes(tilda files dir)
(setq backup-directory-alist '(("." . "~/.emacs.local/backups")))
(setq delete-old-versions -1)
(setq version-control t)
(setq vc-make-backup-files t)
(setq auto-save-file-name-transforms '((".*" "~/.emacs.local/auto-save-list/" t)))
(setq auto-save-list-file-prefix "~/.emacs.local/auto-save-list/")

;; eshell history file dir
(setq eshell-history-file-name "~/.emacs.local/eshell-history")

;; autocomplete history file
(setq ac-comphist-file "~/.emacs.local/ac-comphist.dat")

;; bookmark save file
(setq bookmark-default-file "~/.emacs.local/bookmarks.el")
(setq bookmark-save-flag t)

;; ido mode history file
(setq ido-save-directory-list-file "~/.emacs.local/ido/ido.hist")

(provide 'hist-settings)
;;; hist-settings ends here
