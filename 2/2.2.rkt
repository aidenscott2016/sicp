(define (make-segment begin end) (cons begin end))

(define (start-segment segment) (car segment))

(define (midpoint-segment segment) 
  (let ((x1 (x-point(start-segment segment)))
       (y1 (y-point(start-segment segment)))
       (x2 (x-point(start-segment segment)))
       (y2 (y-point(start-segment segment))))
    (let ((av-x (/ (+ x1 x2) 2))
         (av-y (/ (+ y1 y2) 2)))
    (cons av-x av-y)))
 )

(define (end-segment parameters) (cdr segment))

(define (make-point x y) (cons x y))

(define (x-point point) (car point))

(define (y-point point) (cdr point))

(define (print-point p)
  (newline)
  (display "(")
  (display (x-point p))
  (display ",")
  (display (y-point p))
  (display ")"))

(define (print-segment s) 
  (print-point (start-segment s))
  (print-point (end-segment s)))


(define segment 
  (make-segment (make-point 1 1) (make-point 1 4)))

(print-segment segment)
(midpoint-segment segment)
