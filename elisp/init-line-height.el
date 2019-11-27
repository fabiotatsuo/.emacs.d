;;; init-line-height.el

;; Line heght

; Test 1

;; Set the padding between lines
;(defvar line-padding 2)
;(defun add-line-padding ()
;  "Add extra padding between lines"

  ; remove padding overlays if they already exist
;  (let ((overlays (overlays-at (point-min))))
;    (while overlays
;      (let ((overlay (car overlays)))
;        (if (overlay-get overlay 'is-padding-overlay)
;            (delete-overlay overlay)))
;      (setq overlays (cdr overlays))))

  ; add a new padding overlay
;  (let ((padding-overlay (make-overlay (point-min) (point-max))))
;    (overlay-put padding-overlay 'is-padding-overlay t)
;    (overlay-put padding-overlay 'line-spacing (* .1 line-padding))
;    (overlay-put padding-overlay 'line-height (+ 1 (* .1 line-padding))))
;  (setq mark-active nil))

;(add-hook 'buffer-list-update-hook 'add-line-padding)

; test 2
; not works
;(defvar fov-line-height-overlay nil
;  "Overlay used to manage line-height across the buffer")
;(make-variable-buffer-local 'fov-line-height-overlay)
;
;(defun fov-update-line-height-overlays ()
;  "Run through the list of buffers and ensure they have an overlay for line-height."
;  (dolist (buf (buffer-list))
;    (with-current-buffer buf
;      (unless fov-line-height-overlay
;        (setq fov-line-height-overlay (make-overlay (point-min) (point-max) nil nil t))
;        (overlay-put fov-line-height-overlay 'line-height 1.2)))))
;
;(Add-hook 'buffer-list-update-hook 'fov-update-line-height-overlays)


(provide 'init-line-height)

;;; init-line-height ends here
