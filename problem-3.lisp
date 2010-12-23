

(defun test (x)
  (let* ((primes '(2))
         (cur-prime (car primes))
         (cur-primes primes)
         (val x))
    (do ()
        ((> val 1))
      (when (> (mod val cur-prime) 0) ;if the prime number can't divide, it's time to switch to next prime number.
        (
        

; need to divide with given primes
; divide prime until it doesn't divide evenly. 
; then switch to next prime
; if there's no prime left, the current divided number is a prime


(mod 3 2)