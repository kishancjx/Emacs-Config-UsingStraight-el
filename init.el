


(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name
        "straight/repos/straight.el/bootstrap.el"
        (or (bound-and-true-p straight-base-dir)
            user-emacs-directory)))
      (bootstrap-version 7))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/radian-software/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

;; Install use-package
(straight-use-package 'use-package)

;; Configure use-package to use straight.el by default
(use-package straight
  :custom
  (straight-use-package-by-default t))



(org-babel-load-file
 (expand-file-name
  "config.org"
  user-emacs-directory))







(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-block ((t (:inherit shadow :extend t :background "gainsboro" :foreground "dark slate gray"))))
 '(org-block-begin-line ((t (:inherit org-meta-line :extend t :background "gainsboro" :foreground "dim gray" :slant italic :weight semi-light))))
 '(org-block-end-line ((t (:inherit org-block-begin-line :extend t :background "gainsboro" :foreground "dim gray" :slant italic :weight semi-light)))))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("a4023b0b333f78a40784cc85c62624786298443c8190d24ea2a055dd6ca924ec" default)))
