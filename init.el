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
	("bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" "855eb24c0ea67e3b64d5d07730b96908bac6f4cd1e5a5986493cbac45e9d9636" "36ca8f60565af20ef4f30783aa16a26d96c02df7b4e54e9900a5138fb33808da" "c9ddf33b383e74dac7690255dd2c3dfa1961a8e8a1d20e401c6572febef61045" "bf798e9e8ff00d4bf2512597f36e5a135ce48e477ce88a0764cfb5d8104e8163" "998f89eda9ce36d8e4cccaa7e30f629da570d568c84b5fd5ad9ddc5f6a9132c2" "ac4b4e8168c4f76a4401deb7779ffd900059cb0a5bdc6d69b4f3eadf4f9ed11d" "a9711b81c3c56284f74a2d018957aa90e11d7ab18e9baf9b672513346c896ea4" "319539cfe83537924511b43e0e0cefa5675de4423013abf01c7f1c79c82870d4" "3b80926cc8c8fe32bf287b43bbb21998d9c7e5cb76906cbde1e19279c7bcfc7d" "1083079da3b70cb0594c1547ef30e34c15eef5e294fda40064bad02830c78303" "c433c87bd4b64b8ba9890e8ed64597ea0f8eb0396f4c9a9e01bd20a04d15d358" "82358261c32ebedfee2ca0f87299f74008a2e5ba5c502bde7aaa15db20ee3731" default)))
 '(helm-gtags-auto-update t)
 '(helm-gtags-ignore-case t)
 '(helm-gtags-path-style (quote relative))
 '(minimap-always-recenter nil)
 '(minimap-automatically-delete-window t)
 '(minimap-dedicated-window nil)
 '(minimap-display-semantic-overlays nil)
 '(minimap-major-modes
   (quote
	(latex-mode web-mode lisp-mode php-mode c-mode javascript-mode python-mode rust-mode java-mode c++-mode rjsx-mode haskell-mode typescript-mode)))
 '(minimap-mode nil)
 '(minimap-recenter-type (quote relative))
 '(minimap-recreate-window nil)
 '(minimap-update-delay 0)
 '(minimap-window-location (quote right))
 '(package-selected-packages
   (quote
	(skewer-mode lsp-ui company-jedi jedi-direx jedi eslint-fix company-flow flow-js2-mode tide spacemacs-theme smart-mode-line-atom-one-dark-theme smart-mode-line ample-theme rjsx-mode typescript-mode omnisharp csharp-mode haskell-mode vue-mode solarized-theme nlinum-relative linum-relative dumb-jump exec-path-from-shell fold-dwim projectile use-package java-snippets java-imports yasnippet auto-complete php-mode pdf-tools auctex-latexmk latex-preview-pane company-auctex markdown-preview-mode markdown-mode ecb function-args ag flycheck-irony irony-eldoc company-irony rust-mode nordless-theme nord-theme ggtags helm-gtags treemacs-evil magit anaconda-mode elpy web-mode)))
 '(treemacs-width 30)
 '(typescript-indent-level 2)
 '(vue-html-color-interpolations t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(minimap-active-region-background ((t nil)))
 '(minimap-font-face ((t (:height 40 :family "Fantasque Sans Mono")))))

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
(load-user-file "smartmodeline.el")
(load-user-file "latex.el")
(load-user-file "fonts.el")
(load-user-file "mmap.el")
(load-user-file "nlinum.el")
(load-user-file "typescript.el")
(load-user-file "dumb-jump-hooks.el")
