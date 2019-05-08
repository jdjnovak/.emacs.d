;; Basic things I'd like, i.e. remove UI and add the clock
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(display-time-mode 1)

;; LINE NUMBERS PL0X
(global-linum-mode 1)

;; Variable for the current time
(setq time
      (substring (current-time-string) 11 13))

(defun to-dark()
  (interactive)
  (load-theme 'misterioso))

(defun to-light()
  (interactive)
  (load-theme 'tango))

;; Start with a light theme
(load-theme 'tango)

;; KEYBINDINGS
(global-set-key (kbd "<f12>") 'to-dark)
(global-set-key (kbd "C-x <f12>") 'to-light)
(global-set-key (kbd "<f11>") 'evil-mode)

;; GDB Many Windows
(setq gdb-many-windows t
      gdb-show-main t)

;; Tab width
(setq-default tab-width 4)

;; Indentation for C/C++
(setq c-default-style "k&r"
      c-basic-offset 4)
