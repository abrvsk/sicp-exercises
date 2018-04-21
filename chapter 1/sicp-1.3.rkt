#lang racket/base

(require rackunit)

(define (square x) (* x x))

(define (sumOfSquares x y) (+ (square x) (square y)))

(define (biggestSquares a b c)
  (cond 
    ((and (< a b) (< a c))
      (sumOfSquares b c))
    ((and (< b a) (< b c))
      (sumOfSquares a c))
    (else 
      (sumOfSquares a b))
  )
)

(define solution (biggestSquares 2 3 4))
         
(check-equal? solution 25)
