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
leaw $SP,%A
movw (%A),%A
decw %A
movw (%A),%D
decw %A
movw (%A),%S
subw %S, %D, %S
leaw $VERDADE-4b22fb02-1eac-4911-8bde-2fb3bf91c30d,%A
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
leaw $FINISH-4b22fb02-1eac-4911-8bde-2fb3bf91c30d,%A
jmp
nop
VERDADE-4b22fb02-1eac-4911-8bde-2fb3bf91c30d:
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
leaw $FINISH-4b22fb02-1eac-4911-8bde-2fb3bf91c30d,%A
jmp
nop
FINISH-4b22fb02-1eac-4911-8bde-2fb3bf91c30d:
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
leaw $SP,%A
movw (%A),%A
decw %A
movw (%A),%D
decw %A
movw (%A),%S
subw %S, %D, %S
leaw $VERDADE-9e0cc0f4-f3e9-444d-9cf1-4f3be5cf4aec,%A
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
leaw $FINISH-9e0cc0f4-f3e9-444d-9cf1-4f3be5cf4aec,%A
jmp
nop
VERDADE-9e0cc0f4-f3e9-444d-9cf1-4f3be5cf4aec:
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
leaw $FINISH-9e0cc0f4-f3e9-444d-9cf1-4f3be5cf4aec,%A
jmp
nop
FINISH-9e0cc0f4-f3e9-444d-9cf1-4f3be5cf4aec:
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
leaw $SP,%A
movw (%A),%A
decw %A
movw (%A),%D
decw %A
movw (%A),%S
subw %S, %D, %S
leaw $VERDADE-6203cdcf-d0d5-4a74-bef1-3114237f22c1,%A
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
leaw $FINISH-6203cdcf-d0d5-4a74-bef1-3114237f22c1,%A
jmp
nop
VERDADE-6203cdcf-d0d5-4a74-bef1-3114237f22c1:
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
leaw $FINISH-6203cdcf-d0d5-4a74-bef1-3114237f22c1,%A
jmp
nop
FINISH-6203cdcf-d0d5-4a74-bef1-3114237f22c1:
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
leaw $SP,%A
movw (%A),%A
decw %A
movw (%A),%D
decw %A
movw (%A),%S
subw %S, %D, %S
leaw $VERDADE-3dcde70e-2a1a-4755-8d1b-3f25dc5d766b,%A
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
leaw $FINISH-3dcde70e-2a1a-4755-8d1b-3f25dc5d766b,%A
jmp
nop
VERDADE-3dcde70e-2a1a-4755-8d1b-3f25dc5d766b:
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
leaw $FINISH-3dcde70e-2a1a-4755-8d1b-3f25dc5d766b,%A
jmp
nop
FINISH-3dcde70e-2a1a-4755-8d1b-3f25dc5d766b:
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
leaw $SP,%A
movw (%A),%A
decw %A
movw (%A),%D
decw %A
movw (%A),%S
subw %S, %D, %S
leaw $VERDADE-0c0b1d95-50f8-4a32-806f-31e5cbcc77fa,%A
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
leaw $FINISH-0c0b1d95-50f8-4a32-806f-31e5cbcc77fa,%A
jmp
nop
VERDADE-0c0b1d95-50f8-4a32-806f-31e5cbcc77fa:
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
leaw $FINISH-0c0b1d95-50f8-4a32-806f-31e5cbcc77fa,%A
jmp
nop
FINISH-0c0b1d95-50f8-4a32-806f-31e5cbcc77fa:
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
leaw $SP,%A
movw (%A),%A
decw %A
movw (%A),%D
decw %A
movw (%A),%S
subw %S, %D, %S
leaw $VERDADE-0b78659a-ed09-4f18-b859-82b835b52ea3,%A
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
leaw $FINISH-0b78659a-ed09-4f18-b859-82b835b52ea3,%A
jmp
nop
VERDADE-0b78659a-ed09-4f18-b859-82b835b52ea3:
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
leaw $FINISH-0b78659a-ed09-4f18-b859-82b835b52ea3,%A
jmp
nop
FINISH-0b78659a-ed09-4f18-b859-82b835b52ea3:
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
leaw $SP,%A
movw (%A),%A
decw %A
movw (%A),%D
decw %A
movw (%A),%S
subw %S, %D, %S
leaw $VERDADE-2bc30d1e-23c0-4b6c-9925-783dd6a422c4,%A
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
leaw $FINISH-2bc30d1e-23c0-4b6c-9925-783dd6a422c4,%A
jmp
nop
VERDADE-2bc30d1e-23c0-4b6c-9925-783dd6a422c4:
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
leaw $FINISH-2bc30d1e-23c0-4b6c-9925-783dd6a422c4,%A
jmp
nop
FINISH-2bc30d1e-23c0-4b6c-9925-783dd6a422c4:
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
leaw $SP,%A
movw (%A),%A
decw %A
movw (%A),%D
decw %A
movw (%A),%S
subw %S, %D, %S
leaw $VERDADE-de8bf211-5b31-4385-8c93-719387a6ea61,%A
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
leaw $FINISH-de8bf211-5b31-4385-8c93-719387a6ea61,%A
jmp
nop
VERDADE-de8bf211-5b31-4385-8c93-719387a6ea61:
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
leaw $FINISH-de8bf211-5b31-4385-8c93-719387a6ea61,%A
jmp
nop
FINISH-de8bf211-5b31-4385-8c93-719387a6ea61:
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
leaw $SP,%A
movw (%A),%A
decw %A
movw (%A),%D
decw %A
movw (%A),%S
subw %S, %D, %S
leaw $VERDADE-d3e013aa-d6d4-4454-a8d7-663840084dce,%A
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
leaw $FINISH-d3e013aa-d6d4-4454-a8d7-663840084dce,%A
jmp
nop
VERDADE-d3e013aa-d6d4-4454-a8d7-663840084dce:
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
leaw $FINISH-d3e013aa-d6d4-4454-a8d7-663840084dce,%A
jmp
nop
FINISH-d3e013aa-d6d4-4454-a8d7-663840084dce:
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
leaw $SP,%A
movw (%A),%A
decw %A
movw (%A),%D
decw %A
movw (%A),%S
addw %S, %D, %S
movw %S, (%A)
movw %A, %D
incw %D
leaw $SP,%A
movw %D,(%A)
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
leaw $SP,%A
movw (%A),%A
decw %A
movw (%A),%D
decw %A
movw (%A),%S
subw %S, %D, %S
movw %S, (%A)
movw %A, %D
incw %D
leaw $SP,%A
movw %D,(%A)
; 33 - NEG
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
; 34 - AND
leaw $SP,%A
movw (%A),%A
decw %A
movw (%A),%D
decw %A
movw (%A),%S
andw %S, %D, %S
movw %S, (%A)
movw %A, %D
incw %D
leaw $SP,%A
movw %D,(%A)
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
leaw $SP,%A
movw (%A),%A
decw %A
movw (%A),%D
decw %A
movw (%A),%S
orw %S, %D, %S
movw %S, (%A)
movw %A, %D
incw %D
leaw $SP,%A
movw %D,(%A)
; 37 - NOT
leaw $SP,%A
movw (%A),%A
decw %A
movw (%A),%D
notw %D
movw %D, (%A)
movw %A, %D
incw %D
leaw $SP,%A
movw %D,(%A)
; End
