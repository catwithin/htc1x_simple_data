;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname lists) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)

empty
(cons (square 10 "solid" "blue")
      (cons (triangle 20 "solid" "green") empty))

(define L1 (cons 10 (cons 9 (cons 10 empty))))

(first L1)


(rest L1)
(empty? empty)
(empty? L1)

