(defn pascals-triangle
  [row col]
  (cond (> col row) 0
        (or (= col 0) (= row col)) 1
        :else (+ (pascals-triangle (dec row) (dec col))
                 (pascals-triangle (dec row) col))))
