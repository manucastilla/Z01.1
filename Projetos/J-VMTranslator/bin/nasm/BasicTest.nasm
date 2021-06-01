; 0 - PUSH constant 10
leaw $10, %A
movw %A,%D
leaw $0,%A
movw (%A),%A
movw %D,(%A)
leaw $0,%A
movw (%A),%S
incw %S
movw %S, (%A)
; 1 - PUSH local 0
leaw $1,%A
movw (%A),%S
leaw $0,%A
addw %S,%A,%D
movw %D,%A
movw (%A),%D
leaw $0,%A
movw (%A),%S
movw %S,%A 
movw %D,(%A)
incw %A
movw %A,%S
leaw $0,%A
movw %S,(%A)
; 2 - POP local 0
leaw $SP, %A
movw (%A), %S
decw %S
movw %S, (%A)
movw %S, %A
movw (%A), %D
leaw $1, %A
movw (%A), %S
leaw $0,%A
addw %A, %S, %S
movw %S, %A
movw %D, (%A)
; 3 - PUSH constant 21
leaw $21, %A
movw %A,%D
leaw $0,%A
movw (%A),%A
movw %D,(%A)
leaw $0,%A
movw (%A),%S
incw %S
movw %S, (%A)
; 4 - PUSH constant 22
leaw $22, %A
movw %A,%D
leaw $0,%A
movw (%A),%A
movw %D,(%A)
leaw $0,%A
movw (%A),%S
incw %S
movw %S, (%A)
; 5 - POP argument 2
; 6 - POP argument 1
; 7 - PUSH constant 36
leaw $36, %A
movw %A,%D
leaw $0,%A
movw (%A),%A
movw %D,(%A)
leaw $0,%A
movw (%A),%S
incw %S
movw %S, (%A)
; 8 - POP this 6
; 9 - PUSH constant 42
leaw $42, %A
movw %A,%D
leaw $0,%A
movw (%A),%A
movw %D,(%A)
leaw $0,%A
movw (%A),%S
incw %S
movw %S, (%A)
; 10 - PUSH constant 45
leaw $45, %A
movw %A,%D
leaw $0,%A
movw (%A),%A
movw %D,(%A)
leaw $0,%A
movw (%A),%S
incw %S
movw %S, (%A)
; 11 - POP that 5
; 12 - POP that 2
; 13 - PUSH constant 510
leaw $510, %A
movw %A,%D
leaw $0,%A
movw (%A),%A
movw %D,(%A)
leaw $0,%A
movw (%A),%S
incw %S
movw %S, (%A)
; 14 - POP temp 6
leaw $SP,%A
movw (%A), %S
decw %S
movw %S, (%A)
movw (%A), %A
movw (%A), %S
leaw $6, %A
movw %A, %D
leaw $5, %A
addw %A, %D, %D
movw %D, %A
movw %S, (%A)
; 15 - PUSH local 0
leaw $1,%A
movw (%A),%S
leaw $0,%A
addw %S,%A,%D
movw %D,%A
movw (%A),%D
leaw $0,%A
movw (%A),%S
movw %S,%A 
movw %D,(%A)
incw %A
movw %A,%S
leaw $0,%A
movw %S,(%A)
; 16 - PUSH that 5
; 17 - ADD
leaw $0, %A
movw (%A), %A
decw %A
movw (%A), %D
decw %A
movw (%A), %S
addw %D, %S, %S
movw %S, (%A)
incw %A
movw %A, %D
leaw $0, %A
movw %D, (%A)
; 18 - PUSH argument 1
; 19 - SUB
; 20 - PUSH this 6
; 21 - PUSH this 6
; 22 - ADD
leaw $0, %A
movw (%A), %A
decw %A
movw (%A), %D
decw %A
movw (%A), %S
addw %D, %S, %S
movw %S, (%A)
incw %A
movw %A, %D
leaw $0, %A
movw %D, (%A)
; 23 - SUB
; 24 - PUSH temp 6
; 25 - ADD
leaw $0, %A
movw (%A), %A
decw %A
movw (%A), %D
decw %A
movw (%A), %S
addw %D, %S, %S
movw %S, (%A)
incw %A
movw %A, %D
leaw $0, %A
movw %D, (%A)
; End
