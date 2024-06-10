@ programme Q1
mov r0,#0xE
mov r1,#4
mov r2,#8
mov r3,#0x37
mov r4,#0x12
lsl r0,r3, #4 
add r3,r0,r2 
STRH r3, [r4, #4]
LDRH r1, [r4, #4]
mov r0,#0x20
sub r1,r1,r0
nop
nop
nop
nop
nop
