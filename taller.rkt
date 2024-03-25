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
            (displayln "Eres mayor de edad")
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
                (displayln " es positivo")
            ]
            [(< number 0)
                (display "El número ")
                (display number)
                (displayln " es negativo")
            ]
            [(= number 0)
                (display "El número ")
                (display number)
                (displayln " es cero")
            ]
            [else
                (displayln "Ingresa un número correcto ")
            ]
        )]
    [else 
        (displayln "Por favor ingrese un número valido: ")(ClasificarNumero (read))
    ])
    
)

(display "Ingresa numero: ")
(define numero (read))
(ClasificarNumero numero)


#|Crear un programa que solicite dos números y determine cuál es el mayor de los dos.|#
(displayln "Ingrese dos número para saber cúal es el mayor.")
(define (NumeroMayor n1 n2)
    (cond
        [(and ( number? n1 ) (number? n2))
            (cond
                [(> n1 n2)
                    (display n1)
                    (display " es mayor que ")
                    (display n2)
                ]
                [else
                    (display n1)
                    (display " es menor que ")
                    (display n2)
                ]
            )
        ]
        [else 
            (display "Uno de los dos datos ingresado es incorrecto, ingresa un valor númerico: " )(NumeroMayor (read) (read))
        ]
    )
)
(display "Ingresa primer número: ")
(define n1 (read))
(display "Ingresa segundo número: ")
(define n2 (read))
(NumeroMayor n1 n2)



#|Crear un programa que pida al usuario un número y determine si es par o impar.|#
(display "Ingrese un número para saber si es par o impar: ")
(define (ParOImpar n)
    (cond
        [(number? n)
            (cond
                [(= (remainder n 2) 0)
                    (display "El número ")
                    (display n)
                    (display " es un número par ")
                ]
                [else 
                    (display "El número ")
                    (display n)
                    (display " es un número impar ")
                ]
        )]
        [else (displayln "Por favor ingrese un número valido: ") (ParOImpar (read))]
    )
)
(ParOImpar (read))


#|Crear un programa que solicite al usuario su género (masculino o femenino) y su edad. 
Si es hombre y su edad es mayor o igual a 18 años, mostrar un mensaje indicando que puede 
inscribirse en el servicio militar. Si es mujer, mostrar un mensaje indicando que no tiene que inscribirse.|#



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
        [else (display "Ingrese masculino o femenino")]
    )

)
(Servicio)

