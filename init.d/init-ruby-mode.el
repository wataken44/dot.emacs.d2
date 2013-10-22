
(add-hook 'ruby-mode-hook
          '(lambda ()
             (setq indent-tabs-mode nil)
             (setq ruby-indent-level 4)
             ))

(provide 'init-ruby-mode)
