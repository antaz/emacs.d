;;; -*- lexical-binding: t; -*-

;; Set font face attributes
(defun set-faces ()
  ;; Default font face
  (set-face-attribute 'default nil :font "MonoLisa" :height 108)
  ;; Fixed pitch face
  (set-face-attribute 'fixed-pitch nil :font "MonoLisa" :height 1.0)
  ;; Variable pitch face
  (set-face-attribute 'variable-pitch nil :font "DejaVu Sans" :height 1.2))

(add-hook 'server-after-make-frame-hook 'set-faces)
(set-faces)

(pixel-scroll-precision-mode)

(setq modus-themes-italic-constructs t
      modus-themes-bold-constructs t
      modus-themes-mixed-fonts t
      modus-themes-subtle-line-numbers t
      modus-themes-intense-mouseovers t
      modus-themes-deuteranopia t
      modus-themes-tabs-accented t
      modus-themes-inhibit-reload t
      modus-themes-fringes nil
      modus-themes-lang-checkers nil
      modus-themes-mode-line '(accented borderless)
      modus-themes-markup '(background italic)
      modus-themes-syntax nil
      modus-themes-hl-line '(underline accented)
      modus-themes-paren-match '(bold intense)
      modus-themes-links '(neutral-underline background)
      modus-themes-box-buttons '(variable-pitch flat faint 0.9)
      modus-themes-prompts '(intense bold)
      modus-themes-completions '((matches . (extrabold))
                                 (selection . (semibold accented))
                                 (popup . (accented intense)))
      modus-themes-mail-citations nil
      modus-themes-region '(bg-only no-extend)
      modus-themes-diffs 'desaturated
      modus-themes-org-blocks 'gray-background
      modus-themes-org-agenda
      '((header-block . (variable-pitch 1.3))
        (header-date . (grayscale workaholic bold-today 1.1))
        (event . (accented varied))
        (scheduled . uniform)
        (habit . traffic-light))
      modus-themes-headings
      '((1 . (overline background variable-pitch 1.3))
        (2 . (rainbow overline 1.1))
        (t . (semibold))))

(load-theme 'modus-vivendi)

(provide 'init-look)
