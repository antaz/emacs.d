;;; -*- lexical-binding: t; -*-

;; Set font face attributes
(defun set-faces ()
  ;; Default font face
  (set-face-attribute 'default nil :family "Monolisa" :height 108)
  ;; Fixed pitch face
  (set-face-attribute 'fixed-pitch nil :family "Monolisa" :height 1.0)
  ;; Variable pitch face
  (set-face-attribute 'variable-pitch nil :family "DejaVu Sans" :height 1.2))

(add-hook 'server-after-make-frame-hook 'set-faces)
(set-faces)

(pixel-scroll-precision-mode)

(setq modus-themes-common-palette-overrides
      '((border-mode-line-active unspecified)
	(border-mode-line-inactive unspecified)
	(bg-mode-line-active bg-blue-subtle)
	(fg-mode-line-active fg-main)
	(fringe unspecified))
      modus-themes-italic-constructs t
      modus-themes-bold-constructs t
      modus-themes-org-blocks 'gray-background)

(load-theme 'modus-vivendi :no-confirm)

(provide 'init-look)
