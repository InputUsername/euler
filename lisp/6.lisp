;; REALLY inefficient

(defun list-sum (l)
  (reduce '+ l))

(defun square (n)
  (* n n))

(defun sum-of-squares (n)
  (list-sum (loop for i from 1 to n collect (square i))))

(defun square-sum (n)
  (square (list-sum (loop for i from 1 to n collect i))))

(defun euler-6 ()
  (- (square-sum 100) (sum-of-squares 100)))