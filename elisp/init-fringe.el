;;; init-fringe.el -*- lexical-binding: t; -*-

;; Fringe

;; Fringe margin
;(set-window-margins nil 1)
;(setq linum-format " ")

;; make both fringes 4 pixels wide
;(fringe-mode 4)

;; make the left fringe 4 pixels wide and the right disappear
;(fringe-mode '(8 . 8))

;; restore the default sizes
;(fringe-mode nil)


;(setq-default visual-line-fringe-indicators nil)

 (setq-default fringe-indicator-alist '(
   (truncation nil nil) ; left-arrow right-arrow
   (continuation nil nil) ;; left-curly-arrow right-curly-arrow 
   (overlay-arrow . right-triangle)
   (up . up-arrow)
   (down . down-arrow)
   (top top-left-angle top-right-angle)
   (bottom bottom-left-angle bottom-right-angle top-right-angle top-left-angle)
   (top-bottom left-bracket right-bracket top-right-angle top-left-angle)
   (empty-line . empty-line)
   (unknown . question-mark)))

;(defconst fringe-styles
;  '(("default" . nil)
;    ("no-fringes" . 0)
;    ("right-only" . (0 . nil))
;    ("left-only" . (nil . 0))
;    ("half-width" . (4 . 4))
;    ("minimal" . (1 . 1)))
;   "Alist mapping fringe mode names to fringe widths.
; Each list element has the form (NAME . WIDTH), where NAME is a
; mnemonic fringe mode name and WIDTH is one of the following:
; - nil, which means the default width (8 pixels).
; - a cons cell (LEFT . RIGHT), where LEFT and RIGHT are
;   respectively the left and right fringe widths in pixels, or
;   nil (meaning the default width).
; - a single integer, which specifies the pixel widths of both
; fringes.")

(provide 'init-fringe)

;;; init-fringe.el ends here
