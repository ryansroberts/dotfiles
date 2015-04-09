(defvar pretty-pre-extensions
  '(
    ;; pre extension prettys go here
    )
  "List of all extensions to load before the packages.")

(defvar pretty-post-extensions
  '(
    ;; post extension prettys go here
    )
  "List of all extensions to load after the packages.")

;; For each extension, define a function pretty/init-<extension-pretty>
;;
;; (defun pretty/init-my-extension ()
;;   "Initialize my extension"
;;   )
;;
;; Often the body of an initialize function uses `use-package'
;; For more info on `use-package', see readme:
;; https://github.com/jwiegley/use-package
