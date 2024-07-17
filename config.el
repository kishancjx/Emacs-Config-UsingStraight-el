(global-set-key "" 'undo) ;;Setting ctrl-z for the undo 
(global-set-key [33554458] 'undo-redo) ;;Setting ctrl-shift-z for the redo
(global-set-key "\357" 'other-window) ;; setting alt-o for next window

(use-package general
    :config
    (general-create-definer cjx/leader-keys
    :keymaps 'override
    :prefix "S-SPC" ;; set leader
    ) 


;; Used for switching Buffers
    (cjx/leader-keys
      "b" '(:ignore t :wk "Switch buffers")
      "b b" '(switch-to-buffer :wk "Switch buffer")
      "b k" '(kill-this-buffer :wk "Kill this buffer")
      "b l" '(next-buffer :wk "Next buffer")
      "b h" '(previous-buffer :wk "Previous buffer")
      "b r" '(revert-buffer :wk "Reload buffer"))

;; Used for Eval-buffer
    (cjx/leader-keys
  "e" '(:ignore t :wk "Evaluate")    
  "e b" '(eval-buffer :wk "Evaluate elisp in buffer")
  "e d" '(eval-defun :wk "Evaluate defun containing or after point")
  "e e" '(eval-expression :wk "Evaluate and elisp expression")
  "e l" '(eval-last-sexp :wk "Evaluate elisp expression before point")
  "e r" '(eval-region :wk "Evaluate elisp in region")) 

  )

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(load-theme 'RedDark t)

;; setting up font and size
(set-face-attribute 'default nil
  :font "JetBrains Mono"
  :height 125
  :weight 'medium)
(set-face-attribute 'variable-pitch nil
  :font "Ubuntu"
  :height 110
  :weight 'medium)
(set-face-attribute 'fixed-pitch nil
  :font "JetBrains Mono"
  :height 125
  :weight 'medium)


;; Makes commented text and keywords italics.
(set-face-attribute 'font-lock-comment-face nil
  :slant 'italic)
(set-face-attribute 'font-lock-keyword-face nil
  :slant 'italic)

;; This sets the default font on all graphical frames created after restarting Emacs.
;; Does the same thing as 'set-face-attribute default' above, but emacsclient fonts
;; are not right unless I also add this method of setting the default font.

(add-to-list 'default-frame-alist '(font . "JetBrains Mono-14"))

(use-package rainbow-mode
  :straight t
:hook 
((org-mode prog-mode) . rainbow-mode))

(use-package all-the-icons
:straight t
  :if (display-graphic-p))

(use-package all-the-icons-dired
:hook (dired-mode . (lambda () (all-the-icons-dired-mode t))))

(global-display-line-numbers-mode t) ;; This will setup the line numbers
(setq display-line-numbers-type 'relative) ;;This will setup the line numbers to relative
(global-visual-line-mode t) ;;This will enable word wrap

(setq inhibit-startup-message t) ;; This will disable the Starting emacs Screen
(menu-bar-mode -1) ;;This Will disable the Menu bar
(tool-bar-mode -1) ;;This Will disable the Tool bar
(toggle-scroll-bar -1) ;;This will disable the scrollbar

(use-package beacon
   :straight t
  :config (beacon-mode 1))

(use-package toc-org
  :straight t 
    :commands toc-org-enable
    :init (add-hook 'org-mode-hook 'toc-org-enable))

(add-hook 'org-mode-hook 'org-indent-mode)
(use-package org-bullets :straight t)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))

(custom-set-faces
 '(org-block ((t (:inherit shadow :extend t :background "black" :foreground "#14a2ff"))))
'(org-block-begin-line ((t (:inherit org-meta-line :extend t :background "black" :foreground "orange" :slant italic))))
'(org-block-end-line ((t (:inherit org-block-begin-line :extend t :background "black" :foreground "orange" :slant italic)))))

(dolist (face '((org-level-1 . 1.3)
                (org-level-2 . 1.15)
                (org-level-3 . 1.05)
                (org-level-4 . 1.05)
                (org-level-5 . 1.05)
                (org-level-6 . 1.05)
                (org-level-7 . 1.05)
                (org-level-8 . 1.05)))
  (set-face-attribute (car face) nil  :weight 'medium :height (cdr face)))

(use-package org-auto-tangle
  :straight t
:defer t
:hook (org-mode . org-auto-tangle-mode)
:config (setq org-auto-tangle-default t))

(org-babel-do-load-languages
'org-babel-load-languages
'(
  (C . t)  ; provide C, C++, and D
  ))

(use-package which-key
  :straight t
  :init
    (which-key-mode 1)
  :config
  (setq which-key-side-window-location 'bottom
	which-key-sort-order #'which-key-key-order-alpha
	which-key-sort-uppercase-first nil
	which-key-add-column-padding 1
	which-key-max-display-columns nil
	which-key-min-display-lines 6
	which-key-side-window-slot -10
	which-key-side-window-max-height 0.25
	which-key-idle-delay 0.8
	which-key-max-description-length 25
	which-key-allow-imprecise-window-fit t
	which-key-separator " -> " ))

(use-package company
   :straight t
  :config
  (setq company-idle-delay 0
        company-minimum-prefix-length 1))
(use-package company-box :straight t)

;;Configuring Vertico
(use-package vertico
   :straight t
  :init
  (vertico-mode)


  )

;;Saving History of all completions , so that i can access files easily
(savehist-mode t)

;;it shows descption of everything in minibuffer
(use-package marginalia
  :straight t
:after vertico

:custom
(marginalia-annotators '(marginalia-annotators-heavy marginalia-annotators-light nil))
:init
(marginalia-mode))

;; Example configuration for Consult
(use-package consult
  ;; Replace bindings. Lazily loaded due by `use-package'.
  :straight t
  :bind (;; C-c bindings in `mode-specific-map'
	 ("C-c M-x" . consult-mode-command)
	 ("C-c h" . consult-history)
	 ("C-c k" . consult-kmacro)
	 ("C-c m" . consult-man)
	 ("C-c i" . consult-info)
	 ([remap Info-search] . consult-info)
	 ;; C-x bindings in `ctl-x-map'
	 ("C-x M-:" . consult-complex-command)     ;; orig. repeat-complex-command
	 ("C-x b" . consult-buffer)                ;; orig. switch-to-buffer
	 ("C-x 4 b" . consult-buffer-other-window) ;; orig. switch-to-buffer-other-window
	 ("C-x 5 b" . consult-buffer-other-frame)  ;; orig. switch-to-buffer-other-frame
	 ("C-x t b" . consult-buffer-other-tab)    ;; orig. switch-to-buffer-other-tab
	 ("C-x r b" . consult-bookmark)            ;; orig. bookmark-jump
	 ("C-x p b" . consult-project-buffer)      ;; orig. project-switch-to-buffer
	 ;; Custom M-# bindings for fast register access
	 ("M-#" . consult-register-load)
	 ("M-'" . consult-register-store)          ;; orig. abbrev-prefix-mark (unrelated)
	 ("C-M-#" . consult-register)
	 ;; Other custom bindings
	 ("M-y" . consult-yank-pop)                ;; orig. yank-pop
	 ;; M-g bindings in `goto-map'
	 ("M-g e" . consult-compile-error)
	 ("M-g f" . consult-flymake)               ;; Alternative: consult-flycheck
	 ("M-g g" . consult-goto-line)             ;; orig. goto-line
	 ("M-g M-g" . consult-goto-line)           ;; orig. goto-line
	 ("M-g o" . consult-outline)               ;; Alternative: consult-org-heading
	 ("M-g m" . consult-mark)
	 ("M-g k" . consult-global-mark)
	 ("M-g i" . consult-imenu)
	 ("M-g I" . consult-imenu-multi)
	 ;; M-s bindings in `search-map'
	 ("M-s d" . consult-find)                  ;; Alternative: consult-fd
	 ("M-s c" . consult-locate)
	 ("M-s g" . consult-grep)
	 ("M-s G" . consult-git-grep)
	 ("M-s r" . consult-ripgrep)
	 ("M-s l" . consult-line)
	 ("M-s L" . consult-line-multi)
	 ("M-s k" . consult-keep-lines)
	 ("M-s u" . consult-focus-lines)
	 ;; Isearch integration
	 ("M-s e" . consult-isearch-history)
	 :map isearch-mode-map
	 ("M-e" . consult-isearch-history)         ;; orig. isearch-edit-string
	 ("M-s e" . consult-isearch-history)       ;; orig. isearch-edit-string
	 ("M-s l" . consult-line)                  ;; needed by consult-line to detect isearch
	 ("M-s L" . consult-line-multi)            ;; needed by consult-line to detect isearch
	 ;; Minibuffer history
	 :map minibuffer-local-map
	 ("M-s" . consult-history)                 ;; orig. next-matching-history-element
	 ("M-r" . consult-history))                ;; orig. previous-matching-history-element

  ;; Enable automatic preview at point in the *Completions* buffer. This is
  ;; relevant when you use the default completion UI.
  :hook (completion-list-mode . consult-preview-at-point-mode)

  ;; The :init configuration is always executed (Not lazy)
  :init

  ;; Optionally configure the register formatting. This improves the register
  ;; preview for `consult-register', `consult-register-load',
  ;; `consult-register-store' and the Emacs built-ins.
  (setq register-preview-delay 0.5
	register-preview-function #'consult-register-format)

  ;; Optionally tweak the register preview window.
  ;; This adds thin lines, sorting and hides the mode line of the window.
  (advice-add #'register-preview :override #'consult-register-window)

  ;; Use Consult to select xref locations with preview
  (setq xref-show-xrefs-function #'consult-xref
	xref-show-definitions-function #'consult-xref)

  ;; Configure other variables and modes in the :config section,
  ;; after lazily loading the package.
  :config

  ;; Optionally configure preview. The default value
  ;; is 'any, such that any key triggers the preview.
  ;; (setq consult-preview-key 'any)
  ;; (setq consult-preview-key "M-.")
  ;; (setq consult-preview-key '("S-<down>" "S-<up>"))
  ;; For some commands and buffer sources it is useful to configure the
  ;; :preview-key on a per-command basis using the `consult-customize' macro.
  (consult-customize
   consult-theme :preview-key '(:debounce 0.2 any)
   consult-ripgrep consult-git-grep consult-grep
   consult-bookmark consult-recent-file consult-xref
   consult--source-bookmark consult--source-file-register
   consult--source-recent-file consult--source-project-recent-file
   ;; :preview-key "M-."
   :preview-key '(:debounce 0.4 any))

  ;; Optionally configure the narrowing key.
  ;; Both < and C-+ work reasonably well.
  (setq consult-narrow-key "<") ;; "C-+"

  ;; Optionally make narrowing help available in the minibuffer.
  ;; You may want to use `embark-prefix-help-command' or which-key instead.
  ;; (define-key consult-narrow-map (vconcat consult-narrow-key "?") #'consult-narrow-help)

  ;; By default `consult-project-function' uses `project-root' from project.el.
  ;; Optionally configure a different project root function.
  ;;;; 1. project.el (the default)
  ;; (setq consult-project-function #'consult--default-project--function)
  ;;;; 2. vc.el (vc-root-dir)
  ;; (setq consult-project-function (lambda (_) (vc-root-dir)))
  ;;;; 3. locate-dominating-file
  ;; (setq consult-project-function (lambda (_) (locate-dominating-file "." ".git")))
  ;;;; 4. projectile.el (projectile-project-root)
  ;; (autoload 'projectile-project-root "projectile")
  ;; (setq consult-project-function (lambda (_) (projectile-project-root)))
  ;;;; 5. No project support
  ;; (setq consult-project-function nil)
)

(use-package orderless
 :straight t
:custom
(completion-styles '(orderless basic))
(completion-category-overrides '((file (styles basic partial-completion)))))

(use-package embark

:straight t
  :bind
  (("C-." . embark-act)         ;; pick some comfortable binding
   ("C-;" . embark-dwim)        ;; good alternative: M-.
   ("C-h B" . embark-bindings)) ;; alternative for `describe-bindings'

  :init

  ;; Optionally replace the key help with a completing-read interface
  (setq prefix-help-command #'embark-prefix-help-command)

  ;; Show the Embark target at point via Eldoc. You may adjust the
  ;; Eldoc strategy, if you want to see the documentation from
  ;; multiple providers. Beware that using this can be a little
  ;; jarring since the message shown in the minibuffer can be more
  ;; than one line, causing the modeline to move up and down:

  ;; (add-hook 'eldoc-documentation-functions #'embark-eldoc-first-target)
  ;; (setq eldoc-documentation-strategy #'eldoc-documentation-compose-eagerly)

  :config

  ;; Hide the mode line of the Embark live/completions buffers
  (add-to-list 'display-buffer-alist
	       '("\\`\\*Embark Collect \\(Live\\|Completions\\)\\*"
		 nil
		 (window-parameters (mode-line-format . none)))))

;; Consult users will also want the embark-consult package.
(use-package embark-consult
:straight t
    ; only need to install it, embark loads it after consult if found
  :hook
  (embark-collect-mode . consult-preview-at-point-mode))

(use-package drag-stuff
   :straight t
:init
(drag-stuff-global-mode 1)
(drag-stuff-define-keys))

;; This thing below helps to navigate to whatever the function defenition is
;; by which we can learn elisp somewhat easily
(use-package elisp-slime-nav
   :straight t
  :config (elisp-slime-nav-mode))

;;RJSX MODE
(use-package rjsx-mode
  :straight t
  :mode "\\.js\\'")


;;TIDE
(defun setup-tide-mode()
  (interactive)
  (tide-setup)
  (flycheck-mode +1)
  (setq flycheck-syntax-automatically '(save mode-enabled))
  (tide-hl-identifier-mode +1)
  (company-mode +1)
  (company-box-mode +1))

(use-package tide
 :straight t
  :after (rjsx-mode company flycheck)
  :hook (rjsx-mode . setup-tide-mode))


;;Preittier
(use-package prettier-js
 :straight t
  :after (rjsx-mode)
  :hook (rjsx-mode . prettier-js-mode))

(electric-pair-mode 1)