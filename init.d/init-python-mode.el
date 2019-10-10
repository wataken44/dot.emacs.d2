
(add-hook 'python-mode-hook
          '(lambda ()
             (setq tab-width 4)
             (setq indent-tabs-mode nil)
             ))

(if (= 0 (shell-command "which black 2>&1 > /dev/null"))
    (progn 
      (require 'blacken)
      (add-hook 'python-mode-hook 'blacken-mode)
      )
  )


(provide 'init-python-mode)
