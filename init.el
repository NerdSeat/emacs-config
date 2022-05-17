
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;;install theme
(unless (package-installed-p 'underwater-theme)
  (package-refresh-contents)
  (package-install 'underwater-theme))

;;start emacs on fullscreen
(add-to-list 'default-frame-alist '(fullscreen . maximized))
(require 'package)
(setq package-enable-at-startup nil)

(use-package which-key
  :ensure t
  :init
  (which-key-mode))

(use-package beacon
  :ensure t
  :init
  (beacon-mode 1))
(require 'org-tempo)
;;disable menues and scroll bar
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)

;;disable startup page
(setq inhibit-startup-message t)
;;disable ring-bell
(setq ring-bell-function 'ignore)
;;highlight cursor line when in emacs window
(when window-system (global-hl-line-mode t))
;;cursor options
(setq cursor-type '(bar . 3))
;;wrap text
(global-visual-line-mode t)

;;disable autosave and auto  backup file
(setq make-backup-file nil)
(setq make-auto-save-default nil)
;; load config file
(org-babel-load-file (expand-file-name "~/.emacs.d/config.org"))
;;scroll lines
(setq scroll-conservatively 100)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#212526" "#ff4b4b" "#b4fa70" "#fce94f" "#729fcf" "#e090d7" "#8cc4ff" "#eeeeec"])
 '(custom-enabled-themes '(underwater))
 '(custom-safe-themes
   '("db7f422324a763cfdea47abf0f931461d1493f2ecf8b42be87bbbbbabf287bfe" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" default))
 '(hl-todo-keyword-faces
   '(("TODO" . "#dc752f")
     ("NEXT" . "#dc752f")
     ("THEM" . "#2d9574")
     ("PROG" . "#4f97d7")
     ("OKAY" . "#4f97d7")
     ("DONT" . "#f2241f")
     ("FAIL" . "#f2241f")
     ("DONE" . "#86dc2f")
     ("NOTE" . "#b1951d")
     ("KLUDGE" . "#b1951d")
     ("HACK" . "#b1951d")
     ("TEMP" . "#b1951d")
     ("FIXME" . "#dc752f")
     ("XXX+" . "#dc752f")
     ("\\?\\?\\?+" . "#dc752f")))
 '(org-fontify-done-headline nil)
 '(org-fontify-todo-headline nil)
 '(package-selected-packages
   '(beacon underwater-theme spacemacs-theme which-key use-package))
 '(pdf-view-midnight-colors '("#b2b2b2" . "#292b2e")))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :extend nil :stipple nil :background "#102235" :foreground "#DFEFF6" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 151 :width normal :foundry "SAJA" :family "Cascadia Code")))))
