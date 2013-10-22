
; short cut
(global-set-key "\C-cg" 'goto-line)
(global-set-key "\C-cr" 'replace-string)
(global-set-key "\C-c\C-r" 'query-replace)
(global-set-key "\C-cR" 'replace-regexp)
(global-set-key (kbd "<C-tab>") 'switch-to-user-buffer-next)
(global-set-key (kbd "<C-S-tab>") 'switch-to-user-buffer-previous)
(global-set-key "\C-t" 'switch-to-user-buffer-next)
(global-set-key "\C-q" 'other-window)
(global-set-key "\C-a" 'pretty-beginning-of-line)
(global-set-key "\C-e" 'pretty-end-of-line)

(provide 'init-keybind)
