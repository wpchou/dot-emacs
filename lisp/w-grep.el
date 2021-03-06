;;; init-grep.el --- Settings for grep and grep-like tools -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(if (and (executable-find "rg")
         (straight-use-package 'rg))
    (global-set-key (kbd "M-SPC s p") #'rg-project)
  (if (and (executable-find "ag")
           (straight-use-package 'ag))
      (progn
        (straight-use-package 'wgrep-ag)
        (global-set-key (kbd "M-SPC s p") #'ag-project))
    (straight-use-package 'wgrep)))

(provide 'w-grep)
