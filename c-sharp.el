(add-to-list 'auto-mode-alist '("\\.cs\\'" . csharp-mode))
(setq lsp-keymap-prefix "C-c C-l")

(require 'lsp-mode)
(add-hook 'csharp-mode-hook 'lsp)
