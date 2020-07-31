(global-unset-key (kbd "M-x"))
(define-key key-translation-map (kbd "C-.") (kbd "C-x 4 ."))

(defun smart-open-line-above ()
  "Insert an empty line above the current line.
Position the cursor at it's beginning, according to the current mode."
  (interactive)
  (move-beginning-of-line nil)
  (newline-and-indent)
  (forward-line -1)
  (indent-according-to-mode))
(defun wenpin/split-window-right ()
  "split-window-right with right window having a max width of 100 columns"
  (interactive)
  (if (> (window-total-width) 200)
      (split-window-right -100)
    (if (> (window-total-width) 180)
        (split-window-right -90)
      (split-window-right))))
(defun wenpin/split-window-right-and-focus ()
  (interactive)
  (wenpin/split-window-right)
  (other-window 1))
(defun wenpin/ivy-switch-buffer-in-other-window ()
  (interactive)
  (call-interactively #'ivy-switch-buffer-other-window)
  (other-window 1))

;;; available punctuations
;; (global-set-key (kbd "C-;"))
;; (global-set-key (kbd "C-'"))
;; (global-set-key (kbd "C-."))
;; (global-set-key (kbd "C-="))
;; (global-set-key (kbd "C--"))
;; (global-set-key (kbd "M-="))
;; (global-set-key (kbd "M--"))
;;; Commands of these keybindings are almost never used, just rebind them
;; (global-set-key (kbd "C-l"))
;; (global-set-key (kbd "C-o"))
;; (global-set-key (kbd "C-z"))
;; (global-set-key (kbd "M-i"))
;; (global-set-key (kbd "M-j"))
;; (global-set-key (kbd "M-m"))
;; (global-set-key (kbd "M-r"))
;; (global-set-key (kbd "M-z"))
;;; C-M-x keybindings
;; (global-set-key (kbd "C-m-...") ...)
;;; abbrev keybindings which need to be research
;; (global-set-key (kbd "M-'"))
;; (global-set-key (kbd "M-/"))
;;; These keybindings are for English writing, which I rarely used,
;; So they are worth rebinding
;; (global-set-key (kbd "M-a"))
;; (global-set-key (kbd "M-c"))
;; (global-set-key (kbd "M-h"))
;; (global-set-key (kbd "M-l"))
;; (global-set-key (kbd "M-k"))
;; (global-set-key (kbd "M-q"))
;; (global-set-key (kbd "M-u"))
;;; 下面几种键位可能只能用于图形界面
;; F1 -- F12
;; menu
;; some win +
;; first class keybindings
(global-set-key (kbd "M-i") #'ace-window)
(global-set-key (kbd "M-o") #'smart-open-line-above)
(global-set-key (kbd "M-t") #'toggle-input-method)
(global-set-key (kbd "M-y") #'counsel-yank-pop)
;; C-c zone
(global-set-key (kbd "C-c a") #'org-agenda)
(global-set-key (kbd "C-c c") #'org-capture)
;;; M-Spc 2 key strokes zone
;; (global-set-key (kbd "M-SPC SPC") #'wenpin/snails)
(global-set-key (kbd "M-SPC SPC") #'counsel-M-x)
(global-set-key (kbd "M-SPC ^") #'dired-jump)
(global-set-key (kbd "M-SPC u") #'universal-argument)
(global-set-key (kbd "M-SPC v") #'er/expand-region)
;;; M-SPC 3 key strokes zone
(global-set-key (kbd "M-SPC F F") #'find-function-other-window)
(global-set-key (kbd "M-SPC F f") #'find-function)
(global-set-key (kbd "M-SPC b B") #'ivy-switch-buffer-other-window)
(global-set-key (kbd "M-SPC B B") #'wenpin/ivy-switch-buffer-in-other-window)
(global-set-key (kbd "M-SPC b b") #'ivy-switch-buffer)
(global-set-key (kbd "M-SPC b j") #'counsel-bookmark)
(global-set-key (kbd "M-SPC b k") #'kill-buffer)
(global-set-key (kbd "M-SPC b o") #'eaf-open-browser)
(global-set-key (kbd "M-SPC b r") #'eaf-open-browser-with-history)
(global-set-key (kbd "M-SPC b s") #'bookmark-set)
(global-set-key (kbd "M-SPC d m") #'woman)
(global-set-key (kbd "M-SPC f F") #'find-file-other-window)
(global-set-key (kbd "M-SPC f F") #'find-file-other-window)
(global-set-key (kbd "M-SPC f V") #'find-variable-other-window)
(global-set-key (kbd "M-SPC f f") #'find-file)
(global-set-key (kbd "M-SPC f f") #'find-file)
(global-set-key (kbd "M-SPC f r") #'counsel-recentf)
(global-set-key (kbd "M-SPC f v") #'find-variable)
(global-set-key (kbd "M-SPC g L") #'git-link)
(global-set-key (kbd "M-SPC g g") #'avy-goto-char-timer)
(global-set-key (kbd "M-SPC g l") #'avy-goto-line)
(global-set-key (kbd "M-SPC g s") #'magit-status)
(global-set-key (kbd "M-SPC g w") #'avy-goto-word-0)
(global-set-key (kbd "M-SPC h f") #'hi-lock-find-patterns)
(global-set-key (kbd "M-SPC h l") #'highlight-lines-matching-regexp)
(global-set-key (kbd "M-SPC h p") #'highlight-phrase)
(global-set-key (kbd "M-SPC h r") #'highlight-regexp)
(global-set-key (kbd "M-SPC h s") #'highlight-symbol-at-point)
(global-set-key (kbd "M-SPC h u") #'unhighlight-regexp)
(global-set-key (kbd "M-SPC h w") #'hi-lock-write-interactive-patterns)
(global-set-key (kbd "M-SPC n n") #'org-roam-find-file)
(global-set-key (kbd "M-SPC n N") #'org-roam-find-file-immediate)
(global-set-key (kbd "M-SPC p f") #'projectile-find-file)
(global-set-key (kbd "M-SPC p t") #'magit-todos-list)
(global-set-key (kbd "M-SPC q q") #'save-buffers-kill-terminal)
(global-set-key (kbd "M-SPC s P") #'color-rg-search-symbol-in-project)
(global-set-key (kbd "M-SPC s p") #'color-rg-search-input-in-project)
(global-set-key (kbd "M-SPC T p") #'ivy-posframe-mode)
(global-set-key (kbd "M-SPC t t") #'dap-java-run-test-method)
(global-set-key (kbd "M-SPC w D") #'delete-other-windows)
(global-set-key (kbd "M-SPC w S") #'wenpin/split-window-right-and-focus)
(global-set-key (kbd "M-SPC w V") (defun wenpin/split-window-and-focus () (interactive) (split-window-below) (other-window 1)))
(global-set-key (kbd "M-SPC w X") (defun wenpin/swap-window-and-focus () (interactive) (window-swap-states) (other-window 1)))
(global-set-key (kbd "M-SPC w d") #'delete-window)
(global-set-key (kbd "M-SPC w r") #'winner-redo)
(global-set-key (kbd "M-SPC w s") #'wenpin/split-window-right)
(global-set-key (kbd "M-SPC w u") #'winner-undo)
(global-set-key (kbd "M-SPC w v") #'split-window-below)
(global-set-key (kbd "M-SPC w x") #'window-swap-states)
(global-set-key (kbd "M-SPC z H") #'hs-hide-all)
(global-set-key (kbd "M-SPC z S") #'hs-show-all)
(global-set-key (kbd "M-SPC z h") #'hs-hide-block)
(global-set-key (kbd "M-SPC z s") #'hs-show-block)
(global-set-key (kbd "M-SPC z z") #'hs-toggle-hiding)
(global-set-key [remap comment-dwim] #'comment-line)
(global-set-key [remap paredit-comment-dwim] #'comment-line)
