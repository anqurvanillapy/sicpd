(defn count-change
  [m]
  (def coin-value [1 5 10 25 50])
  (defn cc-iter
    [amount coin-no]
    (cond (= amount 0) 1
          (or (< amount 0) (< coin-no 0)) 0
          :else (+ (cc-iter amount (dec coin-no))
                   (cc-iter (- amount (get coin-value coin-no))
                            coin-no))))
  (cc-iter m 4))
