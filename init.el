;; Don't show the splash screen & show visual bell
(setq inhibit-startup-message t)
(setq visible-bell t)
;; Turn off some UI
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
;; Color theme
(load-theme 'tango-dark t)
;; Fonts
(set-face-attribute 'default nil :font "MonoLisa Nerd Font" :height 150)
;; Escape quit prompt
(global-set-key (kbd "<escape>") 'keyboard-escape-quit)

;; Plugin
(require 'package)
(setq package-archives '(("melpa" . "https://melpa.org/packages/")
			 ("org" . "https://orgmode.org/elpa/")
			 ("elpa" . "https://elpa.gnu.org/packages/")))
(package-initialize)
(unless package-archive-contents
  (package-refresh-contents))
(require 'use-package)
(setq use-package-always-ensure t)
(use-package ivy
  :diminish
  :bind (("C-s" . swiper)
	 :map ivy-minibuffer-map
	 ("Tab" . ivy-alt-done)
	 ("C-l" . ivy-alt-done)
	 ("C-j" . ivy-next-line)
	 ("C-k" . ivy-previous-line)
	 :map ivy-switch-buffer-map
	 ("C-k" . ivy-previous-line)
	 ("C-l" . ivy-done)
	 ("C-d" . ivy-switch-buffer-kill)
	 :map ivy-reverse-i-search-map
	 ("C-k" . ivy-previous-line)
	 ("C-d" . ivy-reverse-i-search-kill))
  :config
  (ivy-mode 1))

