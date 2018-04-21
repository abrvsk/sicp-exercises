(define (p) (p))
(define (test x y)
  (if (= x 0)
      0
      y))

(test 0 (p))


Applicatiove order

(test 0 (p))
(test 0 (p))
(test 0 (p))
......
(test 0 (p))


Normal order

(test 0 (p))
(if (= 0 0) 0 (p))
(test #t 0 (p))
0
