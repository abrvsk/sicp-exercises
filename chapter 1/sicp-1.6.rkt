(define (sqrt-iter guess x)
    (new-if (good-enough? guess x)
        guess
        (sqrt-iter (improve guess x)
                    x)))

The programm will go into infinite loop, because operands will be calculated first. It will continue calling itself from the new-if.
The original if statement will check the predicat first and only after that calculate operadns.