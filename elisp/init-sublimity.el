;;; init-sublimity.el -*- lexical-binding: t; -*-

(require 'init-elpa)

;; Sublimity
(require 'sublimity)
(require 'sublimity-scroll)
(require 'sublimity-map) ;; experimental
(require 'sublimity-attractive)
(sublimity-mode 1)
(setq sublimity-scroll-weight 5
      sublimity-scroll-drift-length 10)
(setq sublimity-map-size 20)
(setq sublimity-map-fraction 0.3)
(setq sublimity-map-text-scale -7)
(add-hook 'sublimity-map-setup-hook
          (lambda ()
            (setq buffer-face-mode-face '(:family "Monospace"))
            (buffer-face-mode)))
(sublimity-map-set-delay 5)
(sublimity-attractive-hide-bars)
(sublimity-attractive-hide-vertical-border)
(sublimity-attractive-hide-fringes)
;(sublimity-attractive-hide-modelines)

(provide 'init-sublimity)

;;; init-sublimity.el ends here
