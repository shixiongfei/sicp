;;; 练习1.18


(define (double x) (+ x x))
(define (halve x) (/ x 2))


(define (fast-multi a b)
  (define (fast-multi-iter accum a b)
    (cond ((= b 0) accum)
          ((even? b) (fast-multi-iter accum (double a) (halve b)))
          (else (fast-multi-iter (+ accum a) a (- b 1)))))
  (fast-multi-iter 0 a b))


(fast-multi 3 7)
;; 21

(fast-multi 5 0)
;; 0

(fast-multi 4 9)
;; 36
