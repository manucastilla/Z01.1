; 0 - PUSH constant 111
leaw $111, %A
movw %A,%D
leaw $0,%A
movw (%A),%A
movw %D,(%A)
leaw $0,%A
movw (%A),%S
incw %S
movw %S, (%A)
; 1 - PUSH constant 333
leaw $333, %A
movw %A,%D
leaw $0,%A
movw (%A),%A
movw %D,(%A)
leaw $0,%A
movw (%A),%S
incw %S
movw %S, (%A)
; 2 - PUSH constant 888
leaw $888, %A
movw %A,%D
leaw $0,%A
movw (%A),%A
movw %D,(%A)
leaw $0,%A
movw (%A),%S
incw %S
movw %S, (%A)
; 3 - POP static 8
; 4 - POP static 3
; 5 - POP static 1
; 6 - PUSH static 3
; 7 - PUSH static 1
; 8 - SUB
; 9 - PUSH static 8
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
; End
