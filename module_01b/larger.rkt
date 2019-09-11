;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname larger) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)

; Image, Image -> Boolean
; Returns true if first image is wider and taller than the second image

(check-expect (larger?
               (rectangle 10 20 "solid" "red")
               (rectangle 20 20 "solid" "red"))
              false)

(check-expect (larger?
               (rectangle 10 20 "solid" "red")
               (rectangle 20 10 "solid" "red"))
              false)

(check-expect (larger?
               (rectangle 20 20 "solid" "red")
               (rectangle 20 20 "solid" "red"))
              false)

(check-expect (larger?
               (rectangle 20 20 "solid" "red")
               (rectangle 10 10 "solid" "red"))
              true)

(check-expect (larger?
               (rectangle 20 20 "solid" "red")
               (circle 9 "solid" "red"))
              true)

; stub:
;(define (larger? img1 img2) false)

; template:
;(define (larger? img1 img2) (and (larger width) (larger height)))

(define (larger? img1 img2)
  (and (> (image-width img1) (image-width img2))
       (> (image-height img1) (image-height img2))))