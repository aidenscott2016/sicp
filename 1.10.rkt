(define (A x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else (A (- x 1)
                 (A x (- y 1))))))


(A 1 10) ;1024
(A 2 4)  ;65536
(A 3 3)  ;65536

(define (f n) (A 0 n)) ;; 2n
(define (g n) (A 1 n)) ;; 2^2
(define (h n) (A 2 n)) ;;  2^2^… (n-1 times)
(define (k n) (* 5 n n)) ;;5n^2 answer given in book


(g 1)
(g 2)
(g 3)
(g 4)
(g 5)

(h 1)
(h 2)
(h 3)
(h 4)
(h 5)