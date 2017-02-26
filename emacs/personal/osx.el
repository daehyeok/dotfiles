(defvar eshell-path-env (getenv "PATH")
  "Content of $PATH.
It might be different from \(getenv \"PATH\"\), when
`default-directory' points to a remote host.")

;;for OSX
(setq mac-command-modifier 'meta)

(setq exec-path-from-shell-check-startup-files nil)
(exec-path-from-shell-initialize)
(defun set-exec-path-from-shell-PATH ()
  (let ((path-from-shell (replace-regexp-in-string
                          "[ \t\n]*$"
                          ""
                          (shell-command-to-string "$SHELL --login -i -c 'echo $PATH'"))))
    (setenv "PATH" path-from-shell)
    (setq eshell-path-env path-from-shell) ; for eshell users
    (setq exec-path (split-string path-from-shell path-separator))))
(when window-system (set-exec-path-from-shell-PATH))


(exec-path-from-shell-copy-env "PYTHONPATH")
(setq exec-path-from-shell-arguments '("-l"))
(set 'path-from-shell "/usr/local/go/bin/:/Users/daehyeok/.gvm/bin:/Users/daehyeok/.cask/bin:/Users/daehyeok/miniconda3/bin:/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games")
