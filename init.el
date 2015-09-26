(load-theme 'wheatgrass)
(add-to-list 'load-path
              "~/.emacs.d/plugins/yasnippet")
(add-to-list 'load-path
	     "~/.emacs.d/plugins/company-mode")
(add-to-list 'load-path
              "~/.emacs.d/plugins/php-mode")
;;load some plugins
(require 'yasnippet)
(require 'php-mode)
(yas-global-mode 1)
(global-linum-mode 1)
;;yasnippet conf
(autoload 'company-mode "company" nil t)
;;c mode c++ mode 
(add-hook 'c-mode-hook '(lambda () (company-mode)))
(add-hook 'c++-mode-hook '(lambda () (company-mode)))
(add-hook 'python-mode-hook '(lambda () (company-mode)))
(add-hook 'elisp-mode-hook '(lambda () (elisp-mode)))
(add-hook 'php-mode-hook '(lambda () (php-mode)))
;;company mode conf
;;python mode jedi company conf
(defun run-python-once ()
  (remove-hook 'python-mode-hook 'run-python-once)
  (run-python))

(add-hook 'python-mode-hook 'run-python-once)
;;auto run a python process in python mode

