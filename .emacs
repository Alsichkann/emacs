;;将下载的lisp放在~/myemacs/packages
 ;;(add-to-list 'load-path "~/myemacs/emacs.el" "~/myemacs/emacs.init")
 ;;(mapc 'load (directory-files "~/myemacs/emacs.init" t "^[a-zA-Z0-9].*.el$"))
;;设置风格corlor theme


;;将下载的lisp放在~/myemacs/packages
;(add-to-list 'load-path "~/Sync/Dropbox/uemacs/emacs.el")
;(load "~/Sync/Dropbox/uemacs/emacs.el/subdirs")
;(require 'myemacs)


;;The following is test;;

(add-to-list 'load-path "~/Sync/Dropbox/Emacs/emacs.el")
(load "~/Sync/Dropbox/Emacs/emacs.el/subdirs")
(require 'myemacs)

;;The above is test;;

(global-set-key [(f1)] (lambda()        ;;设定F1为woman快捷键
(interactive) 
(let ((woman-topic-at-point t))
(woman))))
(setq woman-use-own-frame nil)  
(require 'buffer-move) 