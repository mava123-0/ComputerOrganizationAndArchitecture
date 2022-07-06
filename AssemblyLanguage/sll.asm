.data
.text
.globl main
main:
li $t0,4
li $t1,16
sll $t2,$t0,1
srl $t3,$t1,1
li $v0,10
syscall
.end main