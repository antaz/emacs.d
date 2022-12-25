;;;  -*- lexical-binding: t -*-


(setq org-ellipsis " ▼"
      org-hide-emphasis-markers t
      org-pretty-entities t
      org-src-fontify-natively t
      org-src-tab-acts-natively t
      org-edit-src-content-indentation 2
      org-fontify-quote-and-verse-blocks t
      org-startup-indented t
      org-adapt-indentation nil
      org-indent-indentation-per-level 1
      org-startup-with-inline-images t
      org-latex-create-formula-image-program 'dvipng
      org-format-latex-options (plist-put org-format-latex-options :scale 1.2)
      org-image-actual-width '(400))

(add-hook 'org-mode-hook 'auto-fill-mode)
(add-hook 'org-mode-hook 'visual-line-mode)

(provide 'init-org)
