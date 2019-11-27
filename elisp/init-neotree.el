;;; init-neotree.el -*- lexical-binding: t; -*-

(require 'init-elpa)

;; Neotree

(require 'neotree)
(global-set-key [f8] 'neotree-toggle)
(add-hook 'after-init-hook #'neotree-toggle)
(use-package neotree
  :ensure t
  ;; :bind ("<f8>" . 'neotree-toggle)   
  :init
  ;; pull all fonts/icons
  ;; (all-the-icons-install-fonts)
  ;; enable icons
  ;; (all-the-icons-icon-for-buffer)
  ;; (all-the-icons-icon-for-file)
  ;; (all-the-icons-icon-for-mode)
  
  ;; Slow rendering
  (setq inhibit-compacting-font-caches t)

  ;; Set icons theme
  (setq neo-theme (if (display-graphic-p) 'icons 'arrow))

  ;; Every time when the neotree window is opened, let it find current file and jump to node
  (setq neo-smart-open t)
  
  ;; When running ‘projectile-switch-project’ (C-c p p), ‘neotree’ will change root automatically
  ;;(setq projectile-switch-project-action 'neotree-projectile-action)

  ;; Order folder and files
  (defadvice neo-buffer--get-nodes
     (after neo-buffer--get-nodes-new-sorter activate)
     (setq ad-return-value
        (let ((nodes ad-return-value)
              (comparator (lambda (s1 s2) (string< (downcase (reverse-file-extension s1))
                                                   (downcase (reverse-file-extension s2))))))
              (apply 'cons (mapcar (lambda (x) (sort (apply x (list nodes))
                                                comparator))
                            '(car cdr))))))
    
  (defun reverse-file-extension(filename)
    (mapconcat 'identity (reverse (split-string filename "\\.")) "."))

  ;; Do not close neotree when C-x 1
  (defun neo-window--init (window buffer)
    "Make WINDOW a NeoTree window.
    NeoTree buffer is BUFFER."
    (neo-buffer--with-resizable-window
      (switch-to-buffer buffer)

        ;; Adding this line will make the window fixed
        (set-window-parameter window 'no-delete-other-windows t)
        (set-window-dedicated-p window t))
  window)
    
  ;; show hidden files
  (setq-default neo-show-hidden-files t))

(provide 'init-neotree)

;;; init-neotree.el ends here
