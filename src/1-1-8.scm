;;; 1.1.8 Procedures as Black-Box Abstractions

(define (square x) (* x x))

(define (square x)
  (exp (double (log x))))

(define (double x) (+ x x))

;; indistinguishable
(define (square x) (* x x))
(define (square y) (* y y))

;; block structure, or nesting definitions to avoid dirtying up the namespace
(define (sqrt x)
  (define initial-value 0.001)
  (define (good-enough? guess x)
    (< (abs (- (square guess) x)) initial-value))
  (define (improve guess x)
    (average guess (/ x guess)))
  (define (sqrt-iter guess x)
    (if (good-enough? guess x)
	guess
	(sqrt-iter (improve guess x) x)))
  (sqrt-iter 1.0 x))

;; same thing, but with lexical scoping for variable x
(define (sqrt x)
  (define initial-value 0.001)
  (define (good-enough? guess)
    (< (abs (- (square guess) x)) initial-value))
  (define (improve guess)
    (average guess (/ x guess)))
  (define (sqrt-iter guess)
    (if (good-enough? guess)
	guess
	(sqrt-iter (improve guess))))
  (sqrt-iter 1.0))
