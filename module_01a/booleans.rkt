;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname booleans) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; Booleans and IFs
true
false

(define WIDTH 100)
(define HEIGHT 100)

; Predicate is a primitive or a function that produces boolean value
(> WIDTH HEIGHT)
(>= WIDTH HEIGHT)
(= 1 2)
(string=? "foo" "bar")

(require 2htdp/image)

(define I1 (rectangle 10 20 "solid" "red"))
(define I2 (rectangle 20 10 "solid" "red"))

(< (image-width I1)
   (image-width I2))


; IFs
;(if (predicate expression)
;    (true expression)
;    (false expression))

(if (< (image-width I1)
       (image-height I1))
    "tall"
    "wide")

; Evaluation rules
; - evaluate predicate expression, replace w value
; - if true(false), replace if expression with true(false) expression
; - question expression is not a predicate, error

(if (< (image-width I2)
       (image-height I2))
    (image-width I2)
    (image-height I2))


(and true false true)

(or false false true)

(not true)
