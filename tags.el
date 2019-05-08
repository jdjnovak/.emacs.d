;; For Helm-gtags
(add-hook 'c-mode-hook 'helm-gtags-mode)
(add-hook 'c++-mode-hook 'helm-gtags-mode)

(custom-set-variables
 '(helm-gtags-path-style 'relative)
 '(helm-gtags-ignore-case t)
 '(helm-gtags-auto-update t))

;; Key bindings
(with-eval-after-load 'helm-gtags
  (define-key helm-gtags-mode-map (kbd "C-u C-t") 'helm-gtags-find-tag)
  (define-key helm-gtags-mode-map (kbd "C-u C-r") 'helm-gtags-find-rtag)
  (define-key helm-gtags-mode-map (kbd "C-u C-s") 'helm-gtags-find-symbol)
  (define-key helm-gtags-mode-map (kbd "C-u C-<") 'helm-gtags-previous-history)
  (define-key helm-gtags-mode-map (kbd "C-u C->") 'helm-gtags-next-history)
  (define-key helm-gtags-mode-map (kbd "C-u C-p") 'helm-gtags-parse-file)
  (define-key helm-gtags-mode-map (kbd "C-u C-d") 'helm-gtags-dwim))
