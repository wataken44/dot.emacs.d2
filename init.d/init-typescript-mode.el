
(require 'typescript-mode)

(add-to-list 'auto-mode-alist '("\\.ts\\'" . typescript-mode))

(add-hook 'typescript-mode-hook
          (lambda ()
             (setq indent-tabs-mode nil)
             (setq typescript-indent-level 2)
             ))

(provide 'init-typescript-mode)
