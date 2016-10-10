(require 'init-elpa)
(require-package 'yaml-mode)
(require-package 'flymake-yaml)

(require 'yaml-mode)
(require 'flymake-yaml)
(add-hook 'yaml-mode-hook 'flymake-yaml-load)

(add-to-list 'auto-mode-alist '("Makefile\\..*\\'" . makefile-mode))

(provide 'init-conf)
