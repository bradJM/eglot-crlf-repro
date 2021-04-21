(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package)
  (eval-when-compile (require 'use-package)))
  
(use-package eglot
  :ensure
  :commands eglot
  :config (add-to-list 'eglot-server-programs '(c++-mode . ("clangd"))))
