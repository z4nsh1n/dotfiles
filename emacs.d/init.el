; -*- lexical-binding: t; -*-
(setq inhibit-startup-message t)
(scroll-bar-mode -1)
(tool-bar-mode -1)
(tooltip-mode -1)
(set-fringe-mode 10)
(show-paren-mode 1)
(menu-bar-mode -1)			
(setq visible-bell t)

;;; Line numbers
(column-number-mode)
(setq display-line-numbers-type 'relative)
(global-display-line-numbers-mode)
(dolist (mode '(org-mode-hook
		term-mode-hook
		eshell-mode-hook))
  (add-hook mode (lambda () (display-line-numbers-mode 0))))

;;; (load-theme 'doom-city-lights t)
;; Make ESC quit prompts
(global-set-key (kbd "<escape>") #'keyboard-escape-quit)
(global-set-key (kbd "C-c o") #'other-window)


(setq use-package-always-ensure t)						      ;;
;;; Packages									      ;;
(require 'package)								      ;;
(setq package-archives							      ;;
      '(("melpa" . "https://melpa.org/packages/")				      ;;
	("org" . "http://orgmode.org/elpa/")					      ;;
	("elpa" . "https://elpa.gnu.org/packages/")))				      ;;
(package-initialize)								      ;;
(unless package-archive-contents						      ;;
  (package-refresh-contvents))						      ;;
(unless (package-installed-p 'use-package)					      ;;
  (package-install 'use-package))						      ;;
										      ;;
(require 'use-package)							      ;;
										      ;;										      ;;
;;; (load-theme 'misterioso t)						      ;;
(use-package gruvbox-theme)							      ;;
;(load-theme 'gruvbox t)							      ;;
(use-package gruber-darker-theme)
(load-theme 'gruber-darker t)
;;; Swiper									      ;;
(use-package swiper)								      ;;
										      ;;
;;; Ivy completion								      ;;
(use-package ivy								      ;;
  :bind									      ;;
  (("C-s" . swiper)								      ;;
   :map ivy-minibuffer-map)							      ;;
   ;; ("C-j" . ivy-next-line)						      ;;
   ;;("C-k" . ivy-previous-line)						      ;;
  :config									      ;;
  (ivy-mode t))								      ;;
										      ;;
;;; Counsel									      ;;
(use-package counsel								      ;;
  :bind									      ;;
  (										      ;;
   ("M-x" . counsel-M-x)							      ;;
   ("C-x b" . counsel-ibuffer)						      ;;
   ("C-x C-f" . counsel-find-file)						      ;;
   :map minibuffer-local-map							      ;;
   ("C-r" . 'counsel-minibuffer-history)))					      ;;
										      ;;
;;; Ivy rich									      ;;
(use-package ivy-rich							      ;;
  :init									      ;;
  (ivy-rich-mode 1))								      ;;
;;  :config									      ;;
;;  (setq ivy-format-function #'ivy-format-function-line)			      ;;
  ;; (setq ivy-rich-display-transformers-list				      ;;
  ;;	(plist-put ivy-rich--display-transformer-list				      ;;
;;  )									      ;;
										      ;;
;;; Eshell									      ;;
(use-package eshell)								      ;;
										      ;;
;;; All the icons								      ;;
(use-package all-the-icons)							      ;;
;;; Doom themes								      ;;
(use-package doom-themes)							      ;;
;;; Doom-modeline								      ;;
(use-package doom-modeline							      ;;
  :ensure t									      ;;
  :after eshell								      ;;
  :init									      ;;
  (doom-modeline-mode 1)							      ;;
  :custom									      ;;
  (doom-modeline-lsp t)							      ;;
  (doom-modeline-minor-modes t))						      ;;
										      ;;
										      ;;
(use-package rainbow-delimiters						      ;;
  :hook (prog-mode . rainbow-delimiters-mode))				      ;;
										      ;;
(use-package which-key							      ;;
  :init (which-key-mode)							      ;;
  :diminish which-key-mode							      ;;
  :config (setq which-key-idle-delay 1)) 					      ;;
										      ;;
;;; Magit									      ;;
(use-package magit)								      ;;
;; Multiple Cursors
(use-package multiple-cursors)
(global-set-key (kbd "C-M-j") 'mc/mark-next-like-this)
(global-set-key (kbd "C-M-k") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-M-u") 'mc/unmark-next-like-this)
(global-set-key (kbd "C-M-i") 'mc/unmark-previous-like-this)

;;; LSP mode			   			      ;;
(use-package lsp-mode							      ;;
  :commands lsp lsp-deferred							      ;;
  :init									      ;;
  (setq lsp-keymap-prefix "C-c l")						      ;;
  :config									      ;;
  (lsp-enable-which-key-integration t))					      ;;
(use-package company								      ;;
  :after lsp-mode								      ;;
  :hook									      ;;
  (lsp-mode . company-mode)							      ;;
  :bind (:map company-active-map						      ;;
	      ("<tab>" . company-complete-selection))				      ;;
  (:map lsp-mode-map								      ;;
	("<tab>" . company-indent-or-complete-common))				      ;;
  :custom									      ;;
  (company-minimum-prefix-length 1)						      ;;
  (company-idle-delay 0.0))							      ;;
										      ;;
(use-package company-box							      ;;
  :ensure t									      ;;
  :vc (:url "https://github.com/sebastiencs/company-box/" :branch "master")	      ;;
  :hook (company-mode . company-next-mode))					      ;;
										      ;;
(use-package lsp-treemacs							      ;;
  :after lsp)
(use-package yasnippet
  :init (yas-global-mode 1)
  :hook (prog-mode . yas-minor-mode)
  :config (yas-reload-all)
  :bind )
(use-package yasnippet-capf
  :after yasnippet-cape
  :config (add-to-list 'completion-at-point-functions #'yasnippet-capf))

(use-package yasnippet-snippets
  :ensure t)
(use-package eglot)
;;; Languages
;;; Zig
(use-package zig-ts-mode							      ;;
  :vc (:url "https://codeberg.org/meow_king/zig-ts-mode"			      ;;
	    :rev :newest)							      ;;
  :hook (zig-ts-mode . lsp))
;; Rust										      ;;
(use-package rust-mode							      ;;
  :hook (rust-mode . lsp))							      ;;
										      ;;
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("f2f7fbafdb70d61c6018a6d902b0f1420400da4d25397a79d0096b36d5a79307"
     "720838034f1dd3b3da66f6bd4d053ee67c93a747b219d1c546c41c4e425daf93"
     "3613617b9953c22fe46ef2b593a2e5bc79ef3cc88770602e7e569bbd71de113b"
     "f1e8339b04aef8f145dd4782d03499d9d716fdc0361319411ac2efc603249326"
     "7ec8fd456c0c117c99e3a3b16aaf09ed3fb91879f6601b1ea0eeaee9c6def5d9"
     "b5fd9c7429d52190235f2383e47d340d7ff769f141cd8f9e7a4629a81abc6b19"
     default))
 '(package-selected-packages
   '(all-the-icons company company-box company-next counsel doom-modeline
		   doom-themes gruber-darker-theme gruvbox-theme ivy
		   ivy-rich lsp-mode lsp-treemacs magit
		   multiple-cursors rainbow-delimiters rust-mode
		   yasnippet yasnippet-capf yasnippet-snippets
		   zig-ts-mode))
 '(package-vc-selected-packages
   '((company-next :url "https://github.com/sebastiencs/company-box/"
		   :branch "main")
     (company-box :url "https://github.com/sebastiencs/company-box/")))
 '(safe-local-variable-values '((Lexical-Binding . T))))
 ;;
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
										      ;;

