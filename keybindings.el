(global-unset-key (kbd "M-x"))

(defun smart-open-line-above ()
  "Insert an empty line above the current line.
Position the cursor at it's beginning, according to the current mode."
  (interactive)
  (move-beginning-of-line nil)
  (newline-and-indent)
  (forward-line -1)
  (indent-according-to-mode))

(global-set-key (kbd "C-M-s") 'swiper-thing-at-point)
(global-set-key (kbd "C-c a") 'org-agenda)
(global-set-key (kbd "C-c c") 'org-capture)
(global-set-key (kbd "C-s") 'swiper)
(global-set-key (kbd "M-SPC F F") 'find-function-other-window)
(global-set-key (kbd "M-SPC F f") 'find-function)
(global-set-key (kbd "M-SPC SPC") 'counsel-M-x)
(global-set-key (kbd "M-SPC ^") #'dired-jump)
(global-set-key (kbd "M-SPC b B") 'ivy-switch-buffer-other-window)
(global-set-key (kbd "M-SPC b b") 'ivy-switch-buffer)
(global-set-key (kbd "M-SPC b j") 'counsel-bookmark)
(global-set-key (kbd "M-SPC b k") 'kill-buffer)
(global-set-key (kbd "M-SPC b s") 'bookmark-set)
(global-set-key (kbd "M-SPC d m") 'woman)
(global-set-key (kbd "M-SPC f F") 'find-file-other-window)
(global-set-key (kbd "M-SPC f F") 'find-file-other-window)
(global-set-key (kbd "M-SPC f V") 'find-variable-other-window)
(global-set-key (kbd "M-SPC f f") 'find-file)
(global-set-key (kbd "M-SPC f f") 'find-file)
(global-set-key (kbd "M-SPC f r") 'counsel-recentf)
(global-set-key (kbd "M-SPC f v") 'find-variable)
(global-set-key (kbd "M-SPC g L") 'git-link)
(global-set-key (kbd "M-SPC g g") 'avy-goto-char-timer)
(global-set-key (kbd "M-SPC g l") 'avy-goto-line)
(global-set-key (kbd "M-SPC g s") 'magit-status)
(global-set-key (kbd "M-SPC g w") 'avy-goto-word-0)
(global-set-key (kbd "M-SPC h f") #'hi-lock-find-patterns)
(global-set-key (kbd "M-SPC h l") #'highlight-lines-matching-regexp)
(global-set-key (kbd "M-SPC h p") #'highlight-phrase)
(global-set-key (kbd "M-SPC h r") #'highlight-regexp)
(global-set-key (kbd "M-SPC h s") #'highlight-symbol-at-point)
(global-set-key (kbd "M-SPC h u") #'unhighlight-regexp)
(global-set-key (kbd "M-SPC h w") #'hi-lock-write-interactive-patterns)
(global-set-key (kbd "M-SPC n n") #'org-roam-find-file)
(global-set-key (kbd "M-SPC p f") 'projectile-find-file)
(global-set-key (kbd "M-SPC p t") 'magit-todos-list)
(global-set-key (kbd "M-SPC q q") 'save-buffers-kill-terminal)
(global-set-key (kbd "M-SPC s P") 'color-rg-search-symbol-in-project)
(global-set-key (kbd "M-SPC s p") 'color-rg-search-input-in-project)
(global-set-key (kbd "M-SPC t t") #'dap-java-run-test-method)
(global-set-key (kbd "M-SPC u") #'universal-argument)
(global-set-key (kbd "M-SPC v") 'er/expand-region)
(global-set-key (kbd "M-SPC w D") 'delete-other-windows)
(global-set-key (kbd "M-SPC w O") (defun wenpin/previou-window () (interactive) (other-window -1)))
(global-set-key (kbd "M-SPC w S") (defun wenpin/split-window-right-and-focus () (interactive) (split-window-right) (other-window 1)))
(global-set-key (kbd "M-SPC w V") (defun wenpin/split-window-and-focus () (interactive) (split-window-below) (other-window 1)))
(global-set-key (kbd "M-SPC w d") 'delete-window)
(global-set-key (kbd "M-SPC w o") 'other-window)
(global-set-key (kbd "M-SPC w s") 'split-window-right)
(global-set-key (kbd "M-SPC w v") 'split-window-below)
(global-set-key (kbd "M-SPC z H") #'hs-hide-all)
(global-set-key (kbd "M-SPC z S") #'hs-show-all)
(global-set-key (kbd "M-SPC z h") #'hs-hide-block)
(global-set-key (kbd "M-SPC z s") #'hs-show-block)
(global-set-key (kbd "M-SPC z z") #'hs-toggle-hiding)
(global-set-key (kbd "M-o") 'smart-open-line-above)
(global-set-key (kbd "M-t") 'toggle-input-method)
(global-set-key (kbd "M-y") 'counsel-yank-pop)
(global-set-key [remap comment-dwim] #'comment-line)
(global-set-key [remap paredit-comment-dwim] #'comment-line)
;; (global-set-key (kbd "M-SPC SPC") 'wenpin/snails)


(provide 'init-keybindings)
