;;; init-ui.el -*- lexical-binding: t; -*-

(require 'init-elpa)

;; Ui

;; All the icons
;(use-package all-the-icons)
;;(setq neo-theme (if (display-graphic-p) 'icons 'arrow))
;;all-the-icons-icon-for-file

;; Disable Menu/toolbar/scroll
(menu-bar-mode -1)
(when (fboundp 'tool-bar-mode)
  (tool-bar-mode -1))
(when (fboundp 'scroll-bar-mode)
  (scroll-bar-mode -1))

;(scroll-bar-mode 1)
;(setq-default scroll-bar-width 5) ; not working


;; Disable splash screen (to enable it again, replace the t with 0)
(setq inhibit-splash-screen t)

;; Disable startup message
(setq inhibit-startup-message t)


;; Origami
(require 'origami)

;; Title bar
;(add-to-list 'default-frame-alist '(ns-transparent-titlebar . t))
;(add-to-list 'default-frame-alist '(ns-appearance . nil)) ;; dark for dark theme nil for light
;(setq ns-use-proxy-icon nil)
;(setq frame-title-format nil)

;; Tool-bar gui
;; Hide
;(tool-bar-mode -1)

;; Vertical border between windows
;; Hide
;(set-face-foreground 'vertical-border (face-background 'default))

;;; Windows
;; Dividers between windows
;(setq window-divider-default-places t
;      window-divider-default-bottom-width 1
;      window-divider-default-right-width 1)
;(add-hook 'window-setup-hook #'window-divider-mode)

;; Window
;; https://github.com/ptrv/emacs.d/blob/master/init.el

;; Change color theme according to time
;; https://github.com/GuiltyDolphin/dotfiles/blob/master/dotfiles/emacs/custom/config.org
;(if (my-date-in-daylight-hours (current-time))
;    (my-background-set-light)
;  (my-background-set-dark))

;; Windows purpose
;; Testing
(require 'window-purpose)
(purpose-mode)
;(add-to-list 'purpose-user-mode-purposes '(<major-mode> . <purpose>))
;(add-to-list 'purpose-user-name-purposes '(<name> . <purpose>))
;(add-to-list 'purpose-user-regexp-purposes '(<pattern> . <purpose>))
;(setq purpose-use-default-configuration t) ; not really necessary, default is t
;(purpose-compile-user-configuration) ; activates your changes


(provide 'init-ui)

;;; init-ui.el ends here
