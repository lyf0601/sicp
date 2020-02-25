#lang planet neil/sicp

(define (f n) (
               cond ((< n 3) n)
                    (else (+ (f (- n 1)) (* 2 (f (- n 2))) (* 3 (f (- n 3)))))
               ))

(define (f1 n) 
                (define (f1-iter p3 p2 p1 count) (
                                           if (= count 2)
                                              p1
                                              (f1-iter p2 p1 (+ p1 (* 2 p2) (* 3 p3)) (- count 1))
                                           ))
                
  (f1-iter 0 1 2 n)
  )


(f 2)
(f 3)
(f 10)
(f1 3)
(f1 10)
