#lang racket

#|
Disyunción al menos una es verdadera para que sea igual a verdad
Conjunción si o si ambas deben de ser verdaderas
|#
; (and (number? 3)(not (number? "3"))) #t
; (and (= 3 8)(not (number? "3"))) #f
; (or (= 3 8)(not (number? "3"))) #t
; (or (= 3 8)(string? '3)) #f


; ;condicionales
; (define salario 1000)
; (and ( < salario 2000) (> salario 1500 ))


; #|
; Definir funcion que reciba uan parametro n
; Utilizar los ejemplos de condiciones que estan en la diapositiva
; [(< n 10) 5.0]
; |#

; (define (greaterThan n)
;     (cond
;         [(< n 10) 5.0]
;         [(< n 20) 5]
;         [(< n 30) true]
;         [else (display "n es menor")]
;     )
; )
; (greaterThan (read))


#|
Definir funcion que tome 4 parametros para sacar el promedio porcentual de una materia 
|#


(define (notaFinal materia p1 p2 q)
    (cond
        [(symbol=? materia 'Calculo) 
            (define promedio (+ (* p1 0.3) (* p2 0.3) (* q 0.4)))
            (display promedio)
        ]
        [(symbol=? materia 'Ingles) 
            (define promedio (+ (* p1 0.5) (* p2 0.2) (* q 0.3)))
            (display promedio)
        ]
        [(symbol=? materia 'Deportes) 
            (define promedio (+ (* p1 0.7) (* p2 0.2) (* q 0.1)))
            (display promedio)
        ]

        [else (display "Ingrese una asignatura correcta")]
    )
)


(display "Ingrese la materia que quiere promediar: ")
(define materia (read))
(display "Ingrese la primera nota del primer parcial: ")
(define primerParcial (read))
(display "Ingrese la segunda nota del segundo parcial: ")
(define segundoParcial (read))
(display "Ingrese la nota del parcial final : ")
(define parcialFinal (read))


(notaFinal materia primerParcial segundoParcial parcialFinal)
