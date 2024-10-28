; Defaults
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(load-theme 'deeper-blue t)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(blink-cursor-mode 0)
(winner-mode 1)
(add-hook 'prog-mode-hook 'display-line-numbers-mode)
(add-hook 'text-mode-hook 'auto-fill-mode)
(setq ring-bell-function 'ignore)
(setq inhibit-startup-screen t)
(setq suggest-key-bindings 5)
(cond
  ((eq system-type 'darwin)
    (set-face-attribute 'default nil :height 150))
  ((eq system-type 'gnu/linux)
    (set-face-attribute 'default nil :height 110)))
(cond
  ((eq system-type 'darwin)
    (setq ns-right-alternate-modifier (quote none))))

; Ace Window
(use-package ace-window
  :ensure t)
(global-set-key (kbd "M-o") 'ace-window)
(setq aw-keys '(?a ?s ?d ?f ?g ?h ?j ?k ?l))

; Org
(use-package org
  :ensure t)
(add-hook 'org-mode-hook 'auto-fill-mode)
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done t)
(setq org-todo-keywords '((sequence "TODO" "DOING" "DONE")))
(setq org-todo-keyword-faces
      '(("DOING" . (:inherit warning :weight bold))))

; Ivy
(use-package counsel
  :ensure t)
(ivy-mode 1)
(setq ivy-use-virtual-buffers t)
(setq ivy-count-format "(%d/%d) ")

; Magit
(use-package magit
  :ensure t)
