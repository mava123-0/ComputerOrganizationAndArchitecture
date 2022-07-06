.text
.globl main
main:
li $t0,5
li $t1,5
beq $t1,$t0,inst
li $v0,10
syscall

inst:
li $t2,2
mul $t3,$t1,$t2
li $v0,10
syscall