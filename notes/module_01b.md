# Summary of Module 1b: How to Design Functions


#### 1. Signature
  - Type -> Type (so far only primitives)
  - e.g.Number -> Number
  - We need Signature to be as specific as possible - e.g. Natural instead of a Number (pixels are always integers)

#### 2. Purpose
  - Produces in terms of what it consumes, one line
  - Should mention how it'll treat ambiguous cases

#### 3. Stub
  - Correct name, number of params, produces some stub correct result

#### 4. Test / Examples
  - Enough number of tests to cover all situations := to have __complete code coverage__ (can check visually in dr.Racket: it highlights code pieces that did not run)
  - Cover corner cases
  - Run and fail test to check they r correct
```java
(check-expect (double 3) 6)
```

#### 5. Template
  - (outline of a body) & constants


#### 6. Code body
#### 7. Test & Debug
