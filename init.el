
; add .emacs.d/init.d, .emacs.d/my-lisp to load-path

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(add-to-list 'load-path (expand-file-name "~/.emacs.d/init.d/"))
(add-to-list 'load-path (expand-file-name "~/.emacs.d/my-lisp/"))

; add .emacs.d/site-lisp/ and .emacs.d/elpa/ subdirectories to load-path
(dolist (dir '("~/.emacs.d/site-lisp/" "~/.emacs.d/elpa/"))
  (let ((default-directory dir))
    (if (fboundp 'normal-top-level-add-subdirs-to-load-path)
        (normal-top-level-add-subdirs-to-load-path)))
  )


(require 'init-misc)
(require 'init-system-dependent)

; initialize elpa
(require 'init-elpa)

;; directly require my library
(require 'pretty-jump-of-line)
(require 'switch-to-user-buffer)

;; directly require elpa library
(require 'yasnippet)

;; custom require
(require 'init-keybind)

(require 'init-auto-complete-config)
(require 'init-google-c-style)
(require 'init-helm)
(require 'init-auto-insert)
(require 'init-flymake)

(require 'init-go-mode)
(require 'init-html-mode)
(require 'init-js-mode)
(require 'init-python-mode)
(require 'init-ruby-mode)
(require 'init-octave-mode)
(require 'init-typescript-mode)
(require 'init-uniquify)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(helm-ff-auto-update-initial-value nil)
 '(package-selected-packages
   (quote
    (blacken google-c-style go-snippets go-autocomplete deferred))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(helm-source-header ((t (:background "#22083397778B" :foreground "white")))))
