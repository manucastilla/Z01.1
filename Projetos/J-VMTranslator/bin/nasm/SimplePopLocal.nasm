; 0 - POP local 0
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
; 1 - POP local 1
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
; 2 - POP local 2
leaw $SP, %A
movw (%A), %S
decw %S
movw %S, (%A)
movw %S, %A
movw (%A), %D
leaw $1, %A
movw (%A), %S
leaw $2,%A
addw %A, %S, %S
movw %S, %A
movw %D, (%A)
; End
