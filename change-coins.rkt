#lang planet neil/sicp

(define
  (count-change x)
  (define (get-kind-of-coins kind-of-coin) (
                                            cond ((= kind-of-coin 1) 1)
                                                 ((= kind-of-coin 2) 5)
                                                 ((= kind-of-coin 3) 10)
                                                 ((= kind-of-coin 4) 25)
                                                 ((= kind-of-coin 5) 50)
                                            ))

  (define (cc x kind-of-coin) (
                               cond ((= x 0) 1)
                                    ((or (< x 0) (= kind-of-coin 0)) 0)
                                    (else (+ (cc x (- kind-of-coin 1)) (cc (- x (get-kind-of-coins kind-of-coin)) kind-of-coin)))
                               ))
  (cc x 5)
  )

(count-change 100)
