;;; init-garbage-collection.el   -*- lexical-binding: t; -*-

;; https://emacs.nasy.moe/#orgd30af44

(let ((normal-gc-cons-threshold (* 128 1024 1024))
      (init-gc-cons-threshold (* 256 1024 1024)))
  (setq gc-cons-threshold init-gc-cons-threshold)
  (add-hook #'emacs-startup-hook
            (lambda () (setq gc-cons-threshold normal-gc-cons-threshold))))

(add-hook 'focus-out-hook #'garbage-collect)

(provide 'init-garbage-collection)

;;; init-garbage-collection.el ends here
