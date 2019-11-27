;;; init-minimap.el -*- lexical-binding: t; -*-

(require 'init-elpa)

;; Minimap

;; https://ladicle.com/post/config/#minimap
(use-package minimap
  :commands
  (minimap-bufname minimap-create minimap-kill)
  :custom
  (minimap-major-modes '(prog-mode))
  (minimap-window-location 'right)
  (minimap-update-delay 0.2)
  (minimap-minimum-width 20)
  :bind
  ("C-c p" . toggle-minimap)
  :preface
  (defun toggle-minimap ()
    "Toggle minimap for current buffer."
    (interactive)
    (if (null minimap-bufname)
        (minimap-create)
      (minimap-kill)))
  ;:config
  ;(custom-set-faces
  ; '(minimap-active-region-background
  ;  ((((background dark)) (:background "#555555555555"))
  ;   (t (:background "#C847D8FEFFFF"))) :group 'minimap))
  )


(provide 'init-minimap)

;;; init-minimap.el ends here
