(define (average x y)
  (/ (+ x y) 2))

(define (square x)
  (* x x))

(define (sqrt x)
  (define (good-enough? old new)
    (> 0.01 (/ (abs (- old new)) old)))
  (define (improve guess)
    (average guess (/ x guess)))
  (define (sqrt-iter guess)
    (let ((new (improve guess)))
      (if (good-enough? guess new)
        new
        (sqrt-iter new))))
  (sqrt-iter 1.0))
