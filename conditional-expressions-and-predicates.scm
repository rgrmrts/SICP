;;; 1.1.6 Conditional Expressions and Predicates

;; returns the absolute value of x
(define (abs x)
  (cond ((> x 0) x)
        ((= x 0) 0)
        ((< x 0) (- x))))

(abs 1)
(abs 0)
(abs -2)

;; simpler condition for absolute value function
(define (abs x)
  (cond ((< x 0) ( - x))
        (else x)))

(abs 1)
(abs 0)
(abs -2)

;; using an if block for the absolute value function
(define (abs x)
  (if (< x 0)
      (- x)
      x))

(abs 1)
(abs 0)
(abs -2)
