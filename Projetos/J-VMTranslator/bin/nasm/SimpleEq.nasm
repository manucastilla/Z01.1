; 0 - EQ
leaw $SP, %A
movw (%A), %A
decw %A
movw (%A), %D
decw %A
subw %D, (%A), %S
leaw $equalsSimpleEq0, %A
je %S
nop
leaw $0, %A
movw %A, %D
leaw $endSimpleEq0, %A
jmp
nop
equalsSimpleEq0:
leaw $65535, %A
movw %A, %D
endSimpleEq0:
leaw $SP, %A
movw (%A), %A
decw %A
decw %A
movw %D, (%A)
incw %A
movw %A, %S
leaw %SP, %A
movw %S, (%A)
; End
