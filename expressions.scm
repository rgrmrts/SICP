;;; 1.1.1 Expressions

;; helper to display an expressions evaluation and print a newline
(define (print-expr expr)
  (display expr)
  (newline))

(print-expr (+ 137 349))

(print-expr (- 1000 334))

(print-expr (* 5 99))

(print-expr (/ 10 5))

(print-expr (+ 2.7 10))

(print-expr (+ 21 35 12 7))

(print-expr (* 25 4 12))

(print-expr (+ (* 3 5) (- 10 6)))

(print-expr (+ (* 3
                  (+ (* 2 4)
                     (+ 3 5)))
               (+ (- 10 7)
                  6)))
