@ programme Q5
mov r0,#0x24
mov r1,#9
mov r2,#16
add r3,r1,r0
B PART_2 
sub r3,#0x10
mov r2,#3

.org 0x40
PART_2:
add r4,r2,r3
BL PART_3
mov r0,#0x44

.org 0x60
PART_3:
add r4,r4,r2
nop
nop
nop
nop
nop
