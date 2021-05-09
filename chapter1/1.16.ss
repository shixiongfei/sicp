;;; 练习1.16


(define (square x) (* x x))


(define (fast-expt b n)
  (define (fast-expt-iter N B A)
    (cond
     ((= 0 N) A)
     ((even? N) (fast-expt-iter (/ N 2) (square B) A))
     (else (fast-expt-iter (- N 1) B (* B A)))))
  (fast-expt-iter n b 1))


(fast-expt 2 0)
;; 1

(fast-expt 2 7)
;; 128

(fast-expt 2 10)
;; 1024
