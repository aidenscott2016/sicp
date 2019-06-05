(define (square x) (* x x))
(define (inc x) (+ x 1))

(define (compose f g)
  (lambda (x) (f (g x))))


(define (repeated f n)
  (if (< n 1) 
    (lambda (x) x)
    (compose f (repeated f (- n 1))))
)
(define (average x y z)
	(/ (+ x y z) 3))

(define (smooth f)
  (lambda (x) 
    (define dx 1.5)
    (let ((fx (f x))
          (fd+x (f (+ x dx)))
          (fd-x (f (- x dx))))
      (average fx fd+x fd-x))))



(define (n-fold-smooth f n)
  ((repeated smooth n) f)
)

((n-fold-smooth square 10) 10)
