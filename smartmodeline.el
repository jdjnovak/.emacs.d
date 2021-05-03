(add-to-list 'custom-theme-load-path (expand-file-name "themes"
													   user-emacs-directory))

(require 'smart-mode-line)
(setq sml/theme 'atom-one-dark)
(sml/setup)
