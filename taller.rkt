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

(displayln "Ingresa un número para saber si eres mayor de edad")
(define (EsMayor edad)
    (cond 
        [(>= edad 18)
            (display "Eres mayor de edad")
        ]
        [else
            (displayln "No eres mayor de edad")
        ]
        
    )
)
(validarNumero)

#|
Crear un programa que pida al usuario un número y determine si es positivo, negativo o cero.|#
(displayln "Ingresa un número para saber si es positivo, negativo o si es cero.")
(define (ClasificarNumero number)
    (cond 
        [(number? number)
            (cond
            [(> number 0)
                (display "El número ")
                (display number)
                (display " es positivo")
            ]
            [(< number 0)
                (display "El número ")
                (display number)
                (display " es negativo")
            ]
            [(= number 0)
                (display "El número ")
                (display number)
                (display " es cero")
            ]
            [else
                (display "Ingresa un número correcto ")
            ]
        )]
    [else 
        (display "Por favor ingrese un número valido: ")(ClasificarNumero (read))
    ])
)

(display "Ingresa numero: ")
(define numero (read))
(ClasificarNumero numero)
