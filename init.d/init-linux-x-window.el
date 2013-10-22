
;; set font
(set-frame-font "-*-Takaoゴシック-*-*-*-*-18-*-*-*-*-*-*-*")
(setq x-select-enable-clipboard t)

(setq quail-japanese-use-double-n t)

(require 'mozc)
(setq default-input-method "japanese-mozc")
(setq mozc-candidate-style 'echo-area)

(global-set-key (kbd "C-/") 'toggle-input-method)

(provide 'init-linux-x-window)
