
; add .emacs.d/init.d, .emacs.d/my-lisp to load-path
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
(require 'init-uniquify)

