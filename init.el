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
 '(company-idle-delay 0.2)
 '(custom-safe-themes
   (quote
	("c74e83f8aa4c78a121b52146eadb792c9facc5b1f02c917e3dbb454fca931223" "3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" "a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" "60940e1f2fa3f4e61e7a7ed9bab9c22676aa25f927d5915c8f0fa3a8bf529821" "27a1dd6378f3782a593cc83e108a35c2b93e5ecc3bd9057313e1d88462701fcd" "57e3f215bef8784157991c4957965aa31bac935aca011b29d7d8e113a652b693" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" "855eb24c0ea67e3b64d5d07730b96908bac6f4cd1e5a5986493cbac45e9d9636" "36ca8f60565af20ef4f30783aa16a26d96c02df7b4e54e9900a5138fb33808da" "c9ddf33b383e74dac7690255dd2c3dfa1961a8e8a1d20e401c6572febef61045" "bf798e9e8ff00d4bf2512597f36e5a135ce48e477ce88a0764cfb5d8104e8163" "998f89eda9ce36d8e4cccaa7e30f629da570d568c84b5fd5ad9ddc5f6a9132c2" "ac4b4e8168c4f76a4401deb7779ffd900059cb0a5bdc6d69b4f3eadf4f9ed11d" "a9711b81c3c56284f74a2d018957aa90e11d7ab18e9baf9b672513346c896ea4" "319539cfe83537924511b43e0e0cefa5675de4423013abf01c7f1c79c82870d4" "3b80926cc8c8fe32bf287b43bbb21998d9c7e5cb76906cbde1e19279c7bcfc7d" "1083079da3b70cb0594c1547ef30e34c15eef5e294fda40064bad02830c78303" "c433c87bd4b64b8ba9890e8ed64597ea0f8eb0396f4c9a9e01bd20a04d15d358" "82358261c32ebedfee2ca0f87299f74008a2e5ba5c502bde7aaa15db20ee3731" default)))
 '(helm-gtags-auto-update t)
 '(helm-gtags-ignore-case t)
 '(helm-gtags-path-style (quote relative))
 '(meghanada-server-jvm-option
   "-Xms128m -XX:ReservedCodeCacheSize=240m -XX:SoftRefLRUPolicyMSPerMB=50 -XX:+IgnoreUnrecognizedVMOptions -XX:-UseConcMarkSweepGC -ea -Dsun.io.useCanonCaches=false")
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
 '(nlinum-relative-redisplay-delay 0.1)
 '(package-selected-packages
   (quote
	(toml-mode bison-mode meghanada lsp-mode eglot racer cargo diminish tabbar all-the-icons neotree moe-theme company-quickhelp emmet-mode flycheck-rust rustic auctex skewer-mode lsp-ui company-jedi jedi-direx jedi eslint-fix company-flow flow-js2-mode tide spacemacs-theme smart-mode-line-atom-one-dark-theme smart-mode-line ample-theme rjsx-mode typescript-mode csharp-mode haskell-mode vue-mode solarized-theme nlinum-relative linum-relative dumb-jump exec-path-from-shell fold-dwim projectile use-package java-snippets java-imports yasnippet auto-complete php-mode pdf-tools auctex-latexmk latex-preview-pane company-auctex markdown-preview-mode markdown-mode ecb function-args ag flycheck-irony irony-eldoc company-irony rust-mode helm-gtags treemacs-evil magit anaconda-mode elpy web-mode)))
 '(racer-cmd "c:/Users/joshua/.cargo/bin/racer.exe")
 '(racer-command-timeout 0.5)
 '(racer-rust-src-path
   "c:/Users/joshua/.rustup/toolchains/stable-x86_64-pc-windows-msvc/lib/rustlib/src/rust/library")
 '(sml/theme (quote atom-one-dark))
 '(tabbar-auto-scroll-flag nil)
 '(tabbar-background-color "grey30")
 '(tabbar-mode t nil (tabbar))
 '(tabbar-separator (quote (3)))
 '(treemacs-width 30)
 '(typescript-indent-level 2)
 '(vue-html-color-interpolations t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(minimap-active-region-background ((t nil)))
 '(minimap-font-face ((t (:height 40 :family "Victor Mono"))))
 '(rustic-compilation-column ((t (:inherit compilation-column-number))))
 '(rustic-compilation-error ((t (:foreground "Red"))))
 '(rustic-compilation-line ((t (:foreground "LimeGreen"))))
 '(rustic-compilation-warning ((t (:foreground "DarkOrange"))))
 '(rustic-message ((t (:foreground "DodgerBlue"))))
 '(sml/filename ((t (:foreground "dodger blue"))))
 '(tabbar-button ((t (:inherit tabbar-default :background "gray30" :box nil))))
 '(tabbar-default ((t (:inherit variable-pitch :background "gray30" :foreground "grey75" :height 1.5))))
 '(tabbar-selected ((t (:inherit tabbar-default :foreground "white" :box (:line-width 1 :color "white" :style pressed-button) :weight bold))))
 '(tabbar-separator ((t (:inherit tabbar-default :background "grey30"))))
 '(tabbar-unselected ((t (:inherit tabbar-default :box 1)))))

;; Set some variables and env stuffs
(setenv "PATH" (concat (getenv "PATH") ":/usr/local/bin"))
(defvar system-type-as-string (prin1-to-string system-type))
(defvar on_windows_nt (string-match "windows-nt" system-type-as-string))
(defvar on_linux (string-match "gnu/linux" system-type-as-string))
;;(defvar on_mac (string-match "darwin" system-type-as-string)) ;; If I ever was on a mac. You never know, stranger things have happened.

;; Lets me define files to load
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

;; Load all external files to config
(load-user-file "sources.el")
(load-user-file "personal.el")
(load-user-file "evil.el")
(load-user-file "backups.el")
(load-user-file "web-mode.el")
(load-user-file "irony-hooks.el")
(load-user-file "rust.el")
(load-user-file "java.el")
(load-user-file "typescript.el")
(load-user-file "company.el")
(load-user-file "c-sharp.el")
(load-user-file "neotree.el")
(load-user-file "tabbar.el")
(load-user-file "themes.el")
(load-user-file "smartmodeline.el")
(load-user-file "latex.el")
(load-user-file "fonts.el")
(load-user-file "mmap.el")
(load-user-file "nlinum.el")
(load-user-file "dumb-jump-hooks.el")
(load-user-file "orgconfig.el")
