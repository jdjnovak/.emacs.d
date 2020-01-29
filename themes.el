(setq nord-uniform-mode-lines t)

(defun to-dark()
  (interactive)
  (load-theme 'nord))

(defun to-light()
  (interactive)
  (load-theme 'solarized-light))

;; Start with a light theme
(load-theme 'solarized-light)
;;(set-frame-parameter (selected-frame) 'alpha '(90 90))
;;(add-to-list 'default-frame-alist '(alpha 90 90))
