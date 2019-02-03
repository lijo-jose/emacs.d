;;; init-personal-keybindings.el --- Day-to-day editing helpers -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(maybe-require-package 'dash)

(defun kill-other-buffers ()
  "Kill all buffers but the current one.
Doesn't mess with special buffers."
  (interactive)
  (-each
      (->> (buffer-list)
           (-filter #'buffer-file-name)
           (--remove (eql (current-buffer) it)))
    #'kill-buffer))

(defun custom/kill-this-buffer ()
  "Kill the current buffer."
  (interactive)
  (kill-buffer (current-buffer)))

;;;;;;;;;;;;;;;;
;; navigation ;;
;;;;;;;;;;;;;;;;

(global-set-key (kbd "s-<up>") 'backward-paragraph)
(global-set-key (kbd "s-<down>") 'forward-paragraph)
(global-set-key (kbd "s-<left>") 'backward-word)
(global-set-key (kbd "s-<right>") 'forward-word)
(global-set-key (kbd "s-e") 'end-of-line)
(global-set-key (kbd "s-a") 'beginning-of-line)


;;;;;;;;;;;;;;;;;;;;;;;
;; buffer management ;;
;;;;;;;;;;;;;;;;;;;;;;;
(global-set-key (kbd "C-c k") #'kill-other-buffers)
(global-set-key (kbd "C-x k") 'custom/kill-this-buffer)

;;;;;;;;;;;;
;; search ;;
;;;;;;;;;;;;
(global-set-key (kbd "C-s") 'sanityinc/swiper-at-point)

(provide 'init-personal-keybindings)
;;; init-personal-keybindings.el ends here
