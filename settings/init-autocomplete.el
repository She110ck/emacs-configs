;;; init-autocomplete.el --- org mode customization -*- lexical-binding: t -*-

;;; Commentary:

;;; Code:

;; auto-comlete, good for terminal
(require 'auto-complete)
(require 'auto-complete-config)
(ac-config-default)

(global-auto-complete-mode t)
(setq ac-auto-start nil) ; if want to use with TAB
(ac-set-trigger-key "TAB") ; trigger for ac
(ac-flyspell-workaround)
(ac-linum-workaround)
(setq popup-use-optimized-column-computation nil) ;vertical fixed start
;;(setq ac-auto-start 4) ;starts after 4 character

;; add own words for autocomplete
(add-to-list 'ac-user-dictionary "foobar@example.com")
;; for X system use company-quickhelp

(provide 'init-autocomplete)

;;; init-autocomplete.el ends here
