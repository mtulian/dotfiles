(package-initialize)

(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))
(custom-set-variables
 '(package-selected-packages (quote (magit emmet-mode better-defaults js2-mode))))
(custom-set-faces)

(add-hook 'sgml-mode-hook 'emmet-mode) ;; auto start on any markup modes
(add-hook 'css-mode-hook 'emmet-mode) ;; enable emmet for css abreviation

(column-number-mode 1)

;; Update backups directory
(setq backup-directory-alist '(("" . "~/.emacs.d/backups")))

;; Set default tab char's display width to 4 spaces
(setq-default tab-width 4)
(setq-default tab-always-indent t)

;; Begin ORG_MODE_CONFIG

;; make org mode allow eval of some langs
(require 'org)
(require 'ob)

(org-babel-do-load-languages
 'org-babel-load-languages
 '((emacs-lisp . t)
   (js . t)))


(setq-default org-confirm-babel-evaluate nil) ;; stop emacs asking for confirmation to eval
(setq-default org-src-fontify-natively t) ;; turn on syntax coloring
(add-to-list 'auto-mode-alist' '("\\.txt\\'" . org-mode)) ;; use automatically org-mode if .txt file is opened

;; END ORG_MODE_CONFIG
