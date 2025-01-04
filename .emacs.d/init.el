;; This assumes you cloned Crafted Emacs in you home directory.
(load "~/crafted-emacs/modules/crafted-init-config")
(package-install-selected-packages :noconfirm)
(require 'crafted-defaults-config)
(require 'crafted-osx-config)
(require 'crafted-completion-packages)
(package-install-selected-packages :noconfirm)
(require 'crafted-completion-config)

(blink-cursor-mode 0)
(add-hook 'prog-mode-hook 'display-line-numbers-mode)
(add-hook 'text-mode-hook 'auto-fill-mode)
(setq ring-bell-function 'ignore)
(setq inhibit-startup-screen t)
(setq suggest-key-bindings 5)

;; Ace Window
(use-package ace-window
  :ensure t)
(global-set-key (kbd "M-o") 'ace-window)
(setq aw-keys '(?a ?s ?d ?f ?g ?h ?j ?k ?l))

;; Org
(use-package org
  :ensure t)
(add-hook 'org-mode-hook 'auto-fill-mode)
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done t)
(setq org-todo-keywords '((sequence "TODO" "DOING" "DONE")))
(setq org-todo-keyword-faces
      '(("DOING" . (:inherit warning :weight bold))))

;; Magit
(use-package magit
  :ensure t)

;; Rust
(use-package rust-mode
  :ensure t)
