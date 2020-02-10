#lang planet neil/sicp

(
 define
  (abs x)
  (cond ((< x 0) (- x))
        (else x))
  )

(
 define
  (plus a b)
  (+ a b)
  )

(
 define
  (a-plus-abs-b a b)
  (plus a (abs b))
  )

(a-plus-abs-b 1 2)
(a-plus-abs-b 1 -34)
(a-plus-abs-b -23 0)
