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
	(load-theme 'afternoon)
    (set-frame-parameter (selected-frame) 'alpha '(90 . 75))
    (add-to-list 'default-frame-alist '(alpha 90 . 75)))
  
(if (display-graphic-p)
	(set-gui-options))
