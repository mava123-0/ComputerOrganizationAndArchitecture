.text
.globl main
main:

while: 
	li $v0,4
	la $a0,enterr
	syscall
	
	li $v0,5
	syscall
	move $t5,$v0 #getting the menu option
	
	li $t0,0
	li $t2,2
	li $t3,0 #sum
	li $t4,1 #for subtraction
	
	beq $t5,1,sum_1
	beq $t5,3,exit
	j while
	
	sum_1:
		li $v0,4
		la $a0,enterr1
		syscall
		li $v0,5
		syscall
		move $t1,$v0 #t1 stores the value of n
		
		addition:
			beq $t1,0,printt
			add $t3,$t3,$t2 #adding the sum
			addi $t2,$t2,2 #adding 2 to the even number (2,4,6,8,...)
			sub $t1,$t1,$t4  #after every iteration 1 subtracted from n
			j addition
	
	printt:
		li $v0,1
		move $a0,$t3
		syscall
		li $v0,4
		la $a0,newline #just new line for nice presentation
		syscall
		j while
		
	exit:
		li $v0,10
		syscall
		
.data
enterr: .asciiz "Enter  Menu: " 
enterr1: .asciiz "Enter  Number N: " 
newline: .asciiz "\n"