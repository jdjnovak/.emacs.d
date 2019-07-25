(setq nord-uniform-mode-lines t)

(defun to-dark()
  (interactive)
  (load-theme 'nord))

(defun to-light()
  (interactive)
  (load-theme 'tango))

;; Start with a light theme
(load-theme 'nord)
