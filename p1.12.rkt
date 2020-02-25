#lang planet neil/sicp

#|jx-Pascal's triangle, l-lines, o-order|#

(define (jx l o) (
                  cond ((= o 1) 1)
                       ((= o l) 1)
                       ((< l 3) 1)
                       (else (+ (jx (- l 1) o) (jx (- l 1) (- o 1))))
                  ))

(jx 6 3)
(jx 3 3)
(jx 1 1)
(jx 12 7)
