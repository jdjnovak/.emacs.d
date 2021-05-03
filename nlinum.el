(require 'nlinum-relative)
(nlinum-relative-setup-evil)
(add-hook 'prog-mode-hook 'nlinum-relative-mode)
(setq nlinum-relative-redisplay-delay 0.0)
(setq nlinum-relative-current-symbol "")
(setq nlinum-relative-offset 0)

(global-set-key (kbd "C-c n r") 'nlinum-relative-on)
(global-set-key (kbd "C-c n n") 'nlinum-relative-off)
