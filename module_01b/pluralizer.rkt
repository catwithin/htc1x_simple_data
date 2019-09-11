;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname pluralizer) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; Problem: Design a function that pluralizes a given word. (Pluralize means to convert the word to its plural form.) For simplicity you may assume that just adding s is enough to pluralize a word.

;; Signature
;; Type -> Type (so far only primitives)
;; String -> String

;; Purpose
;; Produces in terms of what it consumes, one line
;; Produces word with appended s on it's end

;; Stub
;; Correct name, number of params and produces some stub result
;(define (pluralizer w)
;  "ws")

;; Tests - Examples
(check-expect (pluralizer "cat") "cats")
(check-expect (pluralizer "house") "houses")

;; Template (outline of a body) & constants

;; Code body
(define (pluralizer w)
  (string-append w "s"))

;; Test & debug