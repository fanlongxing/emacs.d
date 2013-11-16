;; 配置文件加载目录
(let ((default-directory "~/.emacs.d/lib/"))
  (normal-top-level-add-subdirs-to-load-path))

;;设置redo
(require 'redo+)

;;配置shell-pop
(require 'shell-pop)
(shell-pop-set-internal-mode "ansi-term")
(shell-pop-set-internal-mode-shell "/usr/bin/ipython")
(shell-pop-set-window-height 60) ;the number for the percentage of the selected window. if 100, shell-pop use the whole of selected window, not spliting.
(shell-pop-set-window-position "bottom") ;shell-pop-up position. You can choose "top" or "bottom". 

;;配置markdown-mode
(autoload 'markdown-mode "markdown-mode.el" "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.text\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

;;鼠标指针快速移动
;;安装ace-jump
(require 'ace-jump-mode-autoloads)

;;快速跳转到某一buffer
(require 'ace-jump-buffer-autoloads)

;;添加popwin,按C-g能让消息窗口消失
(require 'popwin)
(popwin-mode 1)


;; 安装expand-region
(require 'expand-region)
(global-set-key (kbd "C-=") 'er/expand-region)
