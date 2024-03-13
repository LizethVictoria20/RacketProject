#lang racket

;Escribir una función que imprima un mensaje de bienvenida por pantalla.

(define (welcomeMessage)
    (displayln "Holis")
)

(welcomeMessage)

(displayln "holis")

;Escribir una función que imprima tu nombre completo con dos var de función

(define (myName)
    (define firstName "Liz")
    (define lastName " Victoria")
    (display firstName)
    (displayln lastName)
)
(myName)


;Escribir una función que calcule el área de un triángulo dados su base y altura.
(define (triangleArea base height)
    (define operation (/( * base height) 2 )
    )
    operation
)

(triangleArea 4 6)


;Escribir una función que calcule el perímetro de un cuadrado

(define (squarePerimeter perimeter)
    (define operation ( * perimeter 4)
    ) 
    operation
)

(squarePerimeter 2)

;Escribir una función que convierta una temperatura en grados Fahrenheit a grados Celsius.

(define (temperature fahrenheit )
    (define convertion (/(- fahrenheit 32)5/9))
    convertion
)
(temperature 32)



(define (textWithReadFunction)
    (define text1 (read))
    (define text2 (read))
   (displayln (string-append text1 " " text2))
)

(textWithReadFunction)


