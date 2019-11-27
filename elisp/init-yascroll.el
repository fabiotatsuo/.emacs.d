;;; init-yascroll.el -*- lexical-binding: t; -*-

(require 'init-elpa)

;; Yascroll

(global-yascroll-bar-mode 1)
(setq yascroll:delay-to-hide nil)

;(use-package yascroll
;  :config
;  (progn
;    ;; Yascroll
;    (global-yascroll-bar-mode 1)
;    (setq gcs-yascroll-color "#000")
;    (setq yascroll:delay-to-hide nil)
;    ;(zenburn-with-color-variables)
;    (set-face-background 'yascroll:thumb-fringe gcs-yascroll-color)
;    (set-face-foreground 'yascroll:thumb-fringe gcs-yascroll-color)
;    (set-face-background 'yascroll:thumb-text-area gcs-yascroll-color)
;    ;; Don't hide scrollbar when editing
;    ;(defadvice yascroll:before-change (around always-show-bar activate) ())
;    ))


(provide 'init-yascroll)

;;; init-yascroll.el ends here
