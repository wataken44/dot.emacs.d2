
; define function
; compare buffer with buffer-name
; used in next-user-buffer
(defun buffer-name-less (left-buffer right-buffer)
  (string< (buffer-name left-buffer) (buffer-name right-buffer)))

;; exceptional buffer to be switched
(setq stub-special-buffer-alist '("*shell*" "*scratch*"))

; switch to next user's buffer
; name of user's buffer start with [^ *] 
(defun switch-to-user-buffer (switch-dir)
  (let* (
        ;; sort buffer-list
        (sorted-buffer-alist (sort (buffer-list) 'buffer-name-less))
        ;; get current buffer index in sorted buffer-list
        (buffer-list-length (length sorted-buffer-alist)) 
        (current-buffer-index 
         (- buffer-list-length
            (length (member (current-buffer) sorted-buffer-alist))))
        )
    ;; search and jump to next user buffer
    ;; start from current-buffer-index + switch-dir and wrap around
    (dotimes (i buffer-list-length)
      (let* (
            (buffer-index
             (% (+ current-buffer-index
                   buffer-list-length
                   (* (+ 1 i) switch-dir)) 
                buffer-list-length))
            (dest-buffer (nth buffer-index sorted-buffer-alist))
            (dest-buffer-name (buffer-name dest-buffer))
            )
        (if (or (string-match-p "^[^ *]" dest-buffer-name)
                (member dest-buffer-name stub-special-buffer-alist))
            (progn (switch-to-buffer dest-buffer)
                   (return t)))
        )
      )))

;; switch forward
(defun switch-to-user-buffer-next ()
  (interactive)
  (progn (switch-to-user-buffer 1)))

;; switch backward
(defun switch-to-user-buffer-previous ()
  (interactive)
  (progn (switch-to-user-buffer -1)))

(provide 'switch-to-user-buffer)
