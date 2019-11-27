;;; init-osx-trash.el -*- lexical-binding: t; -*-

(require 'init-elpa)

;; OS X trash
;; Deleting files go to trash folder

(when *is-mac*
  (osx-trash-setup))
(setq delete-by-moving-to-trash t)

(provide 'init-osx-trash)

;;; init-osx-trash.el ends here
