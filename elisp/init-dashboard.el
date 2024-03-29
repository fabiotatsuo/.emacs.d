;;; init-dashboard.el

(require 'init-elpa)

;; Dashboard

;; dependencies: page-break-lines
(use-package dashboard
  :ensure t
  :config
  (dashboard-setup-startup-hook)

  ;; Open dashboard from emacsclient
  (setq initial-buffer-choice (lambda () (get-buffer "*dashboard*")))

  ;; Set the title
  ;(setq dashboard-banner-logo-title "Welcome to Emacs Dashboard")
  ;; Set the banner
  (setq dashboard-startup-banner 'logo)
  ;; Value can be
  ;; 'official which displays the official emacs logo
  ;; 'logo which displays an alternative emacs logo
  ;; 1, 2 or 3 which displays one of the text banners
  ;; "path/to/your/image.png" which displays whatever image you would prefer
  
  ;; Icons
  (setq dashboard-set-heading-icons t)
  (setq dashboard-set-file-icons t))
  ;(dashboard-modify-heading-icons '((recents . "file-text")
  ;                                  (bookmarks . "book"))))

  ;(setq dashboard-set-navigator t)

  ;(setq dashboard-items '((recents  . 5)
  ;                        (bookmarks . 5)
  ;                        (projects . 5)
  ;                        (agenda . 5)
  ;                        (registers . 5))))

(provide 'init-dashboard)

;;; init-dashboard.el ends here
