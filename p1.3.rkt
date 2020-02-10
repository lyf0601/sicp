#lang planet neil/sicp

(
define
 (min a b c)
 (if (and (< a b) (< a c)) a (if (< b c) b c))
 )

(
 define
(sum-without-min a b c)
  
   (- (+ a b c) (min a b c))
   
  )

(sum-without-min 7 2 -3)
