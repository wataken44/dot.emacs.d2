
;; cocoa emacs
(if (and (featurep 'ns)
         (display-graphic-p))
    (require 'init-cocoa))

;; linux and X window
(if (and (equal system-type 'gnu/linux)
	 (display-graphic-p))
    (require 'init-linux-x-window))

;; cygwin emacs-w32
(if (and (equal system-type 'cygwin)
	 (display-graphic-p))
    (require 'init-cygwin-emacs-w32))

(provide 'init-system-dependent)
