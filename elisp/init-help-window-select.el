;;; init-help-window-select.el -*- lexical-binding: t; -*-

;; Help window select


;; testing auto focus change when new window open
(setq help-window-select t)
; https://emacs.stackexchange.com/questions/7471/change-focus-to-help-buffer-after-running-describe-mode
(advice-add 'describe-mode :after '(lambda (&rest args) (call-interactively 'other-window)))


(provide 'init-help-window-select)

;;; init-help-window-select.el ends here
