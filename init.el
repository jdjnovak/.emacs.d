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
	("82358261c32ebedfee2ca0f87299f74008a2e5ba5c502bde7aaa15db20ee3731" default)))
 '(helm-gtags-auto-update t)
 '(helm-gtags-ignore-case t)
 '(helm-gtags-path-style (quote relative))
 '(package-selected-packages
   (quote
	(function-args ag dumb-jump flycheck-irony irony-eldoc company-irony rust-mode nordless-theme nord-theme ggtags helm-gtags treemacs-evil magit anaconda-mode elpy web-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

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

(load-user-file "personal.el")
(load-user-file "evil.el")
(load-user-file "sources.el")
(load-user-file "backups.el")
(load-user-file "web-mode.el")
(load-user-file "company.el")
(load-user-file "tags.el")
(load-user-file "treemacs-bindings.el")
(load-user-file "themes.el")

