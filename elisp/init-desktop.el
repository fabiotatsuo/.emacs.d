;;; init-desktop.el -*- lexical-binding: t; -*-

;; Desktop

;; Restore opening files
(custom-set-variables
   '(desktop-save t)
   '(desktop-restore-frames nil)
   '(desktop-path (list "~/.emacs.d/"))
   '(desktop-dirname "~/.emacs.d/"))
(desktop-save-mode 1)
;;(setq desktop-auto-save-timeout 300)

(provide 'init-desktop)

;;; init-desktop.el ends here
