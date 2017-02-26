(use-package shackle)
;; (setq shackle-default-rule '(:same t))
;; (setq shackle-rules '((compilation-mode :noselect t))
;;       shackle-default-rule '(:select t))
(setq shackle-rules
      '((compilation-mode :noselect t :align 'below)
        (t :select t)))
;; to avoid slowness on OSX GUI mode Emacs
(setq shackle-lighter "s")

(setq helm-display-function 'pop-to-buffer) ; make helm play nice
(setq shackle-rules '(("\\`\\*helm.*?\\*\\'" :regexp t :align t :size 0.4)))
(setq shackle-rules '(("\\`\\*GO.*?\\*\\'" :regexp t :align t :size 0.4)))
(setq shackle-rules '(("\\`\\*Python.*?\\*\\'" :regexp t :align t :size 0.2)))

;;("*Warnnings*" :select nil :other t)
