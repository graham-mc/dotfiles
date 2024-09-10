; Alter Emacs Defaults
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(load-theme 'deeper-blue t)
(setq inhibit-startup-screen t)
(blink-cursor-mode 0)
(setq ring-bell-function 'ignore)
(add-hook 'prog-mode-hook 'display-line-numbers-mode)
(cond
  ((eq system-type 'darwin)
    (set-face-attribute 'default nil :height 150))
  ((eq system-type 'gnu/linux)
    (set-face-attribute 'default nil :height 110)))
(cond
  ((eq system-type 'darwin)
    (setq ns-right-alternate-modifier (quote none))))

; Org Mode Configs
(require 'org)
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done t)
(setq org-todo-keywords '((sequence "TODO" "WAITING" "DOING" "DONE")))
