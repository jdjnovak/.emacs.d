(add-hook 'c++-mode-hook 'irony-mode)
(add-hook 'c-mode-hook 'irony-mode)

;; Windows tweaks cause windows
(cond (on_windows_nt
	   (when (boundp 'w32-pipe-read-delay)
		 (setq w32-pipe-read-delay 0))
	   (when (boundp 'w32-pipe-buffer-size)
		 (setq irony-server-w32-pipe-buffer-size (* 64 1024)))
	   ))
