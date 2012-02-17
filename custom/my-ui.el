;; This file is part of Corey Oliver's dotemacs

;; Copyright (c) 2012, Corey Oliver, corey.jon.oliver@gmail.com

;; Permission to use, copy, modify, and/or distribute this software for
;; any purpose with or without fee is hereby granted, provided that the
;; above copyright notice and this permission notice appear in all
;; copies.

;; THE SOFTWARE IS PROVIDED “AS IS” AND THE AUTHOR DISCLAIMS ALL
;; WARRANTIES WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED
;; WARRANTIES OF MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE
;; AUTHOR BE LIABLE FOR ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL
;; DAMAGES OR ANY DAMAGES WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR
;; PROFITS, WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE OR OTHER
;; TORTIOUS ACTION, ARISING OUT OF OR IN CONNECTION WITH THE USE OR
;; PERFORMANCE OF THIS SOFTWARE.

;; start emacs with a shell
(eshell)

;; disable startup screen and *scratch* msgs
(setq inhibit-startup-message t)
(setq initial-scratch-message nil)

;; replace "yes or no" with y or n
(defun yes-or-no-p (arg)
  (y-or-n-p arg))

;; disable training wheels
(when (fboundp 'tool-bar-mode)
  (tool-bar-mode 0)
  (scroll-bar-mode -1))

;; shut off annoying beep
(setq visible-bell t)

;; set default font

;; system fonts are available in emacs as of version 23
(if (>= emacs-major-version 23)
    (set-face-attribute 'default nil
			:family "Inconsolata" :height 120))

;; setup color-theme
(require 'color-theme)
(load-file "~/.emacs.d/custom/themes/color-theme-inkpot.el")
(color-theme-initialize)
(color-theme-inkpot)

;; set frame size
(add-to-list 'default-frame-alist '(height . 65))

;; show column number
(setq column-number-mode t)

(provide 'my-ui)
