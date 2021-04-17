;;; 练习 1.6

(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

(new-if (= 2 3) 0 5)
;; 5
(new-if (= 1 1) 0 5)
;; 0

(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
          guess
          (sqrt-iter (improve guess x)
                     x)))

;; 如果解释器是正则序求值的方式，则解释器只会对用到的参数进行求值，所以这个写法可以正常运行。
;; 但绝大多数的解释器都是应用序求值，那么当参数传递给 new-if 的时候会被立刻求值，所以此时的程序会陷入 sqrt-iter 的无限递归中。
