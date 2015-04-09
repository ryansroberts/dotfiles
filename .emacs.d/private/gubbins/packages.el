(defvar gubbins-packages
  '(
    omn-mode
    n3-mode
    )
"List of all packages to install and/or initialize. Built-in packages
which require an initialization must be listed explicitly in the list.")

(defun gubbins/init-gubbins ()
  (use-package omn-mode
    :defer t
    :init
    (progn
      (setq auto-mode-alist (append
                             '(("\\.omn" . omn-mode)))
   )))
  (use-package n3-mode
    :defer t
    :init
    (progn
      (setq auto-mode-alist (append
                             '(("\\.n3" . n3-mode)
                               ("\\.ttl" . n3-mode)
                               ("\\.owl" . n3-mode)
                               ))
            
   )))
)


