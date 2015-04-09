(defvar pretty-packages
  '(pretty-mode)
)

(defun pretty/init-pretty-mode ()
  (use-package pretty-mode
    :defer t
    :init
    (progn (spacemacs|add-toggle
            pretty-mode
            :status pretty-mode
            :on (global-pretty-mode t) (pretty-mode)
            :documentation "Toggle pretty symbols for supported languages"
            :evil-leader "tp")
    )
))
