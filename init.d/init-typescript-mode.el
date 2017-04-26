
(require 'typescript-mode)

(add-to-list 'auto-mode-alist '("\\.ts\\'" . typescript-mode))

(add-hook 'typescript-mode-hook
          '(lambda ()
             (setq indent-tabs-mode nil)
             ))

(provide 'init-typescript-mode)
