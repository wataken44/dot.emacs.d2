
(require 'helm-config)

;; enable helm-mode
(helm-mode 1)

;; imported from http://fukuyama.co/nonexpansion
;; disable auto completion
(custom-set-variables '(helm-ff-auto-update-initial-value nil))

;; complete with tab
(define-key helm-read-file-map (kbd "TAB") 'helm-execute-persistent-action)

;; edit font face
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(helm-source-header ((t (:background "#22083397778B" :foreground "white")))))

(provide 'init-helm)
