; 0 - PUSH constant 0
leaw $0, %A
movw %A,%D
leaw $0,%A
movw (%A),%A
movw %D,(%A)
leaw $0,%A
movw (%A),%S
incw %S
movw %S, (%A)
; 1 - POP temp 0
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
; 2 - PUSH constant 1
leaw $1, %A
movw %A,%D
leaw $0,%A
movw (%A),%A
movw %D,(%A)
leaw $0,%A
movw (%A),%S
incw %S
movw %S, (%A)
; 3 - POP temp 1
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
; 4 - PUSH temp 0
; 5 - PUSH constant 10
leaw $10, %A
movw %A,%D
leaw $0,%A
movw (%A),%A
movw %D,(%A)
leaw $0,%A
movw (%A),%S
incw %S
movw %S, (%A)
; 6 - EQ
leaw $SP, %A
movw (%A), %A
decw %A
movw (%A), %D
decw %A
subw %D, (%A), %S
leaw $equalsBasicLoop0, %A
je %S
nop
leaw $0, %A
movw %A, %D
leaw $endBasicLoop0, %A
jmp
nop
equalsBasicLoop0:
leaw $65535, %A
movw %A, %D
endBasicLoop0:
leaw $SP, %A
movw (%A), %A
decw %A
decw %A
movw %D, (%A)
incw %A
movw %A, %S
leaw %SP, %A
movw %S, (%A)
; 8 - PUSH temp 0
; 9 - PUSH constant 1
leaw $1, %A
movw %A,%D
leaw $0,%A
movw (%A),%A
movw %D,(%A)
leaw $0,%A
movw (%A),%S
incw %S
movw %S, (%A)
; 10 - ADD
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
; 11 - POP temp 0
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
; 12 - PUSH temp 1
; 13 - PUSH temp 1
; 14 - ADD
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
; 15 - POP temp 1
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
