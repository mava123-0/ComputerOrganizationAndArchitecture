.text
.globl main

main:
while:
	beq $t2,1,exit
	
	li $v0,4
	la $a0,input1
	syscall

	li $v0,5
	syscall
	move $t1,$v0

	mult $t1,$t1
	mflo $t0 

	li $v0,4
	la $a0,output1
	syscall

	li $v0,1
	move $a0,$t0
	syscall
	
	li $v0,4
	la $a0,menu
	syscall
	
	li $v0,5
	syscall
	move $t2,$v0
	
	j while

exit:
	li $v0,10
	syscall


.data
input1: .asciiz "Enter the Number: "
menu: .asciiz "\n Exit? (0/1) "
output1: .asciiz "The Square is: "
