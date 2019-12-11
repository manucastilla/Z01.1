; 0 - LT
leaw $SP,%A
movw (%A),%A
decw %A
movw (%A),%D
decw %A
movw (%A),%S
subw %S, %D, %S
leaw $VERDADE-bb19c795-4863-44cf-8bf1-d5ebfb62f77f,%A
jl %S
nop
movw $0,%D
leaw $SP,%A
movw (%A),%A
decw %A
decw %A
movw %D,(%A)
movw %A, %D
incw %D
leaw $SP,%A
movw %D,(%A)
leaw $FINISH-bb19c795-4863-44cf-8bf1-d5ebfb62f77f,%A
jmp
nop
VERDADE-bb19c795-4863-44cf-8bf1-d5ebfb62f77f:
leaw $131071,%A
movw %A,%D
leaw $SP,%A
movw (%A),%A
decw %A
decw %A
movw %D,(%A)
movw %A, %D
incw %D
leaw $SP,%A
movw %D,(%A)
leaw $FINISH-bb19c795-4863-44cf-8bf1-d5ebfb62f77f,%A
jmp
nop
FINISH-bb19c795-4863-44cf-8bf1-d5ebfb62f77f:
; End
