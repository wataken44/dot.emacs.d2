;;; init-html-mode.el --- 


(add-hook 'html-mode-hook
          (lambda ()
             (setq sgml-basic-offset 2)
             (setq indent-tabs-mode nil)))

(provide 'init-html-mode)
