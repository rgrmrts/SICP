;;; 1.1.7 Example: Square Roots by Newton's Method

(define (average x y)
  (/ (+ x y) 2))

(define tolerance 0.001)

(define (square x)
  (* x x))

(define (good-enough? guess x)
  (< (abs (- (square guess) x))
     tolerance))

(define (improve guess x)
  (average guess (/ x guess)))

(define (square-root-iterate guess x)
  (if (good-enough? guess x)
      guess
      (square-root-iterate (improve guess x)
                           x)))

(define (square-root x)
  (square-root-iterate 1.0 x))

;; run the examples from book
(square-root 9)
(square-root (+ 100 37))
(square-root (+ (square-root 2)
                (square-root 3)))
(square (square-root 1000))
