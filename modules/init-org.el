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
      ;; org-latex-create-formula-image-program 'dvipng
      ;; org-format-latex-options (plist-put org-format-latex-options :scale 1.2)
      org-image-actual-width '(500))


(add-hook 'org-mode-hook 'auto-fill-mode)
(add-hook 'org-mode-hook 'visual-line-mode)

(setq org-capture-templates
      '(
	("t" "Task" entry (file+olp "~/docs/org/task.org" "Tasks")
	 "* TODO %?\n  %U\n  %a\n  %i" :empty-lines 1)

	("j" "Journal" entry (file+olp+datetree "~/docs/org/journal.org")
	"* %<%I:%M %p> %?" :empty-lines 1)

	("b" "Blog" entry (file+olp+datetree "~/docs/org/blog.org")
	 "* %?\n PROPERTY:%^{Prompt}" :empty-lines 1)

	("n" "Note" entry (file+olp+datetree "~/docs/org/note.org")
	 "* %?" :empty-lines 1)

	("p" "Project" entry (file+olp+datetree "~/docs/org/project.org")
	 "* %?" :empty-lines 1)
      ))

(setq org-agenda-files '("~/docs/org/task.org" "~/docs/org/journal.org" "~/docs/org/project.org"))

(org-crypt-use-before-save-magic)
(setq org-tags-exclude-from-inheritance (quote ("crypt")))
(setq org-crypt-key nil)

;; org-babel languages

(use-package ob-rust)

(org-babel-do-load-languages
 'org-babel-load-languages
 '((python . t)
   (shell . t)
   (ruby . t)
   (rust . t)
   (js . t)))

;; org exports



(provide 'init-org)
