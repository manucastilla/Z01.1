; 0 - PUSH constant 17
leaw $17, %A
movw %A,%D
leaw $0,%A
movw (%A),%A
movw %D,(%A)
leaw $0,%A
movw (%A),%S
incw %S
movw %S, (%A)
; 1 - PUSH constant 17
leaw $17, %A
movw %A,%D
leaw $0,%A
movw (%A),%A
movw %D,(%A)
leaw $0,%A
movw (%A),%S
incw %S
movw %S, (%A)
; 2 - EQ
leaw $SP, %A
movw (%A), %A
decw %A
movw (%A), %D
decw %A
subw %D, (%A), %S
leaw $equalsStackTest0, %A
je %S
nop
leaw $0, %A
movw %A, %D
leaw $endStackTest0, %A
jmp
nop
equalsStackTest0:
leaw $65535, %A
movw %A, %D
endStackTest0:
leaw $SP, %A
movw (%A), %A
decw %A
decw %A
movw %D, (%A)
incw %A
movw %A, %S
leaw %SP, %A
movw %S, (%A)
; 3 - PUSH constant 17
leaw $17, %A
movw %A,%D
leaw $0,%A
movw (%A),%A
movw %D,(%A)
leaw $0,%A
movw (%A),%S
incw %S
movw %S, (%A)
; 4 - PUSH constant 16
leaw $16, %A
movw %A,%D
leaw $0,%A
movw (%A),%A
movw %D,(%A)
leaw $0,%A
movw (%A),%S
incw %S
movw %S, (%A)
; 5 - EQ
leaw $SP, %A
movw (%A), %A
decw %A
movw (%A), %D
decw %A
subw %D, (%A), %S
leaw $equalsStackTest1, %A
je %S
nop
leaw $0, %A
movw %A, %D
leaw $endStackTest1, %A
jmp
nop
equalsStackTest1:
leaw $65535, %A
movw %A, %D
endStackTest1:
leaw $SP, %A
movw (%A), %A
decw %A
decw %A
movw %D, (%A)
incw %A
movw %A, %S
leaw %SP, %A
movw %S, (%A)
; 6 - PUSH constant 16
leaw $16, %A
movw %A,%D
leaw $0,%A
movw (%A),%A
movw %D,(%A)
leaw $0,%A
movw (%A),%S
incw %S
movw %S, (%A)
; 7 - PUSH constant 17
leaw $17, %A
movw %A,%D
leaw $0,%A
movw (%A),%A
movw %D,(%A)
leaw $0,%A
movw (%A),%S
incw %S
movw %S, (%A)
; 8 - EQ
leaw $SP, %A
movw (%A), %A
decw %A
movw (%A), %D
decw %A
subw %D, (%A), %S
leaw $equalsStackTest2, %A
je %S
nop
leaw $0, %A
movw %A, %D
leaw $endStackTest2, %A
jmp
nop
equalsStackTest2:
leaw $65535, %A
movw %A, %D
endStackTest2:
leaw $SP, %A
movw (%A), %A
decw %A
decw %A
movw %D, (%A)
incw %A
movw %A, %S
leaw %SP, %A
movw %S, (%A)
; 9 - PUSH constant 892
leaw $892, %A
movw %A,%D
leaw $0,%A
movw (%A),%A
movw %D,(%A)
leaw $0,%A
movw (%A),%S
incw %S
movw %S, (%A)
; 10 - PUSH constant 891
leaw $891, %A
movw %A,%D
leaw $0,%A
movw (%A),%A
movw %D,(%A)
leaw $0,%A
movw (%A),%S
incw %S
movw %S, (%A)
; 11 - LT
; 12 - PUSH constant 891
leaw $891, %A
movw %A,%D
leaw $0,%A
movw (%A),%A
movw %D,(%A)
leaw $0,%A
movw (%A),%S
incw %S
movw %S, (%A)
; 13 - PUSH constant 892
leaw $892, %A
movw %A,%D
leaw $0,%A
movw (%A),%A
movw %D,(%A)
leaw $0,%A
movw (%A),%S
incw %S
movw %S, (%A)
; 14 - LT
; 15 - PUSH constant 891
leaw $891, %A
movw %A,%D
leaw $0,%A
movw (%A),%A
movw %D,(%A)
leaw $0,%A
movw (%A),%S
incw %S
movw %S, (%A)
; 16 - PUSH constant 891
leaw $891, %A
movw %A,%D
leaw $0,%A
movw (%A),%A
movw %D,(%A)
leaw $0,%A
movw (%A),%S
incw %S
movw %S, (%A)
; 17 - LT
; 18 - PUSH constant 32767
leaw $32767, %A
movw %A,%D
leaw $0,%A
movw (%A),%A
movw %D,(%A)
leaw $0,%A
movw (%A),%S
incw %S
movw %S, (%A)
; 19 - PUSH constant 32766
leaw $32766, %A
movw %A,%D
leaw $0,%A
movw (%A),%A
movw %D,(%A)
leaw $0,%A
movw (%A),%S
incw %S
movw %S, (%A)
; 20 - GT
; 21 - PUSH constant 32766
leaw $32766, %A
movw %A,%D
leaw $0,%A
movw (%A),%A
movw %D,(%A)
leaw $0,%A
movw (%A),%S
incw %S
movw %S, (%A)
; 22 - PUSH constant 32767
leaw $32767, %A
movw %A,%D
leaw $0,%A
movw (%A),%A
movw %D,(%A)
leaw $0,%A
movw (%A),%S
incw %S
movw %S, (%A)
; 23 - GT
; 24 - PUSH constant 32766
leaw $32766, %A
movw %A,%D
leaw $0,%A
movw (%A),%A
movw %D,(%A)
leaw $0,%A
movw (%A),%S
incw %S
movw %S, (%A)
; 25 - PUSH constant 32766
leaw $32766, %A
movw %A,%D
leaw $0,%A
movw (%A),%A
movw %D,(%A)
leaw $0,%A
movw (%A),%S
incw %S
movw %S, (%A)
; 26 - GT
; 27 - PUSH constant 57
leaw $57, %A
movw %A,%D
leaw $0,%A
movw (%A),%A
movw %D,(%A)
leaw $0,%A
movw (%A),%S
incw %S
movw %S, (%A)
; 28 - PUSH constant 31
leaw $31, %A
movw %A,%D
leaw $0,%A
movw (%A),%A
movw %D,(%A)
leaw $0,%A
movw (%A),%S
incw %S
movw %S, (%A)
; 29 - PUSH constant 53
leaw $53, %A
movw %A,%D
leaw $0,%A
movw (%A),%A
movw %D,(%A)
leaw $0,%A
movw (%A),%S
incw %S
movw %S, (%A)
; 30 - ADD
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
; 31 - PUSH constant 112
leaw $112, %A
movw %A,%D
leaw $0,%A
movw (%A),%A
movw %D,(%A)
leaw $0,%A
movw (%A),%S
incw %S
movw %S, (%A)
; 32 - SUB
; 33 - NEG
; 34 - AND
; 35 - PUSH constant 82
leaw $82, %A
movw %A,%D
leaw $0,%A
movw (%A),%A
movw %D,(%A)
leaw $0,%A
movw (%A),%S
incw %S
movw %S, (%A)
; 36 - OR
; 37 - NOT
leaw $0,%A
movw (%A),%A
decw %A
movw (%A),%S
notw %S
movw %S, (%A)
movw %A, %S
incw %S
leaw $0,%A
movw %S,(%A)
; End
