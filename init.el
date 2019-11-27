;;; init.el -*- lexical-binding: t; -*-

;; Copyright (C) 2019  Fabio Tatsuo

;; Author: Fabio Tatsuo

;;; Commentary:

;; emacs.d init file for macOS and Emacs 26.


(require `package)

(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
                    (not (gnutls-available-p))))
       (proto (if no-ssl "http" "https")))
 (when no-ssl
  (warn "\
   Your version of Emacs does not support SSL connections,
   which is unsafe because it allows man-in-the-middle attacks.
   There are two things you can do about this warning:
   1. Install an Emacs version that does support SSL and be safe.
   2. Remove this warning from your init file so you won't see it again."))
  ;; Comment/uncomment these two lines to enable/disable MELPA and MELPA Stable as desired
  (add-to-list 'package-archives (cons "melpa" (concat proto "://melpa.org/packages/")) t)
  ;;(add-to-list 'package-archives (cons "melpa-stable" (concat proto "://stable.melpa.org/packages/")) t)
  (when (< emacs-major-version 24)
   ;; For important compatibility libraries like cl-lib
   (add-to-list 'package-archives (cons "gnu" (concat proto "://elpa.gnu.org/packages/")))))


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(anzu-deactivate-region t)
 '(anzu-mode-lighter " Anzu")
 '(anzu-mode-line-update-function (function my/anzu-update-func))
 '(anzu-replace-threshold 50)
 '(anzu-replace-to-string-separator " => ")
 '(anzu-search-threshold 1000)
 '(custom-safe-themes
   (quote
    ("0ef2ee5bbfba82eec680e7f7911695d251bc4ef0c478af7d689d47f971ff7953" "21f3d372f5bfe5b402a183924ab2898132aa1c3bc5a093d51d4723084e07b522" "26d2c77f2887dcbef5fe8e12cd3e1f65493beb2ee9dda74cd7e8a0cbf2ac789b" "a71de87541fecf75351863f328c151c0d2e7ebba6509a2ce107618bd6b1730b1" default)))
 '(desktop-dirname "~/.emacs.d/" t)
 '(desktop-path (list "~/.emacs.d/"))
 '(desktop-restore-frames nil)
 '(desktop-save t)
 '(highlight-indent-guides-auto-enabled t)
 '(highlight-indent-guides-method (quote character))
 '(highlight-indent-guides-responsive t)
 '(imenu-list-focus-after-activation t)
 '(package-selected-packages
   (quote
    (yascroll window-purpose python-mode anzu kaolin-themes osx-trash twilight-bright-theme treemacs origami spacemacs-theme atom-one-dark-theme centaur-tabs swift-mode dashboard sublimity js3-mode highlight-indent-guides markdown-mode rust-mode go-mode all-the-icons use-package neotree minimap imenu-list dracula-theme)))
 '(setq 0.3 t))
    
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(package-initialize)

;; OS X related files: init-lldb, init-osx-trash
(defconst *is-mac* (eq system-type 'darwin))

(setq custom-theme-directory "~/.emacs.d/themes")
(add-to-list 'load-path "~/.emacs.d/elisp/")

;; Elisp init packages
(require 'init-anzu)
(require 'init-auto-revert)
(require 'init-backup)
;(require 'init-centaur-tabs)
(require 'init-cursor-display)
(require 'init-dashboard)
(require 'init-delete-selection)
(require 'init-desktop)
(require 'init-display-line-numbers)
(require 'init-editing)
(require 'init-eletric-pair)
(require 'init-elpa)
(require 'init-fringe)
;(require 'init-garbage-collection) ; not seem to start faster
(require 'init-help-window-select) ; testing
(require 'init-highlight-indent-guides)
(require 'init-hl-mode)
(require 'init-imenu-list)
(require 'init-language)
(require 'init-lldb)
;(require 'init-line-height) ; not working
;(require 'init-line-spacing)
(require 'init-minimap) ; not working nice with multiple windows
;(require 'init-mode-line)
;(require 'init-mode-line-2)
;(require 'init-navigation)
(require 'init-neotree) ; another option treemacs
(require 'init-osx-trash)
(require 'init-show-paren)
;(require 'init-sublimity) ; not working
(require 'init-theme)
;(require 'init-treemacs) : error python3 but works
(require 'init-ui)
(require 'init-yascroll)

;;; init.el ends here
