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
 dotspacemacs-configuration-layers '(fasd
                                     dash
                                     osx
                                     latex
                                     restclient
                                     better-defaults
                                     react
                                     javascript
                                     html
                                     csharp
                                     markdown
                                     auto-completion
                                     syntax-checking
                                     org
                                     fsharp
                                     dockerfile
                                     floobits
                                     yaml
                                     c-c++
                                     vagrant
                                     smex
                                     emoji
                                     evil-snipe
                                     emacs-lisp
                                     vim-empty-lines
                                     colors
                                     shell
                                     pandoc
                                     github
                                     git
                                     version-control
                                     vala
                                     terraform
                                     puppet
                                     go
                                     search-engine
                                     eyebrowse
                                     )
 ;; List of additional packages that will be installed without being
 ;; wrapped in a layer. If you need some configuration for these
 ;; packages then consider to create a layer, you can also put the
 ;; configuration in `dotspacemacs/config'.
 dotspacemacs-additional-packages '(
                                    org-trello
                                    flycheck-flow
                                    grunt
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

 dotspacemacs-search-tools '("pt" "ag" "grep")

 golden-ratio-mode t
 helm-display-header-line nil
 inferior-fsharp-program "fsharpi --readline-"
 fsharp-build-command "xbuild"
)

;; Initialization Hooks
;; --------------------

(defun dotspacemacs/init ()
  "User initialization for Spacemacs. This function is called at the very
 startup."
)
(defun dotspacemacs/user-config ()
;;Bigger, fatter helm mini menu that includes projectile files and pwd content
(require 'helm-projectile)
(setq helm-mini-default-sources '(helm-source-buffers-list
                                  helm-source-bookmarks
                                  helm-source-projectile-files-list
                                  helm-source-projectile-projects))
  (global-set-key (kbd "s-<return>") 'inferior-fsharp-eval-region)
  ;; text size
  (global-set-key (kbd "C-+") 'text-scale-increase)
  (global-set-key (kbd "C-=") 'text-scale-increase)
  (global-set-key (kbd "C--") 'text-scale-decrease)
  ;; window movement
  (global-set-key (kbd "s-h") 'windmove-left)
  (global-set-key (kbd "s-l") 'windmove-right)
  (global-set-key (kbd "s-j") 'windmove-down)
  (global-set-key (kbd "s-k") 'windmove-up)
  (global-set-key (kbd "M-<tab>") 'spacemacs//workspaces-eyebrowse-next-window-config-n)
  (global-set-key (kbd "s-1") 'eyebrowse-switch-to-window-config-1)
  (global-set-key (kbd "s-2") 'eyebrowse-switch-to-window-config-2)
  (global-set-key (kbd "s-3") 'eyebrowse-switch-to-window-config-3)
  (global-set-key (kbd "s-4") 'eyebrowse-switch-to-window-config-4)
  (global-set-key (kbd "s-5") 'eyebrowse-switch-to-window-config-5)
  (global-set-key (kbd "s-6") 'eyebrowse-switch-to-window-config-6)
  (global-set-key (kbd "s-7") 'eyebrowse-switch-to-window-config-7)
  (global-set-key (kbd "s-8") 'eyebrowse-switch-to-window-config-8)
  (global-set-key (kbd "s-9") 'eyebrowse-switch-to-window-config-9)
  (global-set-key (kbd "H-<backspace>") 'delete-char)
  ;; whitespace
  (global-whitespace-mode)
  (setq whitespace-style '(trailing tabs tab-mark))
  (setq vc-follow-symlinks t)
  ;; (define-key global-map (kbd "s-j") 'ace-jump-mode)

  ;; better than vim-vinegar
  (require 'dired)
  (define-key evil-normal-state-map (kbd "-") 'dired-jump)
  (define-key dired-mode-map (kbd "-") 'dired-up-directory)
  ;; company mode
  (setq company-idle-delay 0.03)
  (setq company-minimum-prefix-length 2)
  (setq company-require-match 'nil)
  (setq company-show-numbers 't)
  ;; use flex matching for company
  (setq omnisharp-company-match-type 'company-match-flx)
  (setq gc-cons-threshold 20000000)
  (setq fsharp-ac-blocking-timeout 1)

(company-quickhelp-mode 1)
(global-company-mode)

(global-set-key (kbd "§") 'helm-mini)
(setq locate-command "mdfind")

(setq-default dotspacemacs-configuration-layers
              '(auto-completion :variables
                                 auto-completion-enable-snippets-in-popup t))
(setq-default dotspacemacs-configuration-layers
              '(auto-completion :variables
                                auto-completion-enable-help-tooltip t))
(setq-default dotspacemacs-configuration-layers
              '(auto-completion :variables
                                auto-completion-enable-sort-by-usage t))

;;Uml diagram support
(org-babel-do-load-languages
 'org-babel-load-languages
 '(;; other Babel languages
   (plantuml . t)))
(setq org-plantuml-jar-path
      (expand-file-name "~/plantuml.jar"))

(defun smaller-font-change ()
  "Set current buffer to use variable-width font."
  (variable-pitch-mode 1)
  (text-scale-decrease 0.5 )
  )
(when (window-system)
(set-default-font "Fira Code"))
(let ((alist '((33 . ".\\(?:\\(?:==\\)\\|[!=]\\)")
               (35 . ".\\(?:[(?[_{]\\)")
               (38 . ".\\(?:\\(?:&&\\)\\|&\\)")
               (42 . ".\\(?:\\(?:\\*\\*\\)\\|[*/]\\)")
               (43 . ".\\(?:\\(?:\\+\\+\\)\\|\\+\\)")
               (45 . ".\\(?:\\(?:-[>-]\\|<<\\|>>\\)\\|[<>}~-]\\)")
               (46 . ".\\(?:\\(?:\\.[.<]\\)\\|[.=]\\)")
               (47 . ".\\(?:\\(?:\\*\\*\\|//\\|==\\)\\|[*/=>]\\)")
               (58 . ".\\(?:[:=]\\)")
               (59 . ".\\(?:;\\)")
               (60 . ".\\(?:\\(?:!--\\)\\|\\(?:\\$>\\|\\*>\\|\\+>\\|--\\|<[<=-]\\|=[<=>]\\||>\\)\\|[/<=>|-]\\)")
               (61 . ".\\(?:\\(?:/=\\|:=\\|<<\\|=[=>]\\|>>\\)\\|[<=>~]\\)")
               (62 . ".\\(?:\\(?:=>\\|>[=>-]\\)\\|[=>-]\\)")
               (63 . ".\\(?:[:=?]\\)")
               (92 . ".\\(?:\\(?:\\\\\\\\\\)\\|\\\\\\)")
               (94 . ".\\(?:=\\)")
               (123 . ".\\(?:-\\)")
               (124 . ".\\(?:\\(?:|[=|]\\)\\|[=>|]\\)")
               (126 . ".\\(?:[=@~-]\\)")
             )
      ))
(dolist (char-regexp alist)
  (set-char-table-range composition-function-table (car char-regexp)
                        `([,(cdr char-regexp) 0 font-shape-gstring]))))

;;(add-to-list 'org-latex-classes
;;             '("koma-article"
;;               "\\documentclass{scrartcl}"
;;               ("\\section{%s}" . "\\section*{%s}")
;;               ("\\subsection{%s}" . "\\subsection*{%s}")
;;               ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
;;               ("\\paragraph{%s}" . "\\paragraph*{%s}")
;;               ("\\subparagraph{%s}" . "\\subparagraph*{%s}")))

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
 '(paradox-github-token t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-tooltip-common ((t (:inherit company-tooltip :weight bold :underline nil))))
 '(company-tooltip-common-selection ((t (:inherit company-tooltip-selection :weight bold :underline nil)))))
