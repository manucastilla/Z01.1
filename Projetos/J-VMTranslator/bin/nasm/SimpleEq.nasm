; 0 - EQ
leaw $SP,%A
movw (%A),%A
decw %A
movw (%A),%D
decw %A
movw (%A),%S
subw %S, %D, %S
leaw $VERDADE-6ced7fdd-2c50-4a2c-bd66-6e6d1ffd6cf4,%A
je %S
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
leaw $FINISH-6ced7fdd-2c50-4a2c-bd66-6e6d1ffd6cf4,%A
jmp
nop
VERDADE-6ced7fdd-2c50-4a2c-bd66-6e6d1ffd6cf4:
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
leaw $FINISH-6ced7fdd-2c50-4a2c-bd66-6e6d1ffd6cf4,%A
jmp
nop
FINISH-6ced7fdd-2c50-4a2c-bd66-6e6d1ffd6cf4:
; End
