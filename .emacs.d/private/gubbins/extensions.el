(defvar gubbins-pre-extensions
  '(
    ;; pre extension gubbinss go here
    )
  "List of all extensions to load before the packages.")

(defvar gubbins-post-extensions
  '(
    ;; post extension gubbinss go here
    )
  "List of all extensions to load after the packages.")

;; For each extension, define a function gubbins/init-<extension-gubbins>
;;
;; (defun gubbins/init-my-extension ()
;;   "Initialize my extension"
;;   )
;;
;; Often the body of an initialize function uses `use-package'
;; For more info on `use-package', see readme:
;; https://github.com/jwiegley/use-package
