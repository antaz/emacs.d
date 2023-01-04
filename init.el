;;;  -*- lexical-binding: t -*-

;; Minimum version required
(when (version< emacs-version "26.1")
  (error "This requires Emacs 26.1 and above!"))

;; Profile emacs startup
(add-hook 'emacs-startup-hook
          (lambda ()
            (message "Emacs loaded in %s."
                     (emacs-init-time))))

;; Defer garbage collection further back in the startup process
(setq gc-cons-threshold most-positive-fixnum)
(add-hook 'emacs-startup-hook
          (lambda ()
            "Recover GC values after startup."
            (setq gc-cons-threshold 800000)))

;; Load path
(add-to-list 'load-path (expand-file-name "modules" user-emacs-directory))

(require 'init-package)
(require 'init-look)
(require 'init-evil)
(require 'init-mapping)
(require 'init-completion)
(require 'init-recentf)
(require 'init-org)
(require 'init-yasnippet)
(require 'init-vc)
(require 'init-web)
(require 'init-markdown)
(require 'init-epa)

;; Custom config file
(setq custom-file (locate-user-emacs-file "custom.el"))
(load custom-file)
