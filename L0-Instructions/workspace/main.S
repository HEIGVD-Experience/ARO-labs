mov r0, #1
mov r1, #2	
mov r2, #3
mov r3, #4

add r0, r1, r0
add r2, r2, r3
add r0, r2, r0

lsr r0, r0, #2
