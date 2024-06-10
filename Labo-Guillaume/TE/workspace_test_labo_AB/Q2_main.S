@ programme Q2
MOV r2, #18
MOV r1, #4
STRH r2, [r1, #4]
ADD r0, r2, #3
ORR r0, r1


MOV r2, #4
MOV r0, #32
STRH r0, [r2, #4]
LDRH r3, [r2, #4]
SUB r3, #4


MOV r4, #4
MOV r2, #32
LDRH r3, [r4, #4]
LSL r2, r4
ADD r0, r3, #4


MOV r1, #4
MOV r0, #26
STRH r0, [r1, #4]
LDRH r3, [r1, #4]
SUB r3, r0, #8

