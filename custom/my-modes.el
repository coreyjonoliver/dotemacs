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

;; make text-mode the default
(setq default-major-mode 'org-mode)
(add-hook 'text-mode-hook 'turn-on-visual-line-mode)

;; latex (AUCTeX LaTex mode)
;;;; compile latex files to pdf by default
(setq TeX-PDF-mode t)

;;;; activate reftex
(add-hook 'LaTeX-mode-hook 'turn-on-reftex)
(add-hook 'Latex-mode-hook 'reftex-plug-into-AUCTeX)

;;;; set up ispell to work with latex
(add-hook 'Latex-mode-hook (function (lambda () (setq ispell-parser 'tex))))

;; haskell
(load "haskell-site-file")
(add-hook 'haskell-mode-hook 'turn-on-haskell-doc-mode)
(add-hook 'haskell-mode-hook 'turn-on-haskell-indentation)

;; markdown
(autoload 'markdown-mode "markdown-mode"
  "Major mode for editing markdown files." t)
(add-to-list 'auto-mode-alist '("\\.md$" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown$" . markdown-mode))

;; ocaml
(autoload 'tuareg-mode "tuareg"
  "Major mode for editing Caml files." t)
(add-to-list 'auto-mode-alist '("\\.ml[ily]?$" . tuareg-mode))
(add-to-list 'auto-mode-alist'("\\.topml$" . tuareg-mode))

;; scala
(autoload 'scala-mode2 "scala-mode2")

;; ENSIME
(add-to-list 'load-path "~/.emacs.d/vendor/ensime/elisp")
(autoload 'ensime "ensime")
(add-hook 'scala-mode-hook 'ensime-scala-mode-hook)

;; php
(autoload 'php-mode "php-mode"
  "Major mode for editing PHP files." t)
(add-to-list 'auto-mode-alist '("\\.php$" . php-mode))
