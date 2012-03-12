;;; init.el --- Where all the magic begins
;;
;; Part of the Emacs Starter Kit
;;
;; This is the first thing to get loaded.
;;
;; "Emacs outshines all other editing software in approximately the
;; same way that the noonday sun does the stars. It is not just bigger
;; and brighter; it simply makes everything else vanish."
;; -Neal Stephenson, "In the Beginning was the Command Line"

;; Turn off mouse interface early in startup to avoid momentary display
;; You really don't need these; trust me.

(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

;;; From nflath.com
;;; add all subdirs under "~/.emacs.d/" to load-path
(if (fboundp 'normal-top-level-add-subdirs-to-load-path)
    (let* ((my-lisp-dir "~/.emacs.d/")
           (default-directory my-lisp-dir)
           (orig-load-path load-path))
      (setq load-path (cons my-lisp-dir nil))
      (normal-top-level-add-subdirs-to-load-path)
      (nconc load-path orig-load-path)))

;; Load path etc.

(setq dotfiles-dir (file-name-directory
                    (or (buffer-file-name) load-file-name)))

;; Load up ELPA, the package manager

(add-to-list 'load-path dotfiles-dir)

(add-to-list 'load-path (concat dotfiles-dir "/elpa-to-submit"))
(add-to-list 'load-path (concat dotfiles-dir "/elpa"))
(setq autoload-file (concat dotfiles-dir "loaddefs.el"))
(setq package-user-dir (concat dotfiles-dir "elpa"))
(setq custom-file (concat dotfiles-dir "custom.el"))

(require 'package)
(dolist (source '(("marmalade" . "http://marmalade-repo.org/packages/")
                  ("elpa" . "http://tromey.com/elpa/")))
  (add-to-list 'package-archives source t))
(package-initialize)
(require 'starter-kit-elpa)

;; These should be loaded on startup rather than autoloaded on demand
;; since they are likely to be used in every session

(require 'cl)
(require 'saveplace)
(require 'ffap)
(require 'uniquify)
(require 'ansi-color)
(require 'recentf)

;; backport some functionality to Emacs 22 if needed
(require 'dominating-file)

;; Load up starter kit customizations

(require 'starter-kit-defuns)
(require 'starter-kit-bindings)
(require 'starter-kit-misc)
(require 'starter-kit-registers)
(require 'starter-kit-eshell)
(require 'starter-kit-lisp)
(require 'starter-kit-perl)
(require 'starter-kit-ruby)
(require 'starter-kit-js)

(regen-autoloads)
(load custom-file 'noerror)

;; You can keep system- or user-specific customizations here
(setq system-specific-config (concat dotfiles-dir system-name ".el")
      user-specific-config (concat dotfiles-dir user-login-name ".el")
      user-specific-dir (concat dotfiles-dir user-login-name))
(add-to-list 'load-path user-specific-dir)

(if (file-exists-p system-specific-config) (load system-specific-config))
(if (file-exists-p user-specific-dir)
  (mapc #'load (directory-files user-specific-dir nil ".*el$")))
(if (file-exists-p user-specific-config) (load user-specific-config))

;; My Cutomizations

(load-library "color-theme-library")
;;(color-theme-hober)
;;(load-library "color-theme-tangotango")

(load-library "mc-theme")
(mc-theme)

;;(require 'linum)
;;(global-linum-mode)
;;(hl-line-mode)
;;(set-face-background hl-line-face "LightGrey")

(require 'auto-complete-config)
(ac-config-default)

(autoload 'whizzytex-mode
  "~/elisp/whizzytex"
  "WhizzyTeX, a minor-mode WYSIWYG environment for LaTeX" t)
(setq-default whizzy-viewers '(("-dvi" "xdvi") ("-ps" gv) ("-pdf" "xpdf")))

;;(load-library "color-theme-solarized")
;;(color-theme-solarized-dark)

(load-library "android-mode")
(require 'android-mode)
(setq android-mode-sdk-dir "~/android-sdk/")
(add-hook 'gud-mode-hook
          (lambda ()
            (add-to-list 'gud-jdb-classpath "~/android-sdk/platforms/android-7/android.jar")))


;; My Setup for GNUS+GMAIL
(eval-after-load "mail-source" '(require 'pop3))

(setq smtpmail-debug-info t)
(setq pop3-debug t)
(setq gnus-secondary-select-methods '((nnml "")))

(setq user-full-name "Roupam Ghosh")
(setq user-full-mail-address "rpg@infinitelybeta.com")

(setq mail-sources
      '(;
        (pop :server "pop.gmail.com"
             :port 995
             :user "rpg@infinitelybeta.com"
             :connection ssl
             :password "********"
             :leave t)))

;; ;; Sending mail
(setq message-send-mail-function 'smtpmail-send-it)
(setq smtpmail-starttls-credentials '(("smtp.gmail.com" 587 nil nil)))
(setq smtpmail-auth-credentials '(("smtp.gmail.com" 587 "rpg@infinitelybeta.com"
                                   nil)))
(setq smtpmail-default-smtp-server "smtp.gmail.com")
(setq smtpmail-smtp-server "smtp.gmail.com")
(setq smtpmail-smtp-service 587)

;; ;; My Setup for Mew + GMAIL
;; (add-to-list 'load-path "~/.emacs.d/mew/")
;; (require 'mew)


;; My setup for android auto-complete

;; yasnippet
(add-to-list 'load-path "~/.emacs.d/elpa/yasnippet-0.6.1")
(require 'yasnippet)
(setq yas/trigger-key (kbd "C-c <kp-multiply>"))
(yas/initialize)
;; Develop in ~/emacs.d/mysnippets, but also
;; try out snippets in ~/Downloads/interesting-snippets
(setq yas/root-directory '("~/.emacs.d/elpa/yasnippet-0.6.1/snippets"))
;; Map `yas/load-directory' to every element
(mapc 'yas/load-directory yas/root-directory)

;; auto-complete
(add-to-list 'load-path "~/.emacs.d/elpa/auto-complete-1.4.20110207")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "/Users/rpg/.emacs.d/elpa/auto-complete-1.4.20110207/dict")

(setq-default ac-sources '(ac-source-yasnippet ac-source-abbrev ac-source-dictionary ac-source-words-in-same-mode-buffers))
(add-hook 'emacs-lisp-mode-hook 'ac-emacs-lisp-mode-setup)
(add-hook 'c-mode-common-hook 'ac-cc-mode-setup)
(add-hook 'ruby-mode-hook 'ac-ruby-mode-setup)
(add-hook 'css-mode-hook 'ac-css-mode-setup)
(add-hook 'auto-complete-mode-hook 'ac-common-setup)
(global-auto-complete-mode t)

;; android specific settings
;; AndroidManifest.xml
;; (defun ac-android-manifest-nxml-setup()
;;   ""
;;   (when (string= (buffer-name) "AndroidManifest.xml")
;;     (setq ac-sources '(ac-source-yasnippet ac-source-abbrev ac-source-dictionary ac-source-words-in-same-mode-buffers))))
;; (add-hook 'nxml-mode-hook 'ac-android-manifest-nxml-setup)

;; (add-to-list 'load-path "/usr/local/Cellar/maxima/5.25.1/share/maxima/5.25.1/emacs/")
;; (add-to-list 'load-path "/usr/local/Cellar/maxima/5.25.1/bin/")
;; (autoload 'maxima-mode "maxima" "Maxima mode" t)
;; (autoload 'imaxima "imaxima" "Frontend for maxima with Image support" t)
;; (autoload 'maxima "maxima" "Maxima interaction" t)
;; (autoload 'imath-mode "imath" "Imath mode for math formula input" t)
;; (setq imaxima-use-maxima-mode-flag t)

;; Vedang's init.el extension
;; (setq require-final-newline t)
;; (add-hook 'before-save-hook 'delete-trailing-whitespace)
;; (setq-default indent-tabs-mode nil)

(color-theme-ld-dark)

;; RMail
 (setenv "MAILHOST" "pop.gmail.com")
 (setq rmail-primary-inbox-list '("po:rpg@infinitelybeta.com")
       rmail-pop-password-required t)

;;GUILE implementation
(load-library "geiser-mode")

;; w3m Setup
 (setq browse-url-browser-function 'w3m-browse-url)
 (autoload 'w3m-browse-url "w3m" "Ask a WWW browser to show a URL." t)
 ;; optional keyboard short-cut
 (global-set-key "\C-xm" 'browse-url-at-point)

;;; init.el ends here
