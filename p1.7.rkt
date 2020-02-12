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


#|
if small-num < 0.001 not works
big-num always works
|#

(define small-num 0.0004)
(define big-num 40000000000000000000000000000)

(sqrt small-num)
(sqrt big-num)
