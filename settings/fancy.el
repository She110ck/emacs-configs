;;; fancy.el --- fancy configs -*- lexical-binding: t -*-

;;; Commentary:
;;
;; This file contains fancy configs jff
;; Also I use this file for some interesting configs for future
;;
;;; Code:


;; clock in mode line
(display-time-mode 1)
(setq display-time-24hr-format t)

;; display battery mode
(display-battery-mode 1)

;; unset emacs suspend key binding
(global-unset-key (kbd "C-z"))


;; M-x interaction
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-x") 'smex-major-mode-commands)
;; don't use because ivy


;; whitespace, didn't like
;;(setq whitespace-style '(trailing lines tab-mark))
;;(global-whitespace-mode 1)   ; didn't like
;;(global-whitespace-newline-mode 1)

;;(require 'darcula-theme)
;;(darcula-theme)

(provide 'fancy)
;;; fancy.el ends here
