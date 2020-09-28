

(set-language-environment "Japanese")

(setq w32-enable-synthesized-fonts t)

;;表示確認用
;;01234567890123456789
;;あいうえおかきくけこ
;;アイウエオカキクケコ
;;一二三四五
;;△±Ⅵ

; 本当はfontsetとかまじめに作らないといけないんだけどまずはこれで

; use MS Gothic 16pt by default
(set-face-attribute 'default nil
                    :family "MS Gothic"
                    :height 160)

; load tr-emacs-ime
(when (and (eq window-system 'w32)
           (not (fboundp 'ime-get-mode))
           (string= module-file-suffix ".dll")
           (locate-library "tr-ime-module-helper"))
  (require 'tr-ime-module-helper)
  (require 'w32-ime "w32-ime-for-tr-ime-module"))

;; IME パッチ無しモジュール有りならば Module2 をロードする
(when (and (eq window-system 'w32)
           (not (fboundp 'ime-get-mode))
           (string= module-file-suffix ".dll")
           (locate-library "tr-ime-module2-helper"))
  (require 'tr-ime-module2-helper)
  (require 'w32-ime "w32-ime-for-tr-ime-module"))

;; IM のデフォルトを IME に設定
(setq default-input-method "W32-IME")
;; IME のモードライン表示設定
(setq-default w32-ime-mode-line-state-indicator "[--]")
(setq w32-ime-mode-line-state-indicator-list '("[--]" "[あ]" "[--]"))
;; IME 初期化
(w32-ime-initialize)
;; IME 制御（yes/no などの入力の時に IME を OFF にする）
(wrap-function-to-control-ime 'universal-argument t nil)
(wrap-function-to-control-ime 'read-string nil nil)
(wrap-function-to-control-ime 'read-char nil nil)
(wrap-function-to-control-ime 'read-from-minibuffer nil nil)
(wrap-function-to-control-ime 'y-or-n-p nil nil)
(wrap-function-to-control-ime 'yes-or-no-p nil nil)
(wrap-function-to-control-ime 'map-y-or-n-p nil nil)


(modify-all-frames-parameters '((ime-font . "MS Gothic-16")))


(provide 'init-cygwin-emacs-w32)
