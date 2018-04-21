#lang racket/base

(require rackunit)

(define (sqrt x) (new-sqrt-iter 1.0 2.0 x))

(define (new-sqrt-iter guess last-guess x) (if (good-enough? guess last-guess)
    guess
    (new-sqrt-iter (improve guess x)
                guess
                x)))

(define (improve guess x)
    (average guess (/ x guess)))

(define (average x y)
    (/ (+ x y) 2))

(define (good-enough? guess last-guess)
    (< (abs (- last-guess guess)) 0.0000001))

(define (square x) (* x x))

(define solution (sqrt 10))
         
(check-equal? solution 3.162277660168379)
