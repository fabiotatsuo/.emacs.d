;;; init-display-line-numbers.el

;; Display line numbers
;; Old linum-mode for reference only, will depreceated.

;(global-display-line-numbers-mode)
;(global-linum-mode t)
;; Line number to specific mode
(use-package display-line-numbers
  :ensure nil
  :hook
  ((prog-mode markdown-mode) . display-line-numbers-mode))
;(add-hook 'prog-mode-hook 'display-line-numbers-mode)
;(add-hook 'markdown-mode-hook 'display-line-numbers-mode)
;(add-hook 'prog-mode-hook 'linum-mode)
;(add-hook 'markdown-mode-hook 'linum-mode)


;; Space between line numbers and text
;; space line number to text needed on terminal
;(setq linum-format "%3d ")
;(setq linum-format "%6d ")
;(setq linum-format "%4d \u2502 ") ; this sets space between line numbers and a vertical line line number/text
;(setq display-line-numbers-width 8) ; not working
;(setq-default display-line-numbers-width 8) ; set width on left of line numbers
;(setq display-line-numbers-grow-only 30)

;; Native line numbers
;(setq-default display-line-numbers 'visual
;              display-line-numbers-current-absolute t
;              display-line-numbers-width 4 
;              display-line-numbers-widen t)

(provide 'init-display-line-numbers)

;;; init-display-line-numbers.el ends here
