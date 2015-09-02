;; -*- mode: emacs-lisp -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

;; Configuration Layers
;; --------------------

(setq-default
 ;; List of additional paths where to look for configuration layers.
 ;; Paths must have a trailing slash (ie. `~/.mycontribs/')
 dotspacemacs-configuration-layer-path '()
 ;; List of configuration layers to load.
 dotspacemacs-configuration-layers '(gubbins
                                     pretty
                                     fasd
                                     dash
                                     osx
                                     latex
                                     restclient
                                     javascript
                                     python
                                     html
                                     csharp
                                     markdown
                                     ess
                                     fsharp
                                     auto-completion
                                     syntax-checking
                                     org
                                     dockerfile
                                     floobits
                                     vagrant
                                     smex
                                     evil-snipe
                                     vim-empty-lines
                                     colors
                                     eyebrowse
                                     shell
                                     pandoc
                                     github
                                     git
                                     gubbins
                                     version-control
                                    )
 ;; A list of packages and/or extensions that will not be install and loaded.
 dotspacemacs-excluded-packages '()
 )

;; Settings
;; --------

(setq-default
 ;; Specify the startup banner. If the value is an integer then the
 ;; banner with the corresponding index is used, if the value is `random'
 ;; then the banner is chosen randomly among the available banners, if
 ;; the value is nil then no banner is displayed.
 dotspacemacs-startup-banner 'random
 ;; Default theme applied at startup
 ;;dotspacemacs-default-theme 'sanityinc-tomorrow-night
 ;; The leader key
 dotspacemacs-leader-key "SPC"
 ;; Major mode leader key is a shortcut key which is the equivalent of
 ;; pressing `<leader> m`
 dotspacemacs-major-mode-leader-key ","
 ;; The command key used for Evil commands (ex-commands) and
 ;; Emacs commands (M-x).
 ;; By default the command key is `:' so ex-commands are executed like in Vim
 ;; with `:' and Emacs commands are executed with `<leader> :'.
 dotspacemacs-command-key ":"
 ;; Guide-key delay in seconds. The Guide-key is the popup buffer listing
 ;; the commands bound to the current keystrokes.
;; List of themes, the first of the list is loaded when spacemacs starts.
;; Press <SPC> T n to cycle to the next theme in the list (works great
;; with 2 themes variants, one dark and one light)
dotspacemacs-themes '(gruvbox
                      monokai
                      solarized-dark
                      solarized-light
                      spacemacs-dark
                      spacemacs-light
                      leuven
                      zenburn)
 dotspacemacs-guide-key-delay 0.4
 ;; If non nil the frame is fullscreen when Emacs starts up (Emacs 24.4+ only).
 dotspacemacs-fullscreen-at-startup nil
 ;; If non nil the frame is maximized when Emacs starts up (Emacs 24.4+ only).
 ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
 dotspacemacs-maximized-at-startup t
 ;; A value from the range (0..100), in increasing opacity, which describes the
 ;; transparency level of a frame when it's active or selected. Transparency can
 ;; be toggled through `toggle-transparency'.
 dotspacemacs-active-transparency 90
 ;; A value from the range (0..100), in increasing opacity, which describes the
 ;; transparency level of a frame when it's inactive or deselected. Transparency
 ;; can be toggled through `toggle-transparency'.
 dotspacemacs-inactive-transparency 60
 ;; If non nil unicode symbols are displayed in the mode line (e.g. for lighters)
 dotspacemacs-mode-line-unicode-symbols t
 ;; If non nil smooth scrolling (native-scrolling) is enabled. Smooth scrolling
 ;; overrides the default behavior of Emacs which recenters the point when
 ;; it reaches the top or bottom of the screen
 dotspacemacs-smooth-scrolling t
 ;; If non nil pressing 'jk' in insert state, ido or helm will activate the
 ;; evil leader.
 dotspacemacs-feature-toggle-leader-on-jk t
 ;; If non-nil smartparens-strict-mode will be enabled in programming modes.
 dotspacemacs-smartparens-strict-mode t
 ;; If non nil advises quit functions to keep server open when quitting.
 dotspacemacs-persistent-server t
 ;; The default package repository used if no explicit repository has been
 ;; specified with an installed package.
 ;; Not used for now.
 dotspacemacs-default-package-repository nil

 colors-enable-rainbow-identifiers nil
 colors-enable-nyan-cat-progress-bar nil
 scroll-bar-mode nil
 show-trailing-whitespace nil

 dotspacemacs-search-tools '("pt" "ack" "grep")

 golden-ratio-mode t
 helm-display-header-line nil
 inferior-fsharp-program "/usr/bin/fsharpi --readline-"
 fsharp-build-command "/usr/bin/xbuild /nologo"
)

;; Initialization Hooks
;; --------------------

(defun dotspacemacs/init ()
  "User initialization for Spacemacs. This function is called at the very
 startup."

)

(defun dotspacemacs/config ()
;;Bigger, fatter helm mini menu that includes projectile files and pwd content
(require 'helm-projectile)
(setq helm-mini-default-sources '(helm-source-buffers-list
                                  helm-source-recentf
                                  helm-source-bookmarks
                                  helm-source-projectile-files-list
                                  helm-source-projectile-projects
                                  helm-source-buffer-not-found))
(global-company-mode)
(setq-default dotspacemacs-configuration-layers
  '(auto-completion :variables
                    auto-completion-enable-company-help-tooltip t))

(global-set-key (kbd "§") 'helm-mini)

(defun smaller-font-change ()
  "Set current buffer to use variable-width font."
  (variable-pitch-mode 1)
  (text-scale-decrease 0.5 )
  )
)


;; Custom variables
;; ----------------

;; Do not write anything in this section. This is where Emacs will
;; auto-generate custom variable definitions.


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ahs-case-fold-search nil)
 '(ahs-default-range (quote ahs-range-whole-buffer))
 '(ahs-idle-interval 0.25)
 '(ahs-idle-timer 0 t)
 '(ahs-inhibit-face-list nil)
 '(hexl-bits 32)
 '(js2-include-node-externs t)
 '(magit-use-overlays nil)
 '(ring-bell-function (quote ignore) t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-tooltip-common ((t (:inherit company-tooltip :weight bold :underline nil))))
 '(company-tooltip-common-selection ((t (:inherit company-tooltip-selection :weight bold :underline nil))))
 '(whitespace-empty ((t nil))))
