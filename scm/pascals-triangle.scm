(define (pascals-triangle row col)
  (cond ((> col row) 0)
        ((or (= col 0) (= col row)) 1)
        (else (+ (pascals-triangle (- row 1) (- col 1))
                 (pascals-triangle (- row 1) col)))))
