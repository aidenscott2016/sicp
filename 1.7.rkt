 (define (good-enough? guess x) 
  (< (abs (- (improve guess x) guess)) 
     (* guess .001))) 

(define (average x y)
	(/ (+ x y) 2))


(define (improve guess x)
	(average guess (/ x guess)))


(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x)
                 x)))
(sqrt-iter 1 1000000000000.0)