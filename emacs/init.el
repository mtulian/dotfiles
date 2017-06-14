;; Remove menu bar and scroll mode
(menu-bar-mode 0)
(tool-bar-mode 0)
(scroll-bar-mode 0)
(desktop-save-mode)

(setq-default custom-file (expand-file-name ".custom.el" user-emacs-directory))
(when (file-exists-p custom-file)
  (load custom-file))

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package t))

(setq-default
   use-package-always-defer t
   use-package-always-ensure t)

(use-package company)

(use-package better-defaults)

(use-package js2-mode)

(use-package org
  :ensure org-plus-contrib
  :init
  (add-hook 'org-mode-hook #'org-mode)
  :config
  (org-bullets-mode)
  (setq-default
   org-confirm-babel-evaluate nil
   org-src-fontify-natively t))
