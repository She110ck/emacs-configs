;;; fancy.el --- fancy configs -*- lexical-binding: t -*-

;;; Commentary:
;;
;; This file contains fancy configs jff
;;
;;
;;; Code:


;; clock in mode line
(display-time-mode 1)

;; display battery mode
(display-battery-mode 1)

;; unset emacs suspend key binding
(global-unset-key (kbd "C-z"))


;; whitespace, didn't like
;;(setq whitespace-style '(trailing lines tab-mark))
;;(global-whitespace-mode 1)   ; didn't like
;;(global-whitespace-newline-mode 1)

;;(require 'darcula-theme)
;;(darcula-theme)

(provide 'fancy)
;;; fancy.el ends here
