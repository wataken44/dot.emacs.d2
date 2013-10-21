
; add .emacs.d/init.d to load-path
(setq load-path 
      (cons (expand-file-name "~/.emacs.d/init.d/")
	    load-path))

; initialize elpa
(require 'init-elpa)

; add .emacs.d/elpa subdirectories to load-path
(progn (cd "~/.emacs.d/elpa/")
       (if (fboundp 'normal-top-level-add-subdirs-to-load-path)
           (normal-top-level-add-subdirs-to-load-path)))

(add-hook 'after-init-hook
	  (lambda ()
	    (require 'init-helm)
	    (require 'init-google-c-style)
	    (require 'init-auto-complete-config)
	    ))

(progn (cd "~"))

