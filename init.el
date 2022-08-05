;;;;
;;;; Test Emacs Config 1
;;;;

;; No splash screen
(setq inhibit-startup-message t)

;; Get rid of unneeded UI
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

;; Display line numbers all the time
(global-display-line-numbers-mode 1)

;; minibuf history
(setq history-length 25)
(savehist-mode 1)

;; No UI popup for dialogs
(setq use-dialog-box nil)

;; Auto refresh files and non-file buffers
(global-auto-revert-mode 1)
(setq global-auto-revert-non-file-buffers t)

;;;; Straight.el
;; Got from the github page for straight.el
(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 5))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
	(url-retrieve-synchronously
	 "https://raw.githubusercontent.com/raxod502/straight.el/develop/install.el"
	 'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

(straight-use-package 'use-package)

;;;; load my other files
(mapc 'load (file-expand-wildcards "~/.emacs.d/config/*.el"))
