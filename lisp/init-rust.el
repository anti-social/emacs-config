(require 'init-elpa)
(require-package 'company)
(require-package 'racer)
(require-package 'rust-mode)
(require-package 'flycheck)
(require-package 'flycheck-rust)

(require 'company)
(require 'racer)
(require 'rust-mode)
(require 'electric)
(require 'eldoc)
(require 'flycheck)
(require 'flycheck-rust)

(add-to-list 'auto-mode-alist '("\\.rs\\'" . rust-mode))
(add-hook 'rust-mode-hook #'company-mode)
(add-hook 'rust-mode-hook #'racer-mode)
(add-hook 'racer-mode-hook #'eldoc-mode)
(add-hook 'flycheck-mode-hook #'flycheck-rust-setup)
(add-hook 'rust-mode-hook
          '(lambda ()
             ;; (setq racer-cmd (concat (getenv "HOME") "/.rust-dev/racer/target/release/racer"))
             ;; (setq racer-rust-src-path (concat (getenv "HOME") "/.rust-dev/rust/src"))
             (setq racer-cmd "/usr/local/bin/racer")
             (setq racer-rust-src-path "/usr/src/rust/src")
             (local-set-key (kbd "TAB") #'company-indent-or-complete-common)
             (local-set-key (kbd "C-c <tab>") #'rust-format-buffer)
             (electric-pair-mode 1)))

(add-hook 'rust-mode-hook
          '(lambda () (fci-mode 1)))

;; (define-key rust-mode-map (kbd "TAB") #'company-indent-or-complete-common)

(add-hook 'flycheck-mode-hook #'flycheck-rust-setup)

(provide 'init-rust)
