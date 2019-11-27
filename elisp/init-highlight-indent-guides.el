;;; init-highlight-indent-guides.el -*- lexical-binding: t; -*-

(require 'init-elpa)

;; Highlight indent guides

(use-package highlight-indent-guides
  :diminish
  :hook
  ((prog-mode yaml-mode) . highlight-indent-guides-mode)
  :custom
  (highlight-indent-guides-auto-enabled t)
  (highlight-indent-guides-responsive t)
  (highlight-indent-guides-method 'character)) ; optons: fill, column or character

(provide 'init-highlight-indent-guides)

;;; init-highlight-indent-guides.el ends here
