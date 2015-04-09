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
                                     git
                                     fasd
                                     dash
                                     osx
                                     auctex
                                     restclient
                                     twitter
                                     javascript
                                     python
                                     html
                                     csharp
                                     markdown
                                     ess
                                     evernote
                                     fsharp
                                     company-mode
                                     dockerfile
                                     floobits
                                     slime
                                     vagrant
                                     smex
                                     evil-snipe
                                     vim-empty-lines
                                     colors
                                     windows-scripts
                                     themes-megapack
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
 dotspacemacs-persistent-server nil
 ;; The default package repository used if no explicit repository has been
 ;; specified with an installed package.
 ;; Not used for now.
 dotspacemacs-default-package-repository nil

 colors-enable-rainbow-identifiers nil
 colors-enable-nyan-cat-progress-bar t
 scroll-bar-mode nil
 show-trailing-whitespace nil

 omnisharp-server-executable-path "/Users/ryanroberts/code/OmnisharpServer/OmniSharp/bin/Debug/OmniSharp.exe"
 golden-ratio-mode t
 helm-display-header-line nil
)

;; Initialization Hooks
;; --------------------

(defun dotspacemacs/init ()
  "User initialization for Spacemacs. This function is called at the very
 startup."

)

(defun dotspacemacs/config ()
;;Bigger, fatter helm mini menu that includes projectile files and pwd content
(defun helm-notsomini ()
  "Preconfigured `helm'."
  (interactive)
  (condition-case nil
    (if (projectile-project-root)
        ;; add project files and buffers when in project
        (helm-other-buffer '(helm-c-source-buffers-list
                             helm-c-source-recentf
                             helm-source-projectile-files-list
                             helm-c-source-files-in-current-dir
                             helm-c-source-file-name-history
                             helm-source-projectile-directories-list
                             helm-source-projectile-projects
                             helm-c-source-buffer-not-found)
                           "*helm morestuff*")
      ;; otherwise show buffers and projectile projects
        (helm-other-buffer '(helm-c-source-buffers-list
                       helm-c-source-recentf
                       helm-c-source-files-in-current-dir
                       helm-c-source-file-name-history
                       helm-c-source-bookmarks
                       helm-source-projectile-projects
                       helm-c-source-buffer-not-found)
                     "*helm morestuff*"))
    ;; fall back to helm mini if an error occurs (usually in projectile-project-root)
    (error (helm-mini))))

    ;; (flycheck-define-checker javascript-flow
    ;;     "Static type checking using Flow."
    ;;     :command ("flow" "--json" source-original)
    ;;     :error-parser flycheck-parse-flow
    ;;     :modes flow-mode)
    ;; (add-to-list 'flycheck-checkers 'javascript-flow)

    ;; (define-derived-mode flow-mode js2-mode "Flow"
    ;;   "JavaScript with Flow type checking")


  (global-set-key (kbd "§") 'helm-notsomini)
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
 '(js2-include-node-externs t)
 '(ring-bell-function (quote ignore) t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-tooltip-common ((t (:inherit company-tooltip :weight bold :underline nil))))
 '(company-tooltip-common-selection ((t (:inherit company-tooltip-selection :weight bold :underline nil))))
 '(whitespace-empty ((t nil))))
