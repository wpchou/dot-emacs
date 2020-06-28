;;; set up variables not categorised
(setq create-lockfiles nil
      delete-by-moving-to-trash t
      mac-command-modifier 'super
      mac-option-modifier 'meta
      nsm-trust-local-network t
      visible-bell t)
(setq-default indent-tabs-mode nil
	      line-spacing 0.2
              mode-line-format '(
                                 "%e"
                                 mode-line-front-space
                                 mode-line-mule-info
                                 mode-line-position
                                 (vc-mode vc-mode)
                                 mode-line-modes
                                 mode-line-buffer-identification
                                 mode-line-misc-info
                                 mode-line-end-spaces)
              frame-title-format '(buffer-file-name "%f" "%b"))


;;; fonts and faces
(setq wenpin/font-default-height
      (cond
       ((string-equal (getenv "HOME") "/Users/wenpin") 180)
       ((string-match "xps" (or (getenv "DESKTOP_STARTUP_ID") "")) 108)
       (t 112)))
;; default font
(set-face-attribute 'default nil :family "JetBrains Mono" :height wenpin/font-default-height)
;; fallback font
(set-fontset-font t nil "Courier New" nil 'append)
;; specific glyphs
;; (set-fontset-font t ?😊 "Segoe UI Emoji")
;; glyphs range
;; (set-fontset-font t '(?😊 . ?😎) "Segoe UI Emoji")
(set-fontset-font t 'han "Source Han Sans CN")
;; han fallback font
(set-fontset-font t 'han "Noto Sans CJK SC" nil 'append)
;; search font for han if both fonts above can't be found
(set-fontset-font t 'han (font-spec :script 'han) nil 'append)
;; other cjk
(set-fontset-font t 'kana "Noto Sans CJK JP")
(set-fontset-font t 'hangul "Noto Sans CJK KR")
(set-fontset-font t 'cjk-misc "Noto Sans CJK SC")
;; other faces
(set-face-attribute 'fixed-pitch nil :family "Source Code Pro")
(set-face-attribute 'fixed-pitch-serif nil :family "Iosevka Slab Extended")
;; using Noto Sans CJK to stop hight changing of tab-bar
(set-face-attribute 'variable-pitch nil :family "Noto Sans CJK SC")
