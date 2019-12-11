; 0 - GT
leaw $SP,%A
movw (%A),%A
decw %A
movw (%A),%D
decw %A
movw (%A),%S
subw %S, %D, %S
leaw $VERDADE-97a066c7-6ce1-4a7d-99de-acfdc35d8c76,%A
jg %S
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
leaw $FINISH-97a066c7-6ce1-4a7d-99de-acfdc35d8c76,%A
jmp
nop
VERDADE-97a066c7-6ce1-4a7d-99de-acfdc35d8c76:
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
leaw $FINISH-97a066c7-6ce1-4a7d-99de-acfdc35d8c76,%A
jmp
nop
FINISH-97a066c7-6ce1-4a7d-99de-acfdc35d8c76:
; End
