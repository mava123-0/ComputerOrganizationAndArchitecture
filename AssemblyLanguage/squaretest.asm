.text
.globl main
main:
li $t0,5
mult $t0,$t0
mflo $t0
li $v0,10
syscall