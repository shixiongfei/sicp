;;; 练习1.17


(define (double x) (+ x x))
(define (halve x) (/ x 2))


(define (multi a b)
  (cond ((= b 0) 0)
        ((even? b) (double (multi a (halve b))))
        (else (+ a (multi a (- b 1))))))


(multi 3 7)
;; 21

(multi 5 0)
;; 0

(multi 4 9)
;; 36
