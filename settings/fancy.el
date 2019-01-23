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


(provide 'fancy)
;;; fancy.el ends here
