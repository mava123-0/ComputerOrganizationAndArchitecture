.data
array: .word 1 2 3 4 5 6 7 8 9 10
input: .asciiz "Enter number: "
output: .asciiz "Sum is: "

.text
.globl main

main:

while:
	li $v0,4
	la $a0,input
	syscall
	
	li $v0,5
	syscall
	move $t1,$v0
	
	la $t2,array
	lw $t3,($t2)
	li $t0,0
	li $t4,1
	
	sum:
		beq $t1,0,exit
		add $t0,$t0,$t3
		addi $t3,$t3,4
		sub $t1,$t1,$t4
		j sum
	
	exit: 
		li $v0,4
		la $a0,output
		syscall
		
		li $v0,1
		move $a0,$t0
		syscall
		
		li $v0,10
		syscall