;;; init-theme.el -*- lexical-binding: t; -*-

(require 'init-elpa)

;; Theme

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")

;; Dark themes
;(load-theme 'atom-one-dark t)
;(load-theme 'dracula t)
;(load-theme 'spacemacs-dark t)

;; Light themes
;(load-theme 'kaolin-light t)
;(load-theme 'spacemacs-light t)
(load-theme 'treble t)
;(load-theme 'twilight-bright t)

(provide 'init-theme)

;;; init-theme.el ends here
