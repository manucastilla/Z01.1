; 0 - NEG
leaw $SP,%A
movw (%A),%A
decw %A
movw (%A),%D
negw %D
movw %D, (%A)
movw %A, %D
incw %D
leaw $SP,%A
movw %D,(%A)
; End
