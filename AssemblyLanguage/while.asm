.data
.text
.globl main

main:
li $t0,0
while:
beq $t0,11,end
add $t0,$t0,1
j while

end:
li $v0,10
syscall	
.end main