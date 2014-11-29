(defun euler-1 (n)
  (cond
    ((zerop n) 0)
    ((zerop (rem n 3)) (+ n (euler-1 (1- n))))
    ((zerop (rem n 5)) (+ n (euler-1 (1- n))))
    (t (euler-1 (1- n)))))