;;; init-neotree.el --- Sidebar tree view for the project directory -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(when (maybe-require-package 'neotree)
  (global-set-key (kbd "s-d") 'neotree-toggle))

(provide 'init-neotree)
;;; init-neotree.el ends here
