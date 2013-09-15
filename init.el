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

;; Install desired packages
(require 'package)

(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)

(package-initialize)
(unless package-archive-contents
  (package-refresh-contents))

(mapc
 (lambda (p)
   (unless (package-installed-p p)
     (package-install p)))
 '(color-theme
   go-autocomplete
   go-mode
   haskell-mode
   markdown-mode
   php-mode
   scala-mode2
   ))

;; Customize auto-complete
(require 'auto-complete-config)
(ac-config-default)
(add-to-list 'ac-modes 'go-mode)

(add-to-list 'load-path "~/.emacs.d/custom")
(add-to-list 'load-path "~/.emacs.d/utilities")
(add-to-list 'load-path "~/.emacs.d/vendor")

(load "load-directory.el")
(mapc 'load-directory '("~/.emacs.d/utilities"))

(mapc 'vendor '(
                ;;color-theme-extras
                tuareg
                ))

(mapc 'load-directory '("~/.emacs.d/custom"))


 

