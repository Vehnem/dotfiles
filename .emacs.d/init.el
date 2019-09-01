(require 'package)

(add-to-list 'package-archives
	     '("melpa-stable" . "https://stable.melpa.org/packages/") t)

(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(eval-when-compile
  (require 'use-package))

(use-package ensime
  :ensure t
  :pin melpa-stable)

;; (use-package scala-mode
;;   :interpreter
;;     ("scala" . scala-mode))

;; (use-package sbt-mode
;;   :commands sbt-start sbt-command
;;   :config
;;   ;; WORKAROUND: https://github.com/ensime/emacs-sbt-mode/issues/31
;;   ;; allows using SPACE when in the minibuffer
;;   (substitute-key-definition
;;    'minibuffer-complete-word
;;    'self-insert-command
;;       minibuffer-local-completion-map))

(use-package neotree
  :ensure t
  :bind (([f8] . neotree-toggle))
  :config (setq neo-autorefresh nil))

(add-to-list 'load-path "~/.emacs.d/lisp/")

;;(require 'tree-mode)
;;(require 'windata)
;;(require 'dirtree)
;;(autoload 'dirtree "dirtree" "Add directory to tree view" t)
;;(global-set-key "\C-o" 'dirtree-show) 

(load-theme 'tango-dark)

(global-linum-mode)

(global-set-key (kbd "M-o") 'ace-window)

;;(add-hook 'after-init-hook #'neotree-toggle)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (tango-dark))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
