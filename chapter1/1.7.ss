;;; 练习 1.7

(define (average x y)
  (/ (+ x y) 2))

(define (improve guess x)
  (average guess (/ x guess)))

(define (square x) (* x x))

;; 有限精度！不适合对非常大或非常小的数进行计算
(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x)
                 x)))

(define (sqrt x)
  (sqrt-iter 1.0 x))

(sqrt 9)
;; 3.00009155413138
(sqrt (+ 100 37))
;; 11.7046999177581
(sqrt (+ (sqrt 2) (sqrt 3)))
;; 1.77392790232079
(sqrt 0.00009)  ; 无法正确计算
;; 0.0322032438128213


;;; SICP书上给出的改进策略是：监视猜测值在从一次迭代到下一次的变化情况，当改变值相对于猜测值的比率很小时就结束。

;; 评价猜测值的比率是否足够小
(define (good-enough? old-guess new-guess)
  (< (abs (/ (- new-guess old-guess) old-guess)) 0.001))

(define (sqrt-iter guess x)
  ;; 注意：这里的x要改成新的猜测值，用于跟当前猜测值进行比较
  (if (good-enough? guess (improve guess x))
      (improve guess x)
      (sqrt-iter (improve guess x)
                 x)))

(sqrt 0.00009)
;; 0.00948683304968439
(sqrt 900000000000000000)
;; 948683323.958742
