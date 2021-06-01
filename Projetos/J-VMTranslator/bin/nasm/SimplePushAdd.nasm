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
; 1 - PUSH constant 9
leaw $9, %A
movw %A,%D
leaw $0,%A
movw (%A),%A
movw %D,(%A)
leaw $0,%A
movw (%A),%S
incw %S
movw %S, (%A)
; 2 - ADD
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
