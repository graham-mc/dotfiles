(load-theme 'deeper-blue t)
(cond
 ((eq system-type 'darwin)
  (set-face-attribute 'default nil :height 150))
 ((eq system-type 'gnu/linux)
  (set-face-attribute 'default nil :height 110)))
