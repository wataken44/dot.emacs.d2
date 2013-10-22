
(setq quail-japanese-use-double-n t)

(require 'mozc)
(setq default-input-method "japanese-mozc")
(setq mozc-candidate-style 'echo-area)

(global-set-key (kbd "<C-slash>") 'toggle-input-method)

(provide 'init-linux-x-window)
