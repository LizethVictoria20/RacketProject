#lang racket

#|Crear un programa que solicite al usuario su edad y determine si es mayor o menor de edad.|#

;Función que valida si el valor que ingresa el usuario es un numero.
(define (validarNumero)
    (displayln "Ingrese tu edad: ")
    (define numero (read))
    (cond
        [(number? numero)
            (EsMayor numero)
        ]
        [else 
            (displayln "No es un número, ingrese un valor correcto.")
            (validarNumero)
        ]
    )
)


(define (EsMayor edad)
    (cond 
        [(>= edad 18)
            (display "Eres mayor de edad")
        ]
        [else
            (display "No eres mayor de edad")
        ]
        
    )
)
(validarNumero)