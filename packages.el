;;; 包安装与配置分离，利于包版本集中管理，利于灵活调整包管理工具
(straight-use-package '(color-rg :host github :repo "manateelazycat/color-rg"))
(straight-use-package 'company)
;; ivy, counsel and swiper belongs to the same repo
;; but straight.el builds them into different packages
(straight-use-package 'counsel)
(straight-use-package '(emacs-application-framework :host github :repo "manateelazycat/emacs-application-framework" :files ("app" "core" "*.el" "*.py")))
(straight-use-package 'expand-region)
(straight-use-package 'eyebrowse)
(straight-use-package '(fuz :host github :repo "rustify-emacs/fuz.el" :files ("src" "Cargo*" "*.el")))
(straight-use-package 'gcmh)
(straight-use-package 'ivy)
(straight-use-package 'ivy-posframe)
(straight-use-package 'magit)
(straight-use-package 'markdown-mode)
(straight-use-package '(nox :host github :repo "manateelazycat/nox"))
(straight-use-package 'org)
(straight-use-package 'org-journal)
(straight-use-package '(paredit :repo "http://mumble.net/~campbell/git/paredit.git/"))
(straight-use-package 'posframe)
(straight-use-package 'projectile)
(straight-use-package '(rime :host github :repo "DogLooksGood/emacs-rime" :files ("*.el" "Makefile" "lib.c")))
(straight-use-package '(snails :host github :repo "manateelazycat/snails" :fork (:host nil :repo "git@github.com:wpchou/snails.git") :files ("*.el" "*.sh" "*.ps1") :no-byte-compile t))
(straight-use-package 'swiper)
(straight-use-package 'typescript-mode)
(straight-use-package 'yaml-mode)
(straight-use-package 'yasnippet)

(provide 'init-packages)
