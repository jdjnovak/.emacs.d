;; https://reddit.com/r/emacs/comments/cw96wp/my_emacs26_setup_for_rust/

;; Start with flycheck
(use-package flycheck :ensure t)
(use-package flycheck-rust :ensure t)
(use-package rust-mode :ensure t
  :config
  (setq rust-format-on-save t))

;; Set up racer
(use-package racer :ensure t
  :config
  (progn
	(add-hook 'rust-mode-hook #'racer-mode)
	(add-hook 'racer-mode-hook #'eldoc-mode)
	(add-hook 'racer-mode-hook #'company-mode)))

;; Set up company
(use-package company :ensure t
  :config
  (setq company-idle-delay 0.2)
  (add-hook 'racer-mode-hook
			(lambda ()
			  (setq-local company-tooltip-align-annotations t))))

;; Enable cargo minor mode for cargo commands
(use-package cargo :ensure t
  :config
  (progn
	(add-hook 'rust-mode-hook 'cargo-minor-mode)
	(add-hook 'toml-mode-hook 'cargo-minor-mode)))

(add-hook 'after-init-hook #'global-flycheck-mode)

;; Flycheck rust support
(add-hook 'flycheck-mode-hook #'flycheck-rust-setup)
;; Flycheck end

;; Path to rust source
(when (equal system-type 'gnu/linux)
  (setq racer-rust-src-path (concat (getenv "HOME") "/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library")))
(when (equal system-type 'windows-nt)
  (setq racer-rust-src-path (concat (getenv "HOME") "/.rustup/toolchains/stable-x86_64-pc-windows-msvc/lib/rustlib/src/rust/library")))

;; Racer bin
(setq racer-cmd "c:/Users/joshua/.cargo/bin/racer")

;; TAB Completion
(local-set-key (kbd "TAB") 'company-indent-or-complete-common)
(setq company-tooltip-align-annotations t)

;; END ;;
