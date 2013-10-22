
;; pretty jump;
;; from http://d.hatena.ne.jp/h1mesuke/20070729/p1
(defun pretty-beginning-of-line ()
  "Move point to beginning of current line.
If point is already at the beginning of line, move point to the first
non-whitespace character on this line."
  (interactive)
  (if (bolp) (skip-syntax-forward "-")
    (beginning-of-line)))

(defun pretty-end-of-line ()
  "Move point to end of current line.
If point is already at the end of line, move point to the last
non-whitespace character on this line."
  (interactive)
  (if (eolp) (skip-syntax-backward "-")
    (end-of-line)))

(provide 'pretty-jump-of-line)
