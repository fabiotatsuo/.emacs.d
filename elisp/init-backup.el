;;; init-backup.el -*- lexical-binding: t; -*-

;; Backup

(setq backup-directory-alist '(("" . "~/.emacs.d/backup/per-save")) ;; Default and per-save backups go here.
      version-control t     ;; Use version numbers for backups.
      kept-new-versions 20  ;; Number of newest versions to keep.
      kept-old-versions 4   ;; Number of oldest versions to keep.
      delete-old-versions t ;; Don't ask to delete excess backup versions.
      backup-by-copying t)  ;; Copy all files, don't rename them.

(defun force-backup-of-buffer ()
  ;; Make a special "per session" backup at the first save of each
  ;; emacs session.
  (when (not buffer-backed-up)
    ;; Override the default parameters for per-session backups.
    (let ((backup-directory-alist '(("" . "~/.emacs.d/backup/per-session")))
          (kept-new-versions 3))
      (backup-buffer)))

  ;; Make a "per save" backup on each save.  The first save results in
  ;; both a per-session and a per-save backup, to keep the numbering
  ;; of per-save backups consistent.
  (let ((buffer-backed-up nil))
        (backup-buffer)))

(add-hook 'before-save-hook  'force-backup-of-buffer)

(provide 'init-backup)

;;; init-backup.el ends here
