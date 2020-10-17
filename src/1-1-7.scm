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

;; exercise 1.6
(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

(new-if (= 2 3) 0 5)
(new-if (= 1 1) 0 5)

(define (new-sqrt-iter guess x)
  (new-if (good-enough? guess x)
          guess
          (new-sqrt-iter (improve guess x)
                              x)))

(define (new-square-root x)
  (new-sqrt-iter 1.0 x))

;; re-run with improved sqrt
;; (new-square-root 9)
;; (new-square-root (+ 100 37))
;; (new-square-root (+ (new-square-root 2)
;;                     (new-square-root 3)))
;; (square (square-root 1000))

;; turns out this does not finish computation and runs forever.
;; our new-if will evaluate the predicate, then-clause, and else-clause
;; at the same time (i.e. eager evaluation) and since the else-clause is
;; a recursive call, despite what good-enough? returns the else-clause
;; will keep running and eventually lead to a filled up heap

;; exercise 1.7
;; example for small numbers:
;; (square-root 4) evaluates to 2.0000000929222947
;; this is obviously not accurate due to floating point precision issues
;; example for large numbers:
;; (square-root 975461057789971041) evalutes to 987654321.0
;; this is still a floating point integer instread of a whole number
