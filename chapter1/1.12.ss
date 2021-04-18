;;; 练习1.12


(define (pascal r c)
  (if (or (= c 1)
          (= c r))
      1
      (+ (pascal (- r 1) (- c 1))
         (pascal (- r 1) c))))


(define (pascal-triangle n)
  (define (iter r c)
    (display (pascal r c))
    (display " ")
    (cond ((< c r) (iter r (+ c 1)))
          ((and (< r n) (= r c))
           (begin
             (newline)
             (iter (+ r 1) 1)))))
  (iter 1 1))


(pascal-triangle 5)
;; 1
;; 1 1
;; 1 2 1
;; 1 3 3 1
;; 1 4 6 4 1
