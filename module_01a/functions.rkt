;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname functions) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; Functions
(require 2htdp/image)

; Definition:
(define (bulb c)
(circle 40 "solid" c))
; (define (name_func name_param1 )
;    expression)

; Function call:
; name_func expression := operand
(bulb (string-append "purp" "le"))

; Function definitions:
; - record the def

; Function call Evaluation:
; - reduce operands to values -> arguments
; - replace function call by the body of a function with parameters replaced by arguments

; Any program can be written in a language that uses only functions (no primitives).
; HW: Prove it. xD
