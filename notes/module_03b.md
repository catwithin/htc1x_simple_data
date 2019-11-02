# Module 3b: Compound data
04-10-2019  

## Compound Data and define struct
```racket

(define-struct pos (x y))
;; structure name; field names

```

declares 4 definitions:

- a constructor "pos"
```java
(define P1 (make-pos 3 6))
```
by order of arguments - boa constructors - by position

- 2 selectors `pos-x` and `pos-y`
```java
(pos-x P1)

```

- predicate - isInstance
(pos? P1)

x,y - fields

17-10-2019

## Compound Data definitions design
## Design World Recipe
