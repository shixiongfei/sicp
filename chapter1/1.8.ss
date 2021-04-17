;;; 练习 1.8

(define (square x)
  (* x x))

(define (cube x)
  (* x x x))

(define (improve guess x)
  (/ (+ (/ x (square guess))
        (* 2 guess))
     3))

(define (good-enough? guess x)
  (< (abs (- (cube guess) x)) 0.001))

(define (cube-root-iter guess x)
  (if (good-enough? guess x)
      guess
      (cube-root-iter (improve guess x)
                      x)))

(define (cube-root x)
  (cube-root-iter 1.0 x))

(cube-root 27)
;; 3.0000005410641766
(cube-root (+ 100 37))
;; 5.15513673840956
(cube-root (cube 7))
;; 7.000001795382107
