
;(find-next-prime)
  
;; This function takes into account the the current value is a result of 
;; the factorization of given primes. This means that it should be garanteed
;; that the only primes that can divide the current value is either the
;; greatest prime in the given primes, or the next prime which isn't in 
;; the given list of primes.
(defn factorize-impl [val factors greatest-divisor]
  (println val " " factors " " greatest-divisor)
  ; is it divisible by last prime?
  ; 
  ; else find following primes until we find
  ; one which divides the value (without a reminder)
  (if (= val 1)
    factors
    (if (zero? (mod val greatest-divisor))
      (recur (/ val greatest-divisor) (conj factors greatest-divisor) greatest-divisor)
      (recur val factors (+ 2 greatest-divisor)))))
  
	
(defn factorize [val]
  (factorize-impl val [] 2))

(defn greatest-factor [val]
  (peek (factorize val)))

(greatest-factor 600851475143)
      