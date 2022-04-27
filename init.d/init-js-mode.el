
(add-hook 'js-mode-hook
          (lambda ()
             (setq indent-tabs-mode nil)
             (setq js-indent-level 2)
             ))

(provide 'init-js-mode)
