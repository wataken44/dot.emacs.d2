
(require 'auto-complete-config)

(ac-config-default)

;; Generic setup.
(global-auto-complete-mode t)           ;enable global-mode
(setq ac-auto-start 3)                  ;automatically start with 3 chars
(setq ac-dwim t)                        ;Do what i mean

;; The mode that automatically startup.
(setq ac-modes
      '(emacs-lisp-mode
	lisp-interaction-mode lisp-mode scheme-mode
	c-mode cc-mode c++-mode java-mode
	perl-mode cperl-mode python-mode ruby-mode
	ecmascript-mode javascript-mode php-mode css-mode
	makefile-mode sh-mode fortran-mode f90-mode ada-mode
	xml-mode sgml-mode
	haskell-mode literate-haskell-mode
	emms-tag-editor-mode
	asm-mode
	org-mode))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; Lisp mode ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(dolist (hook (list
               'emacs-lisp-mode-hook
               'lisp-interaction-mode
               ))
  (add-hook hook '(lambda ()
                    (add-to-list 'ac-sources 'ac-source-symbols))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; C-common-mode ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Enables omnicompletion with `c-mode-common'.
(add-hook 'c-mode-common-hook
          '(lambda ()
             (add-to-list 'ac-omni-completion-sources
                          (cons "\\." '(ac-source-semantic)))
             (add-to-list 'ac-omni-completion-sources
                          (cons "->" '(ac-source-semantic)))
             (add-to-list 'ac-sources 'ac-source-gtags)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; C++-mode ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Keywords.
(add-hook 'c++-mode-hook '(lambda ()
                            (add-to-list 'ac-sources 'ac-c++-sources)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; Haskell mode ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Keywords.
(add-hook 'haskell-mode-hook '(lambda ()
                                (add-to-list 'ac-sources 'ac-source-haskell)))

(provide 'init-auto-complete-config)
