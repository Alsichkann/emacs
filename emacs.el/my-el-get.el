;使用package.el管理emacs宏包
(require 'cl)   ;elpa好像需要cl(内建支持)，所以先require一下
(require 'package)
(package-initialize)
(setq package-archives 
      '(("local-dir" . “~/Sync/Dropbox/Emacs/packages/“)
        ("gnu" . "http://elpa.gnu.org/packages/")
        ("marmalade" . "http://marmalade-repo.org/packages/")
        ("melpa" . "http://melpa.milkbox.net/packages/")))


;;el-get setting

(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.github.com/dimitri/el-get/master/el-get-install.el")
    (let (el-get-master-branch)
      (goto-char (point-max))
      (eval-print-last-sexp))))

(el-get 'sync)
;; now either el-get is `require'd already, or have been `load'ed by the
;; el-get installer.


;; set local recipes
(setq
 el-get-sources
 '((:name buffer-move   ; have to add your own keys
           :after (progn
                    (global-set-key (kbd "<C-up>") 'buf-move-up)
                    (global-set-key (kbd "<C-down>") 'buf-move-down)
                    (global-set-key (kbd "<C-left>") 'buf-move-left)
                    (global-set-key (kbd "<C-right>") 'buf-move-right)))
                                                                          ))
;; now set our own packages
(setq my-el-get-packages
      (append
      '(buffer-move el-get auto-complete)
       (mapcar 'el-get-source-name el-get-sources)))

(el-get 'sync my-el-get-packages)

(provide 'my-el-get)













;;el-get setting ended
