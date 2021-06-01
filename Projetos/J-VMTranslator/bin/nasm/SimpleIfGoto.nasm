; 0 - PUSH constant 5
leaw $5, %A
movw %A,%D
leaw $0,%A
movw (%A),%A
movw %D,(%A)
leaw $0,%A
movw (%A),%S
incw %S
movw %S, (%A)
; 1 - PUSH constant 15
leaw $15, %A
movw %A,%D
leaw $0,%A
movw (%A),%A
movw %D,(%A)
leaw $0,%A
movw (%A),%S
incw %S
movw %S, (%A)
; 2 - PUSH constant 15
leaw $15, %A
movw %A,%D
leaw $0,%A
movw (%A),%A
movw %D,(%A)
leaw $0,%A
movw (%A),%S
incw %S
movw %S, (%A)
; 3 - EQ
leaw $SP, %A
movw (%A), %A
decw %A
movw (%A), %D
decw %A
subw %D, (%A), %S
leaw $equalsSimpleIfGoto0, %A
je %S
nop
leaw $0, %A
movw %A, %D
leaw $endSimpleIfGoto0, %A
jmp
nop
equalsSimpleIfGoto0:
leaw $65535, %A
movw %A, %D
endSimpleIfGoto0:
leaw $SP, %A
movw (%A), %A
decw %A
decw %A
movw %D, (%A)
incw %A
movw %A, %S
leaw %SP, %A
movw %S, (%A)
; 5 - PUSH constant 3
leaw $3, %A
movw %A,%D
leaw $0,%A
movw (%A),%A
movw %D,(%A)
leaw $0,%A
movw (%A),%S
incw %S
movw %S, (%A)
; 6 - POP temp 0
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
; 7 - PUSH constant 15
leaw $15, %A
movw %A,%D
leaw $0,%A
movw (%A),%A
movw %D,(%A)
leaw $0,%A
movw (%A),%S
incw %S
movw %S, (%A)
; 8 - PUSH constant 9
leaw $9, %A
movw %A,%D
leaw $0,%A
movw (%A),%A
movw %D,(%A)
leaw $0,%A
movw (%A),%S
incw %S
movw %S, (%A)
; 9 - EQ
leaw $SP, %A
movw (%A), %A
decw %A
movw (%A), %D
decw %A
subw %D, (%A), %S
leaw $equalsSimpleIfGoto1, %A
je %S
nop
leaw $0, %A
movw %A, %D
leaw $endSimpleIfGoto1, %A
jmp
nop
equalsSimpleIfGoto1:
leaw $65535, %A
movw %A, %D
endSimpleIfGoto1:
leaw $SP, %A
movw (%A), %A
decw %A
decw %A
movw %D, (%A)
incw %A
movw %A, %S
leaw %SP, %A
movw %S, (%A)
; 11 - PUSH constant 2
leaw $2, %A
movw %A,%D
leaw $0,%A
movw (%A),%A
movw %D,(%A)
leaw $0,%A
movw (%A),%S
incw %S
movw %S, (%A)
; 12 - POP temp 1
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
