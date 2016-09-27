(require 'package) ;; You might already have this line
          (add-to-list 'package-archives
          '("popkit" . "https://elpa.popkit.org/packages/"))
          (when (< emacs-major-version 24)
          ;; For important compatibility libraries like cl-lib
          (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))

(setq package-archives '(("gnu"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
                         ("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")))

(setq package-archives '(("gnu"   . "http://elpa.zilongshanren.com/gnu/")
                         ("melpa" . "http://elpa.zilongshanren.com/melpa/")))

(package-initialize) ;; You might already have this line


(add-hook 'c++-mode-hook 'company-mode)
(add-hook 'c++-mode-hook 'ycmd-mode)
(add-hook 'c++-mode-hook 'flycheck-mode)
(add-hook 'c++-mode-hook 'flymake-mode)
(require 'ycmd)
(set-variable 'ycmd-server-command 
    '("python" "/root/ycmd/ycmd"))
(set-variable 'ycmd-global-config "/root/ycmd/examples/.ycm_extra_conf.py")
(provide 'init-ycmd)
(require 'flycheck-ycmd)
(flycheck-ycmd-setup)
(require 'company-ycmd)
(company-ycmd-setup)
