
(require 'helm-config)

;; enable helm-mode
(helm-mode 1)

;; imported from http://fukuyama.co/nonexpansion
;; disable auto completion
(custom-set-variables '(helm-ff-auto-update-initial-value nil))

;; complete with tab
(define-key helm-read-file-map (kbd "TAB") 'helm-execute-persistent-action)

(provide 'init-helm)
