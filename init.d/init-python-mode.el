
(add-hook 'python-mode-hook
          '(lambda ()
             (setq tab-width 4)
             (setq indent-tabs-mode nil)
             ))

(provide 'init-python-mode)
