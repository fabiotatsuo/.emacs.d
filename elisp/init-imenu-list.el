;;; init-imenu-list.el -*- lexical-binding: t; -*-

(require 'init-elpa)

;; Imenu-list

;; https://github.com/ogdenwebb/emacs-kaolin-themes/blob/master/kaolin-themes-lib.el

(imenu-list-minor-mode)
;(setq imenu-list-auto-resize t)

;(my:load-recipes 'imenu-list-in-side-buffer)

(use-package imenu-list
  ;:load-path "~/.emacs.d/elpa/imenu-list"
  ;; :load-path "~/Developments/src/github.com/Ladicle/imenu-list"
  :bind
  ("<f10>" . imenu-list-smart-toggle)


  :custom-face
  ;(imenu-list-entry-face-1 ((t (:foreground "black1"))))
  :custom
  (imenu-list-focus-after-activation t)
;  (imenu-list-auto-resize t))
  ;; After using the recipe above, this parameter specifies the
  ;; `window-total-width' of the imenu-list side window.  On my system,
  ;; today, I need 54 to get a `window-text-width' of 50.
  (setq imenu-list-size 32))

(use-package imenu-list-in-side-buffer
  :load-path "~/.emacs.d/recipes"
  :commands (my:imenu-list-install-display-buffer))

(provide 'init-imenu-list)

;;; init-imenu-list.el ends here
