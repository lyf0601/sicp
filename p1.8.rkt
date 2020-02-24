#lang planet neil/sicp

(define (cubic x)
  (define (abs x) (if (< x 0) (- x) x))
  (define (good-enough? x y) (<  (abs (- x (* y y y))) 0.001))
  (define (improve x y) (/ (+ (/ x (* y y)) (* 2 y)) 3))
  (define (cubic-iter x y) (if (good-enough? x y) y (cubic-iter x (improve x y))))
  
  
  (cubic-iter x 1.0)
)

(cubic 8)
(cubic -27)
(cubic 3)
