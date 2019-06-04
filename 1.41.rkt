(define (++ x) (+ x 1))
(define (double f)
  (lambda (x) (f (f x)) )
)

((double ++) 5)

(((double (double double)) ++) 0) 
