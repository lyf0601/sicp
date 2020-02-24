#lang planet neil/sicp

(define (+ a b) (if (= a 0) b (inc (+ (dec a) b))))
# the calculate process is "di gui", because the return shape doesnt like itself.

(define (+ a b) (if (= a 0) b (+ (dec a) (inc b))))
# the calculate process is iter, because the return shape like itself.
