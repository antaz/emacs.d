;;; -*- lexical-binding: t; -*-

(use-package company
  :after eglot)

(add-hook 'after-init-hook 'global-company-mode)

(use-package vertico
  :ensure t
  :init
  :custom
  (vertico-cycle t)
  :init
  (vertico-mode))

(use-package savehist
  :init
  (savehist-mode))

(use-package marginalia
  :after vertico
  :ensure t
  :custom
  (marginalia-annotators '(marginalia-annotators-heavy marginalia-annotators-light nil))
  :init
  (marginalia-mode))

(use-package consult)

(provide 'init-completion)
