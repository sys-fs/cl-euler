(defun range (x)
  "Generate a list of numbers from 1 to x."
  (do ((i x (1- i))
       (result '() (cons i result)))
      ((zerop i) result)))

(defun square (x)
  "Multiply x by itself."
  (* x x))

(defun euler-6 (x)
  "Find the difference between the sum of the squares of the numbers from 1 to
  x, and the square of the sum of the numbers from 1 to x."
  (flet ((sum-of-squares ()
	   (reduce #'+ (mapcar #'square (range x))))
	 (square-of-sum ()
	   (square (reduce #'+ (range x)))))
    (- (square-of-sum) (sum-of-squares))))
