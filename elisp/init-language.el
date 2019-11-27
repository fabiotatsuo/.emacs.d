;;; init-language.el -*- lexical-binding: t; -*-

(require 'init-elpa)

;; Languages

(let ((languages '(go-mode
		           js3-mode
                   rust-mode)))
   (dolist (lang languages) (unless (package-installed-p lang)
                                    (package-install lang))))

;; Go
(use-package go-mode
  :ensure t
  :config (progn
     ;; format before saving
     (add-hook 'before-save-hook 'gofmt-before-save)
     ;; import before saving
     (setq gofmt-command "goimports")))

;; Javascript
(use-package js3-mode
  :mode ("\\.js\\'" . js3-mode))


;; Org-mode
(use-package org
  :ensure t
  :init (progn
    (setq org-log-done 'time)

    ;; Turn off auto-fold
    (setq org-startup-folded nil)))

(add-hook 'org-mode-hook 'turn-on-font-lock)

;; Phyton
(setq python-shell-interpreter "python3")

;(defcustom python-shell-interpreter "python3"
;  "Default Python interpreter for shell."
;  :type 'string
;  :group 'python)

 ;(autoload 'python-mode "python-mode" "Python Mode." t)
 ;(add-to-list 'auto-mode-alist '("\\.py\\'" . python-mode))
 ;(add-to-list 'interpreter-mode-alist '("python" . python-mode))

;; Rust
(use-package flycheck-rust
  :ensure t
  :config (with-eval-after-load 'rust-mode
    (add-hook 'flycheck-mode-hook #'flycheck-rust-setup)))


(provide 'init-language)

;;; init-language.el ends here
