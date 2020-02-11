#lang planet neil/sicp

(define (sqrt-iter guess x) (
if (good-enough? guess x)
   guess
   (sqrt-iter (improve guess x) x)
                             ))

(define (improve guess x) (average guess (/ x guess)))

(define (average x y) (/ (+ x y) 2))

(define (square x) (* x x))

(define (good-enough? guess x) (< (abs (- (square guess) x)) 0.001))

(define (abs x) (if(< x 0) (- x) x))

(define (sqrt x) (sqrt-iter 1.0 x))

(define (new-if predicate then-clause else-clause) (cond (predicate then-clause) (else else-clause)))
(define (new-if-mine predicate then-clause else-clause) (if predicate then-clause else-clause))
(new-if-mine (= 2 3) 0 5)
(new-if-mine (= 1 1) 0 5)

(sqrt 9)
(sqrt (+ 100 37))

