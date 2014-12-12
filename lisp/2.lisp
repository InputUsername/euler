(defun fib (i)
  (if (< i 2)
      i
    (+ (fib (- i 1)) (fib (- i 2)))))

(defun euler-2 (i next-fib)
  (if (> next-fib 4000000)
    0
    (if (zerop (rem next-fib 2))
      (+ next-fib (euler-2 (1+ i) (fib (1+ i))))
      (euler-2 (1+ i) (fib (1+ i))))))