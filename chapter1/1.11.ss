;;; 练习1.11


;; 递归版本
(define (f-recur n)
  (if (< n 3)
      n
      (+ (f-recur (- n 1))
         (* 2 (f-recur (- n 2)))
         (* 3 (f-recur (- n 3))))))

(f-recur 10)
;; 1892

;; 迭代版本
(define (f-iter n)
  (define (iter a b c count)
    (if (= count 0)
        a
        (iter (+ a (* 2 b) (* 3 c))
              a
              b
              (- count 1))))
  (if (< n 3)
      n
      (iter 2 1 0 (- n 2))))

(f-iter 10)
;; 1892
