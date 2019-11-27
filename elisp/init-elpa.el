;;; init-elpa.el -*- lexical-binding: t; -*-

(require 'package)

;; Elpa - use-package

;; refresh and install missing packages
(unless (package-installed-p 'use-package)
        (package-refresh-contents)
        (package-install 'use-package))

(provide 'init-elpa)

;;; init-elpa.el ends here
