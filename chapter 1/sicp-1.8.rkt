#lang racket/base

(require rackunit)

(define (good-enough? guess last-guess)
    (< (abs (- last-guess guess)) 0.0000001))

(define (square x) (* x x))

(define (qbrt x) (qbrt-iter 1.0 2.0 x))

(define (qbrt-iter guess last-guess x) (if (good-enough? guess last-guess)
    guess
    (qbrt-iter (improve guess x)
                guess
                x)))

(define (improve guess x)
    (/ (+ (/ x
             (square guess))
          guess
          guess)
        3))

(check-equal? (qbrt 27) 3.0)
