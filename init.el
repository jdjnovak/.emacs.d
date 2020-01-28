;; Emacs 24 - init.el
;; jdjnovak
;; 18/11/18

(package-initialize)

;; Moved this to the top otherwise I get a warning EVERY time I start the program
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
	("c433c87bd4b64b8ba9890e8ed64597ea0f8eb0396f4c9a9e01bd20a04d15d358" "82358261c32ebedfee2ca0f87299f74008a2e5ba5c502bde7aaa15db20ee3731" default)))
 '(helm-gtags-auto-update t)
 '(helm-gtags-ignore-case t)
 '(helm-gtags-path-style (quote relative))
 '(minimap-major-modes
   (quote
	(latex-mode web-mode lisp-mode php-mode c-mode javascript-mode python-mode rust-mode java-mode c++-mode)))
 '(minimap-update-delay 0)
 '(minimap-window-location (quote right))
 '(package-selected-packages
   (quote
	(vue-mode solarized-theme nlinum-relative linum-relative dumb-jump exec-path-from-shell fold-dwim projectile use-package java-snippets java-imports yasnippet auto-complete minimap php-mode pdf-tools auctex-latexmk latex-preview-pane company-auctex markdown-preview-mode markdown-mode ecb function-args ag flycheck-irony irony-eldoc company-irony rust-mode nordless-theme nord-theme ggtags helm-gtags treemacs-evil magit anaconda-mode elpy web-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(minimap-active-region-background ((t nil)))
 '(minimap-font-face ((t (:height 40 :family "DejaVu Sans Mono")))))

(setenv "PATH" (concat (getenv "PATH") ":/usr/local/bin"))

(defconst user-init-dir
  (cond ((boundp 'user-emacs-directory)
	 user-emacs-directory)
	((boundp 'user-init-directory)
	 user-init-directory)
	(t "~/.emacs.d/")))

(defun load-user-file (file)
  (interactive "f")
  "Load a file in current user's config directory"
  (load-file (expand-file-name file user-init-dir)))

(load-user-file "sources.el")
(load-user-file "personal.el")
(load-user-file "evil.el")
(load-user-file "backups.el")
(load-user-file "web-mode.el")
(load-user-file "company.el")
(load-user-file "tags.el")
(load-user-file "treemacs-bindings.el")
(load-user-file "themes.el")
(load-user-file "latex.el")
(load-user-file "fonts.el")
(load-user-file "mmap.el")
(load-user-file "nlinum.el")

