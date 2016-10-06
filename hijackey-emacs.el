;;; hijackey-emacs.el --- Contains hijacked terminal codes in order to emulate key combinations.

;; Copyright (C) 2016 Louis Pan
;; Author: Louis Pan <louis@pan.me>
;; Keywords: convenience, tools, extensions
;; Homepage: https://github.com/louispan/hijackey-emacs

;; This file is not part of GNU Emacs.

;;; Commentary:
;; Needs a corresponding iTerm or Konsole config that sends these keycodes.

;;; Code:
;; http://emacs.stackexchange.com/questions/10681/how-to-set-a-terminal-local-variable-in-all-terminals
;; input-decode-map is a terminal-local variable which need hooking for daemon mode.
;; Hook to with-selected-frame and setup within the frame.
(defun hijackey-setup ()
  ;; ESC
  (define-key input-decode-map "\e[72;27;2~" (kbd "S-<escape>"))
  (define-key input-decode-map "\e[72;27;3~" (kbd "M-<escape>"))
  (define-key input-decode-map "\e[72;27;4~" (kbd "S-M-<escape>"))
  (define-key input-decode-map "\e[72;27;5~" (kbd "C-<escape>"))
  (define-key input-decode-map "\e[72;27;6~" (kbd "C-S-<escape>"))
  (define-key input-decode-map "\e[72;27;7~" (kbd "C-M-<escape>"))
  (define-key input-decode-map "\e[72;27;8~" (kbd "C-S-M-<escape>"))

  ;; RET
  ;; RET is already available in both graphical and console
  (define-key input-decode-map "\eOM" "S-<return>")
  ;; M-RET is already available in both graphical and console.
  (define-key input-decode-map (kbd "M-RET") (kbd "M-<return>"))
  (define-key input-decode-map "\e[72;13;4~" (kbd "S-M-<return>"))
  (define-key input-decode-map "\e[72;13;5~" (kbd "C-<return>"))
  (define-key input-decode-map "\e[72;13;6~" (kbd "C-S-<return>"))
  (define-key input-decode-map "\e[72;13;7~" (kbd "C-M-<return>"))
  (define-key input-decode-map "\e[72;13;8~" (kbd "C-S-M-<return>"))

  ;; Backspace
  (define-key input-decode-map "\e[72;8;2~"  (kbd "S-<backspace>"))
  (define-key input-decode-map (kbd "M-DEL") (kbd "M-<backspace>"))
  (define-key input-decode-map "\e[72;8;4~"  (kbd "S-M-<backspace>"))
  (define-key input-decode-map "\e[72;8;5~"  (kbd "C-<backspace>"))
  (define-key input-decode-map "\e[72;8;6~"  (kbd "C-S-<backspace>"))
  (define-key input-decode-map "\e[72;8;7~"  (kbd "C-M-<backspace>"))
  (define-key input-decode-map "\e[72;8;8~"  (kbd "C-S-M-<backspace>"))

  ;; Backspace
  (define-key input-decode-map "\e[72;32;2~"  (kbd "S-SPC"))
  (define-key input-decode-map "\e[72;32;3~"  (kbd "M-SPC"))
  (define-key input-decode-map "\e[72;32;4~"  (kbd "S-M-SPC"))
  (define-key input-decode-map (kbd "C-@")    (kbd "C-SPC"))
  (define-key input-decode-map "\e[72;32;6~"  (kbd "C-S-SPC"))
  (define-key input-decode-map "\e[72;32;7~"  (kbd "C-M-SPC"))
  (define-key input-decode-map "\e[72;32;8~"  (kbd "C-M-S-SPC"))

  ;; C-S-alpha
  (define-key input-decode-map "\e[72;97;6~"  (kbd "C-S-a"))
  (define-key input-decode-map "\e[72;98;6~"  (kbd "C-S-b"))
  (define-key input-decode-map "\e[72;99;6~"  (kbd "C-S-c"))
  (define-key input-decode-map "\e[72;100;6~" (kbd "C-S-d"))
  (define-key input-decode-map "\e[72;101;6~" (kbd "C-S-e"))
  (define-key input-decode-map "\e[72;102;6~" (kbd "C-S-f"))
  (define-key input-decode-map "\e[72;103;6~" (kbd "C-S-g"))
  (define-key input-decode-map "\e[72;104;6~" (kbd "C-S-h"))
  (define-key input-decode-map "\e[72;105;6~" (kbd "C-S-i"))
  (define-key input-decode-map "\e[72;106;6~" (kbd "C-S-j"))
  (define-key input-decode-map "\e[72;107;6~" (kbd "C-S-k"))
  (define-key input-decode-map "\e[72;108;6~" (kbd "C-S-l"))
  (define-key input-decode-map "\e[72;109;6~" (kbd "C-S-m"))
  (define-key input-decode-map "\e[72;110;6~" (kbd "C-S-n"))
  (define-key input-decode-map "\e[72;111;6~" (kbd "C-S-o"))
  (define-key input-decode-map "\e[72;112;6~" (kbd "C-S-p"))
  (define-key input-decode-map "\e[72;113;6~" (kbd "C-S-q"))
  (define-key input-decode-map "\e[72;114;6~" (kbd "C-S-r"))
  (define-key input-decode-map "\e[72;115;6~" (kbd "C-S-s"))
  (define-key input-decode-map "\e[72;116;6~" (kbd "C-S-t"))
  (define-key input-decode-map "\e[72;117;6~" (kbd "C-S-u"))
  (define-key input-decode-map "\e[72;118;6~" (kbd "C-S-v"))
  (define-key input-decode-map "\e[72;119;6~" (kbd "C-S-w"))
  (define-key input-decode-map "\e[72;120;6~" (kbd "C-S-x"))
  (define-key input-decode-map "\e[72;121;6~" (kbd "C-S-y"))
  (define-key input-decode-map "\e[72;122;6~" (kbd "C-S-z"))

  ;; C-M-alpha
  (define-key input-decode-map "\e[72;97;7~"  (kbd "C-M-a"))
  (define-key input-decode-map "\e[72;98;7~"  (kbd "C-M-b"))
  (define-key input-decode-map "\e[72;99;7~"  (kbd "C-M-c"))
  (define-key input-decode-map "\e[72;100;7~" (kbd "C-M-d"))
  (define-key input-decode-map "\e[72;101;7~" (kbd "C-M-e"))
  (define-key input-decode-map "\e[72;102;7~" (kbd "C-M-f"))
  (define-key input-decode-map "\e[72;103;7~" (kbd "C-M-g"))
  (define-key input-decode-map "\e[72;104;7~" (kbd "C-M-h"))
  (define-key input-decode-map "\e[72;105;7~" (kbd "C-M-i"))
  (define-key input-decode-map "\e[72;106;7~" (kbd "C-M-j"))
  (define-key input-decode-map "\e[72;107;7~" (kbd "C-M-k"))
  (define-key input-decode-map "\e[72;108;7~" (kbd "C-M-l"))
  (define-key input-decode-map "\e[72;109;7~" (kbd "C-M-m"))
  (define-key input-decode-map "\e[72;110;7~" (kbd "C-M-n"))
  (define-key input-decode-map "\e[72;111;7~" (kbd "C-M-o"))
  (define-key input-decode-map "\e[72;112;7~" (kbd "C-M-p"))
  (define-key input-decode-map "\e[72;113;7~" (kbd "C-M-q"))
  (define-key input-decode-map "\e[72;114;7~" (kbd "C-M-r"))
  (define-key input-decode-map "\e[72;115;7~" (kbd "C-M-s"))
  (define-key input-decode-map "\e[72;116;7~" (kbd "C-M-t"))
  (define-key input-decode-map "\e[72;117;7~" (kbd "C-M-u"))
  (define-key input-decode-map "\e[72;118;7~" (kbd "C-M-v"))
  (define-key input-decode-map "\e[72;119;7~" (kbd "C-M-w"))
  (define-key input-decode-map "\e[72;120;7~" (kbd "C-M-x"))
  (define-key input-decode-map "\e[72;121;7~" (kbd "C-M-y"))
  (define-key input-decode-map "\e[72;122;7~" (kbd "C-M-z"))

  ;; C-S-M-alpha
  (define-key input-decode-map "\e[72;97;8~"  (kbd "C-S-M-a"))
  (define-key input-decode-map "\e[72;98;8~"  (kbd "C-S-M-b"))
  (define-key input-decode-map "\e[72;99;8~"  (kbd "C-S-M-c"))
  (define-key input-decode-map "\e[72;100;8~" (kbd "C-S-M-d"))
  (define-key input-decode-map "\e[72;101;8~" (kbd "C-S-M-e"))
  (define-key input-decode-map "\e[72;102;8~" (kbd "C-S-M-f"))
  (define-key input-decode-map "\e[72;103;8~" (kbd "C-S-M-g"))
  (define-key input-decode-map "\e[72;104;8~" (kbd "C-S-M-h"))
  (define-key input-decode-map "\e[72;105;8~" (kbd "C-S-M-i"))
  (define-key input-decode-map "\e[72;106;8~" (kbd "C-S-M-j"))
  (define-key input-decode-map "\e[72;107;8~" (kbd "C-S-M-k"))
  (define-key input-decode-map "\e[72;108;8~" (kbd "C-S-M-l"))
  (define-key input-decode-map "\e[72;109;8~" (kbd "C-S-M-m"))
  (define-key input-decode-map "\e[72;110;8~" (kbd "C-S-M-n"))
  (define-key input-decode-map "\e[72;111;8~" (kbd "C-S-M-o"))
  (define-key input-decode-map "\e[72;112;8~" (kbd "C-S-M-p"))
  (define-key input-decode-map "\e[72;113;8~" (kbd "C-S-M-q"))
  (define-key input-decode-map "\e[72;114;8~" (kbd "C-S-M-r"))
  (define-key input-decode-map "\e[72;115;8~" (kbd "C-S-M-s"))
  (define-key input-decode-map "\e[72;116;8~" (kbd "C-S-M-t"))
  (define-key input-decode-map "\e[72;117;8~" (kbd "C-S-M-u"))
  (define-key input-decode-map "\e[72;118;8~" (kbd "C-S-M-v"))
  (define-key input-decode-map "\e[72;119;8~" (kbd "C-S-M-w"))
  (define-key input-decode-map "\e[72;120;8~" (kbd "C-S-M-x"))
  (define-key input-decode-map "\e[72;121;8~" (kbd "C-S-M-y"))
  (define-key input-decode-map "\e[72;122;8~" (kbd "C-S-M-z"))

  ;; C-numbers
  (define-key input-decode-map "\e[72;48;5~" (kbd "C-0"))
  (define-key input-decode-map "\e[72;49;5~" (kbd "C-1"))
  (define-key input-decode-map "\e[72;50;5~" (kbd "C-2"))
  (define-key input-decode-map "\e[72;51;5~" (kbd "C-3"))
  (define-key input-decode-map "\e[72;52;5~" (kbd "C-4"))
  (define-key input-decode-map "\e[72;53;5~" (kbd "C-5"))
  (define-key input-decode-map "\e[72;54;5~" (kbd "C-6"))
  (define-key input-decode-map "\e[72;55;5~" (kbd "C-7"))
  (define-key input-decode-map "\e[72;56;5~" (kbd "C-8"))
  (define-key input-decode-map "\e[72;57;5~" (kbd "C-9"))

  ;; C-M-numbers
  (define-key input-decode-map "\e[72;48;7~" (kbd "C-M-0"))
  (define-key input-decode-map "\e[72;49;7~" (kbd "C-M-1"))
  (define-key input-decode-map "\e[72;50;7~" (kbd "C-M-2"))
  (define-key input-decode-map "\e[72;51;7~" (kbd "C-M-3"))
  (define-key input-decode-map "\e[72;52;7~" (kbd "C-M-4"))
  (define-key input-decode-map "\e[72;53;7~" (kbd "C-M-5"))
  (define-key input-decode-map "\e[72;54;7~" (kbd "C-M-6"))
  (define-key input-decode-map "\e[72;55;7~" (kbd "C-M-7"))
  (define-key input-decode-map "\e[72;56;7~" (kbd "C-M-8"))
  (define-key input-decode-map "\e[72;57;7~" (kbd "C-M-9")))

(defun hijackey-after-make-frame-setup (frame)
  (with-selected-frame frame
    (hijackey-setup)))

(add-hook 'after-make-frame-functions #'hijackey-after-make-frame-setup)

;; change the prefix keys for normal mode and the 1st client
(hijackey-setup)

(provide 'hijackey-emacs)

;;; hijackey-emacs.el ends here
