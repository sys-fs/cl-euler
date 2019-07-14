(defun range (x)
  "Generate a list of numbers from 1 to x."
  (do ((i x (1- i))
       (result '() (cons i result)))
      ((zerop i) result)))

(defun euler-1 (x)
  "Find the sum of the multiples of 3 and 5 below x."
  (reduce #'+ (remove-if #'(lambda (x)
			     (not (or (zerop (mod x 3))
				      (zerop (mod x 5)))))
			 (range (1- x)))))
