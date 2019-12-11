; Inicialização para VM
leaw $Main.main, %A
jmp
nop
; 1 - PUSH constant 0
leaw $0, %A
movw %A,%D
leaw $0,%A
movw (%A),%A
movw %D,(%A)
leaw $0,%A
movw (%A),%S
incw %S
movw %S, (%A)
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
; 3 - PUSH argument 1
; 4 - POP local 1
leaw $SP, %A
movw (%A), %S
decw %S
movw %S, (%A)
movw %S, %A
movw (%A), %D
leaw $1, %A
movw (%A), %S
leaw $1,%A
addw %A, %S, %S
movw %S, %A
movw %D, (%A)
; 5 - PUSH constant 0
leaw $0, %A
movw %A,%D
leaw $0,%A
movw (%A),%A
movw %D,(%A)
leaw $0,%A
movw (%A),%S
incw %S
movw %S, (%A)
; 6 - PUSH local 1
leaw $1,%A
movw (%A),%S
leaw $1,%A
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
; 7 - EQ
leaw $SP, %A
movw (%A), %A
decw %A
movw (%A), %D
decw %A
subw %D, (%A), %S
leaw $equalsmult0, %A
je %S
nop
leaw $0, %A
movw %A, %D
leaw $endmult0, %A
jmp
nop
equalsmult0:
leaw $65535, %A
movw %A, %D
endmult0:
leaw $SP, %A
movw (%A), %A
decw %A
decw %A
movw %D, (%A)
incw %A
movw %A, %S
leaw %SP, %A
movw %S, (%A)
; 9 - PUSH local 0
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
; 10 - PUSH argument 0
; 11 - ADD
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
; 12 - POP local 0
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
; 13 - PUSH local 1
leaw $1,%A
movw (%A),%S
leaw $1,%A
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
; 14 - PUSH constant 1
leaw $1, %A
movw %A,%D
leaw $0,%A
movw (%A),%A
movw %D,(%A)
leaw $0,%A
movw (%A),%S
incw %S
movw %S, (%A)
; 15 - SUB
; 16 - POP local 1
leaw $SP, %A
movw (%A), %S
decw %S
movw %S, (%A)
movw %S, %A
movw (%A), %D
leaw $1, %A
movw (%A), %S
leaw $1,%A
addw %A, %S, %S
movw %S, %A
movw %D, (%A)
; 18 - PUSH local 0
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
; 21 - PUSH constant 14
leaw $14, %A
movw %A,%D
leaw $0,%A
movw (%A),%A
movw %D,(%A)
leaw $0,%A
movw (%A),%S
incw %S
movw %S, (%A)
; 22 - PUSH constant 2
leaw $2, %A
movw %A,%D
leaw $0,%A
movw (%A),%A
movw %D,(%A)
leaw $0,%A
movw (%A),%S
incw %S
movw %S, (%A)
; 23 - ADD
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
; 24 - PUSH constant 8
leaw $8, %A
movw %A,%D
leaw $0,%A
movw (%A),%A
movw %D,(%A)
leaw $0,%A
movw (%A),%S
incw %S
movw %S, (%A)
; 25 - PUSH constant 1
leaw $1, %A
movw %A,%D
leaw $0,%A
movw (%A),%A
movw %D,(%A)
leaw $0,%A
movw (%A),%S
incw %S
movw %S, (%A)
; 26 - SUB
; 27 - PUSH constant 16
leaw $16, %A
movw %A,%D
leaw $0,%A
movw (%A),%A
movw %D,(%A)
leaw $0,%A
movw (%A),%S
incw %S
movw %S, (%A)
; 28 - PUSH constant 7
leaw $7, %A
movw %A,%D
leaw $0,%A
movw (%A),%A
movw %D,(%A)
leaw $0,%A
movw (%A),%S
incw %S
movw %S, (%A)
; 30 - POP temp 1
leaw $SP,%A
movw (%A), %S
decw %S
movw %S, (%A)
movw (%A), %A
movw (%A), %S
leaw $1, %A
movw %A, %D
leaw $5, %A
addw %A, %D, %D
movw %D, %A
movw %S, (%A)
; 31 - PUSH constant 14
leaw $14, %A
movw %A,%D
leaw $0,%A
movw (%A),%A
movw %D,(%A)
leaw $0,%A
movw (%A),%S
incw %S
movw %S, (%A)
; 32 - PUSH constant 2
leaw $2, %A
movw %A,%D
leaw $0,%A
movw (%A),%A
movw %D,(%A)
leaw $0,%A
movw (%A),%S
incw %S
movw %S, (%A)
; 33 - ADD
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
; 34 - POP temp 0
leaw $SP,%A
movw (%A), %S
decw %S
movw %S, (%A)
movw (%A), %A
movw (%A), %S
leaw $0, %A
movw %A, %D
leaw $5, %A
addw %A, %D, %D
movw %D, %A
movw %S, (%A)
; 35 - PUSH constant 8
leaw $8, %A
movw %A,%D
leaw $0,%A
movw (%A),%A
movw %D,(%A)
leaw $0,%A
movw (%A),%S
incw %S
movw %S, (%A)
; 36 - PUSH constant 1
leaw $1, %A
movw %A,%D
leaw $0,%A
movw (%A),%A
movw %D,(%A)
leaw $0,%A
movw (%A),%S
incw %S
movw %S, (%A)
; 37 - SUB
; 38 - POP temp 1
leaw $SP,%A
movw (%A), %S
decw %S
movw %S, (%A)
movw (%A), %A
movw (%A), %S
leaw $1, %A
movw %A, %D
leaw $5, %A
addw %A, %D, %D
movw %D, %A
movw %S, (%A)
; 39 - PUSH temp 0
; 40 - PUSH temp 1
; 42 - POP temp 1
leaw $SP,%A
movw (%A), %S
decw %S
movw %S, (%A)
movw (%A), %A
movw (%A), %S
leaw $1, %A
movw %A, %D
leaw $5, %A
addw %A, %D, %D
movw %D, %A
movw %S, (%A)
; End
