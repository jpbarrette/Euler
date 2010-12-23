(declare (optimize (debug 3)))

(defun next-fibonacci (a b)
  (list b (+ a b)))

(defun iterate-fibonacci (max-number func)
  (do ((v '(1 1) (next-fibonacci (first v) (second v))))
      ((> (first v) max-number))
    (funcall func (first v))))
    


(let ((sum 0))
  (iterate-fibonacci 4000000 
                     (lambda (x) 
                       (when (evenp x)
                         (format t "~a~%" x)
                         (setf sum (+ sum x)))))
  sum)


         


