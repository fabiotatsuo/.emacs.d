;;; init-navigation.el -*- lexical-binding: t; -*-

(require 'init-elpa)

;; Navigation

;; Testing not working
(use-package vc-use-icons-in-mode-line
  :load-path "~/.emacs.d/recipes"
  :commands (vc-mode-line))

(provide 'init-navigation)

;;; init-navigation.el ends here
