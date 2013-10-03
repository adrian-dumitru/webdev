;; add_one: aduna cu 1
(define add_one
  (λ (nr)
    (+ nr 1)))

;; multiply_by_five: inmulteste cu 5
(define multiply_by_five
  (λ (nr)
    (* nr 5)))

;; squar: returneaza patratul numarului
(define squar
  (λ (nr)
    (* nr nr)))

;; cube: returneaza cubul numarului
(define cube
  (λ (nr)
    (* nr (* nr nr))))

;; factorial: returneaza factorialului numarului 
(define factorial
  (λ (nr)
    (if(= nr 0)
       1
       (* nr (factorial (- nr 1)))
       )
    )
  )

;; functions: o lista de functii
(define functions '(add_one multiply_by_five squar cube factorial))

;; programul ce rezolva problema
(define program
  (λ (nr lst) ;; primeste un numar si o lista
    (if (null? lst) ;; cat timp lista de functii nu este nula
        '()
        (append (list ((eval (car lst)) nr)) (program nr (cdr lst))) ;; aplica functia acelui numar dupa care returneaza lista cu rezultate
        )
    )
  )

(program 5 functions)
