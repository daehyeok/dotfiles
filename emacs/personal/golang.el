(defun my-go-mode-hook ()
  (local-set-key (kbd "M-.") 'godef-jump))
(add-hook 'go-mode-hook 'my-go-mode-hook)

;; (setenv "GOPATH" "/Users/daehyeok/.go")
;(require 'golint)

;; (defvar popwin:special-display-config-backup popwin:special-display-config)
;; (setq display-buffer-function 'popwin:display-buffer)
;; (push '("^\*go-direx:" :regexp t :position left :width 0.4 :dedicated t :stick t)
;; 			popwin:special-display-config)


;; go-direx
;; (require 'go-direx)
;; (define-key go-mode-map (kbd "C-c C-j") 'go-direx-pop-to-buffer)
;; (defvar popwin:special-display-config-backup popwin:special-display-config)
;; (setq display-buffer-function 'popwin:display-buffer)
;; (push '("^\*go-direx:" :regexp t :position left :width 0.4 :dedicated t :stick t)
;; 			popwin:special-display-config)

;; (provide 'setup-go-mode)
(use-package go-mode)
(use-package godoctor)
(use-package go-projectile)
(use-package flycheck-gometalinter)
(eval-after-load 'flycheck
  '(add-hook 'flycheck-mode-hook #'flycheck-gometalinter-setup))

;; skips 'vendor' directories and sets GO15VENDOREXPERIMENT=1
(setq flycheck-gometalinter-vendor t)
;; only run fast linters
(setq flycheck-gometalinter-fast t)
;; use in tests files
(setq flycheck-gometalinter-test t)
(setq flycheck-gometalinter-disable-linters '("gotype" "gocyclo"))
;; Only enable selected linters
;; (setq flycheck-gometalinter-disable-all t)
;; (setq flycheck-gometalinter-enable-linters '("ineffassign"))
;; Set different deadline (default: 5s)
(setq flycheck-gometalinter-deadline "180s")

;; (use-package go-mode
;;              :config (use-package godoctor))


