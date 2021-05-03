;; If on Windows, do this fix
(cond (on_windows_nt
	   (setq inhibit-compacting-font-caches t)
	   ))

;; Set the icons if display is graphical
(setq neo-theme (if (display-graphic-p) 'icons 'arrow))

;; Just reusing the same key I used for treemacs
(global-set-key (kbd "C-x t t") 'neotree)

;; Suggested bindings from the github
(evil-define-key 'normal neotree-mode-map (kbd "TAB") 'neotree-enter)
(evil-define-key 'normal neotree-mode-map (kbd "RET") 'neotree-enter)
(evil-define-key 'normal neotree-mode-map (kbd "SPC") 'neotree-quick-look)
(evil-define-key 'normal neotree-mode-map (kbd "q") 'neotree-hide)
(evil-define-key 'normal neotree-mode-map (kbd "g") 'neotree-refresh)
(evil-define-key 'normal neotree-mode-map (kbd "n") 'neotree-next-line)
(evil-define-key 'normal neotree-mode-map (kbd "p") 'neotree-previous-line)
(evil-define-key 'normal neotree-mode-map (kbd "A") 'neotree-stretch-toggle)
(evil-define-key 'normal neotree-mode-map (kbd "H") 'neotree-hidden-file-toggle)
