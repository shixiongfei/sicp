;;; 练习 1.3

(define (max-sum a b c)
  (if (> a b)
      (if (> b c) (+ a b) (+ a c))
      (if (> a c) (+ a b) (+ b c))))

(max-sum 1 2 3)
;; 5
(max-sum 3 1 2)
;; 5
(max-sum 2 3 1)
;; 5
(max-sum 1 2 2)
;; 4
(max-sum 4 1 3)
;; 7
(max-sum 2 5 3)
;; 8
