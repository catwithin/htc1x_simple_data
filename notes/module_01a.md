# Summary of Module 1a: BSL syntax

<!-- TOC depthFrom:1 depthTo:6 withLinks:1 updateOnSave:1 orderedList:0 -->

- [Summary of Module 1a: BSL syntax](#summary-of-module-1a-bsl-syntax)
	- [0. Questions](#0-questions)
	- [1. Primitives: Numbers, Strings, Images](#1-primitives-numbers-strings-images)
		- [Strings](#strings)
		- [Images](#images)
	- [2. Constants](#2-constants)
	- [3. Booleans](#3-booleans)
		- [IF Expressions](#if-expressions)
		- [Evaluation rules](#evaluation-rules)
	- [4. Functions](#4-functions)
		- [Functions Evaluation](#functions-evaluation)
	- [5. Problems](#5-problems)

<!-- /TOC -->

[Basic Student Language](https://docs.racket-lang.org/htdp-langs/beginner.html) (small sublanguage of Racket).

## 0. Questions
- Write code to put red circle on top of a yellow one (1)
- Primitive call evaluation rules (1)
- Write a constant declaration and give rules for declaration and use (2)
- What is a predicate? (3)
- Write an if expression and its evaluation rules (3)
- Functions: Operands, arguments, definition and call syntax (4)
- Def and call evaluation rules for functions (4)

## 1. Primitives: Numbers, Strings, Images

__expression__: call to a primitive
__Syntax__: (operator operands)

To __evaluate a primitive call__ (left to right/inside outside):
 - reduce operands to values
 - apply primitive to values

```java
(sqrt (+ (sqr 3) (sqr 4)))

```
### Strings

```java
"string value"
(string-append "Ada" " " "Lovelace")
(string-length "koptyak")
(substring "Keanu" 0 1)
```

### Images
```java
(require 2htdp/image)

(circle 10 "solid" "red")
(rectangle 30 60 "outline" "blue")
(text "HI" 24 "orange")

(overlay (circle 10 "solid" "red")
       (circle 20 "solid" "yellow")
       (circle 30 "solid" "green"))

```
+ above, beside, overlay

## 2. Constants

```java
(define WIDTH 400)
```
(define OWL ![](assets/README-287bf9cd.png) )
```java
(define ROWL (rotate -10 OWL))
ROWL
```


__Syntax__: (define _name_ _expression_)

__Evaluation of constant DECLARATION__ (definition):
 - Evaluate the expression
 - record value as a value of a constant with the given name

__Evaluation of a call to defined constant__ NAME:
 - look up value of the recorded value for given name

## 3. Booleans

```bsl
true
false
(and true false true)
(or false false true)
(not true)
```

__(def) Predicate__ is a primitive or a function that produces boolean value

```bsl
(> WIDTH HEIGHT)
(>= WIDTH HEIGHT)
(= 1 2)
(string=? "foo" "bar")
```

### IF Expressions

```java
(if (predicate expression)
    (true expression)
    (false expression))

(if (< (image-width I1)
       (image-height I1))
    "tall"
    "wide")
```

### Evaluation rules
- evaluate predicate expression, replace w value
- if true(false), replace if expression with true(false) expression
- question expression is not a predicate, error

## 4. Functions
```java
; (define (name_func name_param1 name_param2)
;    expression)

(define (bulb c)
(circle 40 "solid" c))

; Function call:
; (name_func expression := operand)
(bulb (string-append "purp" "le"))

```
### Functions Evaluation
Function definition:
 - record the def

__Function call Evaluation__:
 - reduce operands to values -> arguments
 - replace function call by the body of a function with parameters replaced by arguments

Any program can be written in a language that uses only functions (no primitives).

## 5. Problems
- Write out the step-by-step evaluation of some function call
- Can search through context menu on function name for definitions: "Search in Help Desk"
