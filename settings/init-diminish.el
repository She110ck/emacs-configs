;;; init-diminish.el --- basic configs -*- lexical-binding: t -*-

;;; Commentary:
;;
;; This file contains diminish configs
;;
;;
;;; Code:

;; diminish - hide minor mode names
(require 'diminish)
(diminish 'eldoc-mode)
;; Hide flycheck-mode lighter from mode line
(diminish 'flycheck-mode)
(diminish 'auto-complete-mode " ↝")
(diminish 'smartparens-mode " ⚖")
(diminish 'ivy-mode nil)
(diminish 'which-key-mode nil)
(diminish 'undo-tree-mode " ↺")

(provide 'init-diminish)

;;; init-diminish.el ends here
