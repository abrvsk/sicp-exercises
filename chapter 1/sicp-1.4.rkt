#lang racket/base

(require rackunit)

(define (a-plus-abs-b a b)
  ((cond
     ((> b 0) +)
     ((< b 0) -)
  ) a b)
)

(define solution (a-plus-abs-b 5 -3))
         
(check-equal? solution 8)
