
;; cocoa emacs
(if (and (featurep 'ns)
         (display-graphic-p))
    (require 'init-cocoa))

;; linux and X window
(if (and (equal system-type 'gnu/linux)
	 (display-graphic-p))
    (require 'init-linux-x-window))

(provide 'init-system-dependent)
