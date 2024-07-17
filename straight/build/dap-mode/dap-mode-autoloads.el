;;; dap-mode-autoloads.el --- automatically extracted autoloads (do not edit)   -*- lexical-binding: t -*-
;; Generated by the `loaddefs-generate' function.

;; This file is part of GNU Emacs.

;;; Code:



;;; Generated autoloads from dap-chrome.el

(register-definition-prefixes "dap-chrome" '("dap-chrome-"))


;;; Generated autoloads from dap-codelldb.el

(register-definition-prefixes "dap-codelldb" '("dap-codelldb-"))


;;; Generated autoloads from dap-cpptools.el

(register-definition-prefixes "dap-cpptools" '("dap-cpptools-"))


;;; Generated autoloads from dap-dlv-go.el

(register-definition-prefixes "dap-dlv-go" '("dap-dlv-go-"))


;;; Generated autoloads from dap-docker.el

(register-definition-prefixes "dap-docker" '("dap-docker-"))


;;; Generated autoloads from dap-edge.el

(register-definition-prefixes "dap-edge" '("dap-edge-"))


;;; Generated autoloads from dap-elixir.el

(register-definition-prefixes "dap-elixir" '("dap-elixir--populate-start-file-args"))


;;; Generated autoloads from dap-erlang.el

(register-definition-prefixes "dap-erlang" '("dap-erlang--populate-start-file-args"))


;;; Generated autoloads from dap-firefox.el

(register-definition-prefixes "dap-firefox" '("dap-firefox-"))


;;; Generated autoloads from dap-gdb.el

(register-definition-prefixes "dap-gdb" '("dap-gdb-"))


;;; Generated autoloads from dap-gdb-lldb.el

(register-definition-prefixes "dap-gdb-lldb" '("dap-gdb-lldb-"))


;;; Generated autoloads from dap-gdscript.el

(register-definition-prefixes "dap-gdscript" '("dap-gdscript-"))


;;; Generated autoloads from dap-go.el

(register-definition-prefixes "dap-go" '("dap-go-"))


;;; Generated autoloads from dap-hydra.el

(autoload 'dap-hydra "dap-hydra" "\
Run `dap-hydra/body'." t)
(register-definition-prefixes "dap-hydra" '("dap-hydra"))


;;; Generated autoloads from dap-js.el

(register-definition-prefixes "dap-js" '("dap-js-"))


;;; Generated autoloads from dap-kotlin.el

(register-definition-prefixes "dap-kotlin" '("dap-kotlin-"))


;;; Generated autoloads from dap-launch.el

(register-definition-prefixes "dap-launch" '("dap-"))


;;; Generated autoloads from dap-lldb.el

(register-definition-prefixes "dap-lldb" '("dap-lldb-"))


;;; Generated autoloads from dap-magik.el

(register-definition-prefixes "dap-magik" '("dap-magik-"))


;;; Generated autoloads from dap-mode.el

(autoload 'dap-debug "dap-mode" "\
Run debug configuration DEBUG-ARGS.

If DEBUG-ARGS is not specified the configuration is generated
after selecting configuration template.

:dap-compilation specifies a shell command to be run using
`compilation-start' before starting the debug session. It could
be used to compile the project, spin up docker, ....

(fn DEBUG-ARGS)" t)
(defvar dap-mode nil "\
Non-nil if Dap mode is enabled.
See the `dap-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `dap-mode'.")
(custom-autoload 'dap-mode "dap-mode" nil)
(autoload 'dap-mode "dap-mode" "\
Global minor mode for DAP mode.

This is a global minor mode.  If called interactively, toggle the
`Dap mode' mode.  If the prefix argument is positive, enable the
mode, and if it is zero or negative, disable the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable
the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate `(default-value \\='dap-mode)'.

The mode's hook is called both when the mode is enabled and when
it is disabled.

(fn &optional ARG)" t)
(defvar dap-auto-configure-mode nil "\
Non-nil if Dap-Auto-Configure mode is enabled.
See the `dap-auto-configure-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `dap-auto-configure-mode'.")
(custom-autoload 'dap-auto-configure-mode "dap-mode" nil)
(autoload 'dap-auto-configure-mode "dap-mode" "\
Auto configure dap minor mode.

This is a global minor mode.  If called interactively, toggle the
`Dap-Auto-Configure mode' mode.  If the prefix argument is
positive, enable the mode, and if it is zero or negative, disable
the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable
the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate `(default-value \\='dap-auto-configure-mode)'.

The mode's hook is called both when the mode is enabled and when
it is disabled.

(fn &optional ARG)" t)
(register-definition-prefixes "dap-mode" '("dap-"))


;;; Generated autoloads from dap-mouse.el

(defvar dap-tooltip-mode nil "\
Non-nil if Dap-Tooltip mode is enabled.
See the `dap-tooltip-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `dap-tooltip-mode'.")
(custom-autoload 'dap-tooltip-mode "dap-mouse" nil)
(autoload 'dap-tooltip-mode "dap-mouse" "\
Toggle the display of GUD tooltips.

This is a global minor mode.  If called interactively, toggle the
`Dap-Tooltip mode' mode.  If the prefix argument is positive,
enable the mode, and if it is zero or negative, disable the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable
the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate `(default-value \\='dap-tooltip-mode)'.

The mode's hook is called both when the mode is enabled and when
it is disabled.

(fn &optional ARG)" t)
(register-definition-prefixes "dap-mouse" '("dap-"))


;;; Generated autoloads from dap-netcore.el

(register-definition-prefixes "dap-netcore" '("dap-netcore-"))


;;; Generated autoloads from dap-node.el

(register-definition-prefixes "dap-node" '("dap-node-"))


;;; Generated autoloads from dap-ocaml.el

(register-definition-prefixes "dap-ocaml" '("dap-ocaml-"))


;;; Generated autoloads from dap-overlays.el

(register-definition-prefixes "dap-overlays" '("dap-overlays-"))


;;; Generated autoloads from dap-php.el

(register-definition-prefixes "dap-php" '("dap-php-"))


;;; Generated autoloads from dap-pwsh.el

(register-definition-prefixes "dap-pwsh" '("dap-pwsh-"))


;;; Generated autoloads from dap-python.el

(register-definition-prefixes "dap-python" '("dap-python-"))


;;; Generated autoloads from dap-ruby.el

(register-definition-prefixes "dap-ruby" '("dap-ruby-"))


;;; Generated autoloads from dap-swi-prolog.el

(register-definition-prefixes "dap-swi-prolog" '("dap-swi-prolog-"))


;;; Generated autoloads from dap-tasks.el

(register-definition-prefixes "dap-tasks" '("dap-tasks-"))


;;; Generated autoloads from dap-ui.el

(defvar dap-ui-mode nil "\
Non-nil if Dap-Ui mode is enabled.
See the `dap-ui-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `dap-ui-mode'.")
(custom-autoload 'dap-ui-mode "dap-ui" nil)
(autoload 'dap-ui-mode "dap-ui" "\
Displaying DAP visuals.

This is a global minor mode.  If called interactively, toggle the
`Dap-Ui mode' mode.  If the prefix argument is positive, enable
the mode, and if it is zero or negative, disable the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable
the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate `(default-value \\='dap-ui-mode)'.

The mode's hook is called both when the mode is enabled and when
it is disabled.

(fn &optional ARG)" t)
(autoload 'dap-ui-breakpoints-list "dap-ui" "\
List breakpoints." t)
(defvar dap-ui-controls-mode nil "\
Non-nil if Dap-Ui-Controls mode is enabled.
See the `dap-ui-controls-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `dap-ui-controls-mode'.")
(custom-autoload 'dap-ui-controls-mode "dap-ui" nil)
(autoload 'dap-ui-controls-mode "dap-ui" "\
Displaying DAP visuals.

This is a global minor mode.  If called interactively, toggle the
`Dap-Ui-Controls mode' mode.  If the prefix argument is positive,
enable the mode, and if it is zero or negative, disable the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable
the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate `(default-value \\='dap-ui-controls-mode)'.

The mode's hook is called both when the mode is enabled and when
it is disabled.

(fn &optional ARG)" t)
(autoload 'dap-ui-sessions "dap-ui" "\
Show currently active sessions." t)
(autoload 'dap-ui-locals "dap-ui" nil t)
(autoload 'dap-ui-show-many-windows "dap-ui" "\
Show auto configured feature windows." t)
(autoload 'dap-ui-hide-many-windows "dap-ui" "\
Hide all debug windows when sessions are dead." t)
(autoload 'dap-ui-repl "dap-ui" "\
Start an adapter-specific REPL.
This could be used to evaluate JavaScript in a browser, to
evaluate python in the context of the debugee, ...." t)
(register-definition-prefixes "dap-ui" '("dap-"))


;;; Generated autoloads from dap-unity.el

(register-definition-prefixes "dap-unity" '("dap-unity-"))


;;; Generated autoloads from dap-utils.el

(register-definition-prefixes "dap-utils" '("dap-utils-"))


;;; Generated autoloads from dap-variables.el

(register-definition-prefixes "dap-variables" '("dap-variables-"))

;;; End of scraped data

(provide 'dap-mode-autoloads)

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; no-native-compile: t
;; coding: utf-8-emacs-unix
;; End:

;;; dap-mode-autoloads.el ends here
