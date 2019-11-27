(require 'init-elpa)


;; Column
;; Show
;(setq column-number-mode t)
;;; init-editing.el -*- lexical-binding: t; -*-

;; Set default width 80
(setq-default fill-column 80)     

;; Enter automatically indent code
(define-key global-map (kbd "RET") 'newline-and-indent)

;; Tab and Space
;; Permanently indent with spaces, never with TABs
(setq-default c-basic-offset   4
              tab-width        4
              indent-tabs-mode nil)

(provide 'init-editing)

;;; init-editing.el ends here
