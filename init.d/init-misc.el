
; use tango-dark color-theme
(if (functionp 'load-theme)
    (load-theme 'tango-dark))

;; disable tool/menu bar
(if (functionp 'tool-bar-mode)
    (tool-bar-mode 0))
(if (functionp 'menu-bar-mode)
    (menu-bar-mode 0))

;; enable font lock mode
(global-font-lock-mode t)

;; use japanese, UTF-8
(set-language-environment "Japanese")
(set-default-coding-systems 'utf-8)
(prefer-coding-system 'utf-8)

;; do not show startup message
(setq inhibit-startup-message t)

;; ignore case when completion
(setq completion-ignore-case t)

;; require newline at EOF
(setq require-final-newline t)

; region mark visible
(setq-default transient-mark-mode t)

; tab width 
(setq-default tab-width 4)

; do not use tab by default
(setq-default indent-tabs-mode nil)

;; emphasize paren
(if (functionp 'show-paren-mode)
    (show-paren-mode 1))

;; disable cursor blink
(if (functionp 'blink-cursor-mode)
    (blink-cursor-mode 0))

;; show cursor-position
(if (functionp 'column-number-mode)
    (column-number-mode t))
(if (functionp 'line-number-mode)
    (line-number-mode t))

;; display file size
(if (functionp 'size-indication-mode)
    (size-indication-mode t))

;; disable vc-git
(setq vc-handled-backends ())

;; start emacs server
(require 'server)
(unless (server-running-p)
  (server-start))

(provide 'init-misc)
