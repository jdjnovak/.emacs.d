;(setq nord-uniform-mode-lines t)

; Unused
(defun to-dark()
  (interactive)
  (load-theme 'ample-theme))

; Unused
(defun to-light()
  (interactive)
  (load-theme 'solarized-light))

(defun set-gui-options ()
	(load-theme 'moe-dark)
    (set-frame-parameter (selected-frame) 'alpha '(90 . 90))
    (add-to-list 'default-frame-alist '(alpha 90 . 90)))
  
(if (display-graphic-p)
	(set-gui-options))
