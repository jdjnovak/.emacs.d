(use-package evil
  :straight t
  :demand t
  :custom
  (evil-want-keybinding nil)
  :config
  (evil-mode 1))

(use-package evil-collection
  :straight t
  :demand t
  :after evil
  :config
  (evil-collection-init))

;; THANKS to https://github.com/emacs-evil/evil-collection/issues/266
