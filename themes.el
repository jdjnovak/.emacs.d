(set-face-font 'italic "-CTDB-Firicico-normal-italic-normal-*-*-*-*-*-*-0-iso10646-1")
(setq nord-uniform-mode-lines t)

(defun to-dark()
  (interactive)
  (load-theme 'ample-theme))

(defun to-light()
  (interactive)
  (load-theme 'solarized-light))

(defun set-gui-options ()
	(load-theme 'spacemacs-dark)
    (set-frame-parameter (selected-frame) 'alpha '(90 . 75))
    (add-to-list 'default-frame-alist '(alpha 90 . 75)))
  

;; Start with a light theme if GUI
(if (display-graphic-p)
	(set-gui-options))
;(load-theme 'solarized-light)
;;(set-frame-parameter (selected-frame) 'alpha '(90 90))
;;(add-to-list 'default-frame-alist '(alpha 90 90))
