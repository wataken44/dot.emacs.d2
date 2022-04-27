
(add-hook 'ruby-mode-hook
          (lambda ()
             (setq indent-tabs-mode nil)
             (setq ruby-indent-level 4)
             (setq ruby-deep-indent-paren nil)
             (setq ruby-deep-indent-paren-style nil)
             (setq ruby-deep-arglist nil)
             (define-key ruby-mode-map [return] 'ruby-reindent-then-newline-and-indent)
             ))

(provide 'init-ruby-mode)
