.data
arr: .word 1 2 3 4 5 
input: .asciiz "Sum is: "

.text
.globl main

main:

la $t1,arr
add $t2,$t1,0
li $t3,0
li $t4,5
addi $t0,$t0,0

while:
beq $t3,$t4,exit
lw $t5,0($t2)
add $t0,$t0,$t5
addi $t3,$t3,1
addi $t2,$t2,4
j while

exit:
li $v0,1
move $a0,$t0
syscall
li $v0,10
syscall

.end main