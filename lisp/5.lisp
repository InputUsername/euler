;; A list of numbers from 1 to n (inclusive)
(defun seq-list (n)
  (loop for i from 1 to n collect i))

(defun euler-5 ()
  (eval (cons 'lcm (seq-list 20))))