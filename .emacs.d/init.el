; Defaults
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(load-theme 'deeper-blue t)
(setq inhibit-startup-screen t)
(tool-bar-mode -1)
(blink-cursor-mode 0)
(setq ring-bell-function 'ignore)
(add-hook 'prog-mode-hook 'display-line-numbers-mode)
(cond
  ((eq system-type 'darwin)
    (set-face-attribute 'default nil :height 150))
  ((eq system-type 'gnu/linux)
    (set-face-attribute 'default nil :height 110)))

; Org
(use-package org
  :ensure t)
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done t)
(setq org-todo-keywords '((sequence "TODO" "DOING" "DONE")))

; Ivy
(use-package counsel
  :ensure t
  :commands ivy-mode)
(setq ivy-use-virtual-buffers t)
(setq ivy-count-format "(%d/%d) ")

; Magit
(use-package magit
  :ensure t)
