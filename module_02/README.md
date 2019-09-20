# Summary of Module 2: Cond, Data Design

[TOC]

## 0. Questions
- Write cond, go through evaluation rules
-
```java
(define (mag2 x)
  (cond [(< x 0) "negative"]
        [(= x 0) "zero"]
        [else    "positive"]))

(mag2 0)

```
## 1. Cond Statement
### Syntax rules:

```lisp
(cond Q-A pairs in [] or ())


(define (aspect-ratio img)
  (cond [(> (image-height img) (image-width img)) "tall"]
        [(= (image-height img) (image-width img)) "square"]
        [else "wide"]))
```
by convention use __[]__
__Q-A pair__: Q - predicate, except for last one that can be "else"

### Evaluation rules for Cond expressions:
- No Q-A pairs -> error
- if the first Q is not a value, evaluate and replace entire cond with the new cond in which the first Q is replaced with its value
- if the first Q is true/else, replace cond expression with the first A
- If the first Q is false, drop 1st Q-A pair: replace cond with first pair removed
- Since 1st Q is not else/true/false, raise error

## 2. Data Design Recipe
### Data definition:

- how to form data of a new type
- how to represent information (from Problem Domain) as data
- how to interpret data of this type as information => establishes correspondence
- gives a template for operating on data

### Data definition simplifies function definition:
- restricts data consumed
- restricts data produced
- helps generate examples
- provides template


### Data design Recipe
0. identify the inherent structure of the information.
1. A possible structure definition (not until compound data)
2. A type comment: type name + how to form data of that type.
3. An interpretation that describes the correspondence between information and data.
4. One or more examples of the data.
5. A template for a 1 argument function operating on data of this type.
