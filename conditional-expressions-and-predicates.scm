;;; 1.1.6 Conditional Expressions and Predicates

(define (abs x)
  (cond ((> x 0) x)
        ((= x 0) 0)
        ((< x 0) (- x))))

(abs 1)
(abs 0)
(abs -2)
