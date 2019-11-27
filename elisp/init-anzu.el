;;; init-anzu.el -*- lexical-binding: t; -*-

(require 'init-elpa)

;; Anzu
;; https://github.com/syohex/emacs-anzu

(global-anzu-mode +1)

(custom-set-variables
 '(anzu-mode-lighter " Anzu")
 '(anzu-deactivate-region t)
 '(anzu-search-threshold 1000)
 '(anzu-replace-threshold 50)
 '(anzu-replace-to-string-separator " => "))

;(define-key isearch-mode-map [remap isearch-query-replace]  #'anzu-isearch-query-replace)
;(define-key isearch-mode-map [remap isearch-query-replace-regexp] #'anzu-isearch-query-replace-regexp)

(defun my/anzu-update-func (here total)
  (when anzu--state
    (let ((status (cl-case anzu--state
                    (search (format " Results %d of %d " here total))
                    (replace-query (format "Replaced %d " total))
                    (replace (format "Replace %d of %d " here total)))))
      (propertize status 'face 'anzu-mode-line))))

(custom-set-variables
 '(anzu-mode-line-update-function #'my/anzu-update-func))

(provide 'init-anzu)

;;; init-anzu.el ends here
