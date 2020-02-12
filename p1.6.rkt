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

*|
代码如上，如果使用 new-if 调用函数会内存溢出。

尝试1：用 if 重新写 new-if-mine，调用函数结果还是内存溢出。
尝试2：减少 good-enough? 函数的精度，0.001改为0.1，调用函数结果还是内存溢出。

猜测：因为之前书中也说 schema 的编译方式采用的是应用序，所以像 improve average square abs good-enough？ sqrt 都可以直接算出结果的函数，是可以放在递归函数中的，而像 new-if 这种不能直接算出结果的函数，调用了就会内存溢出。
|*
