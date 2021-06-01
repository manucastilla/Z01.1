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
; 2 - POP temp 0
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
; 3 - PUSH constant 15
leaw $15, %A
movw %A,%D
leaw $0,%A
movw (%A),%A
movw %D,(%A)
leaw $0,%A
movw (%A),%S
incw %S
movw %S, (%A)
; 4 - POP temp 1
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
; 5 - PUSH temp 1
; 6 - PUSH temp 2
; 7 - SUB
; 8 - POP temp 1
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
; 9 - PUSH temp 1
; 10 - PUSH constant 0
leaw $0, %A
movw %A,%D
leaw $0,%A
movw (%A),%A
movw %D,(%A)
leaw $0,%A
movw (%A),%S
incw %S
movw %S, (%A)
; 11 - LT
; 13 - PUSH temp 0
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
; 15 - ADD
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
; 16 - POP temp 0
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
; End
