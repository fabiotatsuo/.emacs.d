;;; init-lldb.el -*- lexical-binding: t; -*-

(require 'init-elpa)

;; Lldb

;; gdb emacs frontend https://reverseengineering.stackexchange.com/questions/1392/decent-gui-for-gdb
;; https://github.com/ptrv/emacs.d/blob/master/init.el

(use-package gud
  :commands gud-gdb
  :init
  (defun ptrv/show-debugger ()
    (interactive)
    (let ((gud-buf
           (catch 'found
             (dolist (buf (buffer-list))
               (when (string-match "\\*gud-" (buffer-name buf))
                 (throw 'found buf))))))
      (if gud-buf
          (switch-to-buffer gud-buf)
        (call-interactively (if *is-mac* 'lldb 'gud-gdb)))))
  (bind-key "C-. g" #'ptrv/show-debugger)
  :config
  (bind-keys ("<f9>"    . gud-cont)
             ("<f12g>"   . gud-next)
             ("<f11>"   . gud-step)
             ("S-<f11>" . gud-finish)))

(use-package gud-lldb
  :if *is-mac*
  :load-path "~/.emacs.d/recipes"
  :commands (lldb))


(provide 'init-lldb)

;;; init-lldb.el ends here
