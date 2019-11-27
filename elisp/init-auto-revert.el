;;; init-auto-revert.el 

;; Auto revert

;; Automatically reload files was modified by external program
(use-package autorevert
  :ensure nil
  :diminish
  :hook (after-init . global-auto-revert-mode))

(provide 'init-auto-revert)

;;; init-auto-revert.el ends here
