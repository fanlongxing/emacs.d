(add-to-list 'load-path "~/.emacs.d/config")

(load "init-base.el")
(load "init-face.el")			
(load "init-func.el")
(load "init-misc.el")
(load "init-dev.el")
(load "init-kbd.el")
(put 'erase-buffer 'disabled nil)
