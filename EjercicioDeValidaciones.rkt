#lang racket


(define (Genero)
    (display "Ingresa tu genero: ")
    (define genero (read))
    (define convertionDato (symbol->string genero))
    (define lowerCase (string-downcase convertionDato))
    lowerCase
)


(define (edad)
    (display "Ingrese la edad: ")
    (define valorEdad (read))
    (cond
        [(number? valorEdad)
            valorEdad
        ]
        [else (displayln "Ingresa un valor númerico") (edad)]
    )
)


(define (Servicio)
    (cond
        [(string=? (Genero) "masculino")
            (cond
                [(>= (edad) 18)
                    (display "Eres apto")
                ]
                [else (display "No eres apto")]
            )
        ]
        [(string=? (Genero) "femenino")
            (display "No es obligatorio")
        ]
    )

)
(Servicio)

