;;; treble-theme.el --- Treble Theme -*- lexical-binding: t; -*-

;; Copyright 2019 ft

;; Author: ft
;; Version: 0.1.0
;; Package-Version: 20191001

;; This file is not part of GNU Emacs.

;; This file is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 3, or (at your option)
;; any later version.

;; This file is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; Emacs light color theme.

;;; Code:
(require 'cl-lib)
(deftheme treble)

(let ((colors '((black1          "#000000")
                (black2          "#161818")
                (black3          "#323234")
                (black4          "#404040")
                (black5          "#808080")
                (blue1           "#2077fb")
                (blue2           "#1e73be")
                (blue3           "#0282f2")
                (blue-light1     "#e8f2ff")
                (blue-light2     "#c7e1f2")
                (blue-light3     "#b2d6fb")
                (blue-light4     "#a4cdff")
                (brown1          "#bf8555")
                (brown2          "#643820")
                (cyan1           "#38a2af")
                (cyan2           "#1c464a")
                (cyan3           "#06b1d8")
                (font1           "Hack")
                (font2           "Open Sans")
                (gray1           "#ececec")
                (gray2           "#b4b4b4")
                (gray3           "#9b9b9b")
                (gray4           "#5d6c79")
                (green1          "#57c038")
                (green2          "#119912")
                (green-light1    "#c4e7ce")
                (orange1         "#fd8f3f")
                (orange2         "#e47c48")
                (purple1         "#8d52d1")
                (purple2         "#9b2393")
                (red1            "#c41a16")
                (white1          "#ffffff")
                (white2          "#f0f0f7")
                (white3          "#f4f5f6")
                (white4          "#eff0f1")
                (yellow1         "#ffe76d")
                (yellow2         "#fff618")
                (yellow-light1   "#f9efda")
                ;; custom variables
                (bg-color        "#fff")
                (primary-color   "#f0f0f7")
                (bg3             "#f4f5f6")
                (bg4             "#eff0f1")
                )) ;end colors
      (faces '(;;; Basics
               (cursor :background ,black4)
               (default :background ,bg-color :family ,font1 :foreground ,black4 :height 120)
               (error :foreground ,yellow1 :weight bold)
               ;(fixed-pitch :family ,fg2)
               (fringe :background ,bg-color :width extra-expanded)
               (link :foreground ,blue2 :underline t)
               (link-visited :foreground ,black5 :underline t) ; seems not working
               (header-line :background nil)
               (highlight :background ,blue-light1)
               (minibuffer-prompt :foreground ,purple2 :weight bold)
               (region :background ,blue-light1)
               ;(shadow )
               (success :foreground ,green1)
               (warning :foreground ,orange1)
               ;; Options
               (hl-line :background ,blue-light1)
               (vertical-border :foreground ,blue-light3)
               ;; Font faces
               (font-lock-builtin-face :background ,bg-color :foreground ,brown1)
               (font-lock-comment-delimiter-face :background ,bg-color :foreground ,gray3)
               (font-lock-comment-face  :background ,bg-color :foreground ,gray3 :slant normal)
               (font-lock-constant-face  :background ,bg-color :foreground ,purple1)
               (font-lock-doc-face :background ,bg-color :family ,font2  :foreground ,gray3)
               (font-lock-function-name-face  :background ,bg-color :foreground ,orange2)
               (font-lock-keyword-face :background ,bg-color :foreground ,purple2 :weight bold)
               (font-lock-negation-char-face :foreground ,red1 :weight bold)
               (font-lock-preprocessor-face :background ,bg-color :foreground ,brown2)
               (font-lock-regexp-grouping-backslash :foreground ,orange1)
               (font-lock-regexp-grouping-construct :foreground ,blue3)
               (font-lock-string-face :background ,bg-color :foreground ,green2)
               (font-lock-type-face :background ,bg-color :foreground ,cyan3)
               (font-lock-variable-name-face  :background ,bg-color :foreground ,blue1)
               (font-lock-warning-face :foreground ,orange1)


               ;test regex color
               (add-to-list
               'color-identifiers:modes-alist
               `(go-mode . ("[^.][[:space:]]*"
               "\\_<\\([a-zA-Z_$]\\(?:\\s_\\|\\sw\\)*\\)"
               (nil font-lock-variable-name-face))))
               
               ;;; Packages

               ;; Anzu
               (anzu-mode-line :background ,blue1 :foreground ,white2)

               ;; Centaur-tabs
               (centaur-tabs-active-bar-face :background ,yellow1)
               (centaur-tabs-default :background ,bg-color :foreground ,bg-color)
               (centaur-tabs-modified-marker-selected :inherit 'centaur-tabs-selected :foreground ,yellow1)
               (centaur-tabs-modified-marker-unselected :inherit 'centaur-tabs-unselected :foreground ,yellow1)
               (centaur-tabs-selected :background ,white2 :foreground ,black4 :weight bold)
               (centaur-tabs-selected-modified :background ,white2 :foreground ,orange1 :weight bold)
               (centaur-tabs-unselected :background ,white3 :foreground ,black5)
               (centaur-tabs-unselected-modified :background ,white3 :foreground ,orange1)

               ;; Dashboard
               (dashboard-footer :foreground ,purple2)
               (dashboard-heading :foreground ,orange1)
               ;(dashboard-navigator :foreground ,purple2)

               ;; Fringe
               ;(fringe-indicator-alist :foreground ,gray1) ; not works
               
               ;; Line-numbers
               (line-number :background ,bg-color :foreground ,gray2 :height 0.8 :weight normal)
               (line-number-current-line :background ,blue-light1 :foreground ,black4 :height 0.8 :weight normal)

               ;; Linum
               (linum :background ,bg-color :family ,font2 :foreground ,gray2 :height 0.9)
               ;(linum-current-line :background ,blue-light2 :foreground ,gray4 :inherit linum)
               ;(linum-highlight-face :foreground ,orange1 :background ,bg4)
               ;(linum-relative-current-face :foreground ,black5)
               ;(linum-relative-current-line :inherit 'linum-highlight-face)
               ;(nlinum-current-line :background ,gray2 :foreground ,orange1 :bold bold :italic nil :underline nil :strike-through nil)
               ;(nlinum-relative-current-face :inherit 'nlinum-current-line)

               
               ;; Highlight indent guides
               (highlight-indent-guides-character-face :foreground ,white3)
               (highlight-indent-guides-even-face :background ,white2)
               (highlight-indent-guides-odd-face :background ,white4)

               ;; Imenu list
               ;; https://github.com/ogdenwebb/emacs-kaolin-themes/blob/master/kaolin-themes-lib.el
               (imenu-list-entry-face :family ,font2 :height 1)
               (imenu-list-entry-face-0 :foreground ,purple2 :inherit 'imenu-list-entry-face) ; keyword
               (imenu-list-entry-face-1 :foreground ,cyan1 :inherit 'imenu-list-entry-face) ; function 
               (imenu-list-entry-face-2 :foreground ,red1 :inherit 'imenu-list-entry-face) ; string
               (imenu-list-entry-face-3 :foreground ,cyan2 :inherit 'imenu-list-entry-face) ; type
               (imenu-list-entry-subalist-face-0 :inherit 'imenu-list-entry-face-0 :weight bold)
               (imenu-list-entry-subalist-face-1 :inherit 'imenu-list-entry-face-1 :weight bold)
               (imenu-list-entry-subalist-face-2 :inherit 'imenu-list-entry-face-2 :weight bold)
               (imenu-list-entry-subalist-face-3 :inherit 'imenu-list-entry-face-3 :weight bold)

               ;; Isearch
               (lazy-highlight :background ,bg4 :underline nil)
               (isearch :background ,yellow2)
               (isearch-fail :background ,red1 :foreground ,white2)

               ;; Minimap
               ;(minimap-font-face)
               (minimap-active-region-background :background ,white4)
               ;(minimap-semantic-function-face)
               ;(minimap-semantic-variable-face)
               ;(minimap-semantic-type-face)
               
               ; Mode-line
               ; http://amitp.blogspot.com/2011/08/emacs-custom-mode-line.html
               (mode-line :family ,font2 :foreground ,black4 :background ,gray1 :box (:color ,gray1 :line-width 1))
               (mode-line-buffer-id :weight bold)
               (mode-line-emphasis :weight bold)
               (mode-line-highlight :foreground ,blue1 :box (:color ,blue1 :line-width 2 :style released-button))
               (mode-line-inactive :background ,white3 :family ,font2 :foreground ,black5 :box (:color ,white3 :line-width 1))
               (mode-line-read-only-face :foreground ,blue1 :inherit 'mode-line-face) ; not working
               
               ;; Neotree
               (neo-dir-link-face :family ,font2 :foreground ,black3 :weight normal) ; semi-bold
               (neo-expand-btn-face :family ,font2 :foreground ,yellow1) ; could not see this working
               (neo-file-link-face :family ,font2 :foreground ,black3)
               (neo-root-dir-face :family ,font2 :foreground ,blue1 :inherit bold)
               
               ;; Show-paren
               (show-paren-match :background ,yellow2 :underline t)
               (show-paren-mismatch :background ,red1 :underline t)
               
               ;; Treemacs
               (treemacs-directory-face :background nil :family ,font2 :foreground ,black4)
               (treemacs-file-face :inherit 'treemacs-directory-face)
               (treemacs-root-face :height 1 :inherit 'treemacs-directory-face :underline nil :weight bold)
               (treemacs-tags-face :inherit 'treemacs-directory-face)
               (treemacs-term-node-face :inherit 'treemacs-directory-face)

               ;(treemacs-fringe-indicator-face (:foreground gray2))
               ;(treemacs-git-added-face :foreground ,green1 :background ,white4)
               ;(treemacs-git-conflict-face :foreground ,red :background ,red-bg)
               ;(treemacs-git-ignored-face :foreground ,yellow1)
               ;(treemacs-git-modified-face :foreground ,blue1 :background ,white4)
               ;(treemacs-git-untracked-face :foreground ,purple2 :background ,white4)
               ;(treemacs-on-failure-pulse-face :background ,red1 :foreground ,bg-color)
               ;(treemacs-on-success-pulse-face :background ,green1 :foreground bg-color)

               ;; Window-divider ; testing not see diff
               (window-divider :foreground ,blue-light3)
               (window-divider-first-pixel :foreground ,blue-light3)
               (window-divider-last-pixel :foreground ,blue-light3)

               ;; Yascroll
               (yascroll:thumb-fringe :background ,gray2 :foreground ,gray2)
               (yascroll:thumb-text-area :foreground ,gray2)

               
               )) ; end faces
      ) ; end color and faces

  (apply #'custom-theme-set-faces
         'treble
         (let ((color-names (mapcar #'car colors))
               (graphic-colors (mapcar #'cadr colors))
               (tty-colors (mapcar #'car (mapcar #'last colors))))
           (cl-flet* ((expand-for-tty (spec) (cl-progv color-names tty-colors
                                               (eval `(backquote ,spec))))
                      (expand-for-graphic (spec) (cl-progv color-names graphic-colors
                                                   (eval `(backquote ,spec)))))
             (cl-loop for (face . spec) in faces
                      collect `(,face
                                ((((min-colors 16777216))
                                  ,(expand-for-graphic spec))
                                 (t
                                  ,(expand-for-tty spec))))))))

) ;end let

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'treble)

;; Local Variables:
;; no-byte-compile: t
;; End:

;;; treble-theme.el ends here
