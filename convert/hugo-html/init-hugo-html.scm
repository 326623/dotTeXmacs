;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; MODULE      : tmhugo-html.scm
;; DESCRIPTION : Markdown format for TeXmacs
;; COPYRIGHT   : (C) 2020 Joy Yang
;;
;; This software falls under the GNU general public license version 3 or later.
;; It comes WITHOUT ANY WARRANTY WHATSOEVER. For details, see the file LICENSE
;; in the root directory or <http://www.gnu.org/licenses/gpl-3.0.html>.
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(texmacs-module (convert hugo-html init-hugo-html))
(use-modules (convert html init-html))


(define-format hugo-html
  (:name "Hugo-Html")
  (:suffix "html")
  ;(:recognize/:must-recognize markdown-recognizes?))
  )

(converter html-stree hugo-html-snippet
  (:function serialize-html))

(converter html-stree hugo-html-document
  (:function serialize-html))