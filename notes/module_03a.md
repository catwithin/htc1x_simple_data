
# Module 3a: How to design Worlds

16-10-2019

## The big bang mechanism

Data definition - what numbers represent (coordinates of a cat on the screen).

```racket
(require 2htdp/image)
(require 2htdp/universe)

(define CTR-Y (/ HEIGHT 2)) ; single point of control using constants
(define MTS (empty-scene WIDTH HEIGHT "midnight blue"))

(place-image CAT-IMG 100 CTR-Y MTS)

```
MTS - Empty screen
CTR-Y - middle of the screen

```racket
(big-bang 0             ; Cat
  (on-tick next-cat)    ; Cat -> Cat
  (to-draw render-cat)  ; Cat -> Image
  )
```

big-bang is polimorphic:
```java
X - initial state; X -> X; X -> Image
```

For any given use all X have to be the same.

Big bang is a _User interface framework_. Behind the scenes it is calling f1 with the initial state, getting resulting X, passing it to f2, getting image, rendering the image, calling f1 with resulting X, etc.

Another hooks: (on-key) - when button is pressed.

Big bang because it produces a World.

## How to design worlds: Domain Analysis

- identify constant information
- variable information
- required big-bang options

1. Domain Analysis:
    1. Sketch program scenarios
    2. Identify constant information
    3. Identify changing information

    4. Identify big-bang options

    | If your program needs to:	| Then it needs this option:|
    |---|---|
    |change as time goes by (nearly all do)	| on-tick|
    |display something (nearly all do) |	to-draw|
    |change in response to key presses|	on-key |
    |change in response to mouse activity |	on-mouse|
    |stop automatically	| stop-when|

2. Build the actual program
    1. Constants (based on 1.2 above)
    ```racket

    ; traceability - with the constants identified at design stage
    ; important, bc we will have to change the program,

    ```
    2. Data definitions using HtDD (based on 1.3 above)
    ```racket

    ;; Cat is number (Atomic)
    ;; interp. x position of the cat in screen coordinates
    ; elaborate on interpretation with comments for examples:
    (define C1 0) ; left edge
    (define C2 (/ WIDTH 2)) ; middle
    (define C3 WIDTH) ; right edge

    ```
    3. Functions using HtDF
        - main first (based on 1.3, 1.4 and 2.2 above)
        - wish list entries for big-bang handlers
    4. Work through wish list until done


Template:
```racket
(require 2htdp/image)
(require 2htdp/universe)

;; My world program  (make this more specific)

;; =================
;; Constants:


;; =================
;; Data definitions:

;; WS is ... (give WS a better name)



;; =================
;; Functions:

;; WS -> WS
;; start the world with ...
;;
(define (main ws)
  (big-bang ws                   ; WS
            (on-tick   tock)     ; WS -> WS
            (to-draw   render)   ; WS -> Image
            (stop-when ...)      ; WS -> Boolean
            (on-mouse  ...)      ; WS Integer Integer MouseEvent -> WS
            (on-key    ...)))    ; WS KeyEvent -> WS

;; WS -> WS
;; produce the next ...
;; !!!
(define (tock ws) ...)


;; WS -> Image
;; render ...
;; !!!
(define (render ws) ...)
```


Pieces of the solution + steps of the process => templates. Cross-cutting decomposition.

17-10-2019
## Refactoring

Clear correspondence between analysis of problem domain and the program implementation helps to incorporate changes - running them through the code.
Analysis - wire-frames that professor draws - are an abbreviation = model of a program, it correctly describes the structure of the program, but has less detail. So it is easier to plan changes going through wire-frames.


### Misc

- Only two types of programs: those that are not used and those that are constantly changing
- should use constants in examples - correct when constants change and examples are more clear
- for large enums it's ok to do only white-box testing i.e. testing only as many enum cases as code requires
- !!! - used as a TODO: marker
