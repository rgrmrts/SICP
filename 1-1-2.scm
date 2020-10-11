;;; 1.1.2 Naming and the Environment

;; helper to display an expressions evaluation and print a newline
(define (print-expr expr)
  (display expr)
  (newline))

(define size 2)
(print-expr (* 5 size))

(define pi 3.14159)
(define radius 10)
(print-expr (* pi (* radius radius)))

(define circumference (* 2 pi radius))
(print-expr circumference)
