;;;  -*- lexical-binding: t -*-

(use-package deft
  :commands (deft)
  :config (setq deft-directory "~/docs/org"
                deft-extensions '("md" "org" "txt" "st")))

(provide 'init-deft)
