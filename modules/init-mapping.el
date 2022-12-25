;;; -*- lexical-binding: t; -*-

;; Remap escape
(global-set-key (kbd "<escape>") 'keyboard-escape-quit)

;; Toggle modus theme
(define-key global-map (kbd "<f5>") #'modus-themes-toggle)

;; General.el
(use-package general
  :after evil
  :config
  (general-define-key
   :states '(normal motion visual)
   :keymaps 'override
   :prefix ";"

   ";" '(execute-extended-command :which-key "M-x")
   "/" '(consult-ripgrep :which-key "ripgrep")
   "s" '(save-buffer :which-key "save buffer")
   "q" '(save-buffers-kill-emacs :which-key "quit emacs")

   "b" '(nil :which-key "buffer")
   "bb" '(consult-buffer :which-key "switch buffer")
   "bd" '(kill-buffer :which-key "delete buffer")

   "f" '(nil :which-key "file")
   "ff" '(consult-find :which-key "find file")

   "w" '(nil :which-key "window")
   "ws" '(split-window-right :which-key "split window")
   "ww" '(evil-window-prev :which-key "previous window")
   "wx" '(delete-window :which-key "delete window")
   "wo" '(delete-other-windows :which-key "delete other windows")

   "g" '(nil :which-key "magit")
   "gs" '(magit-status :which-key "magit status")

   "o" '(nil :which-key "org")

   "d" '(dired :which-key "dired")

   "h" '(nil :which-key "help")
   "hv" '(describe-variable :which-key "describe variable")))

(provide 'init-mapping)
