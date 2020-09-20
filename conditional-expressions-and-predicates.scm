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

;; greater than or equal to
(define (>= x y)
  (or (> x y) (= x y)))

;; same but using a negation
(define (>= x y)
  (not (< x y)))

;; Exercise 1.1
10  ; 10
(+ 5 3 4)  ; 12
(- 9 1)  ; 8
(/ 6 2)  ; 3
(+ (* 2 4) (- 4 6))  ; 6
(define a 3)  ; nothing
(define b (+ a 1))  ; nothing
(+ a b (* a b))  ; 19
(= a b)  ; #f

(if (and (> b a) (< b (* a b)))
    b
    a)
;; 4

(cond ((= a 4) 6)
      ((= b 4) (+ 6 7 a))
      (else 25))
;; 16

(+ 2 (if (> b a) b a))  ; 6

(* (cond ((> a b) a)
         ((< a b) b)
         (else -1))
   (+ a 1))
;; 16

;; Exercise 1.2
(/ (+ 5 (+ 4 (- 2 (- 3 (+ 6 (/ 4 5))))))
   (* 3 (* (- 6 2)
           (- 2 7))))

;; Exercise 1.3
(define (sum-of-two-largest-squares x y z)
  (- (+ (* x x)
        (* y y)
        (* z z))
     (* (min x y z)
        (min x y z))))

(sum-of-two-largest-squares 1 2 3)
(sum-of-two-largest-squares -10 -2 2)

;; Exercise 1.4
(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))
;; conditionally use + or - operator based on the value of b

;; Exercise 1.5
(define (p) (p))

(define (test x y)
  (if (= x 0)
      0
      y))

(test 0 (p))
;; (p) is a procedure that calls itself, this is an infinite loop
;; calling the test procedure will above will loop forever, because
;; the second argument, (p), will be evaluated first and will loop
;; forever. This applies to applicative-order evaluation. With
;; normal-order evaluation, the call to test above will simply
;; evaluate to 0.
