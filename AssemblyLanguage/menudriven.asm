.text
.globl main
main:
li $t0,3
while: 
	li $v0,4
	la $a0,menu
	syscall

	li $v0,5
	syscall
	move $t0,$v0

	beq $t0,1,addition
	beq $t0,2,subtraction
	beq $t0,3,end
	li $v0,10
	syscall


	addition:

		li $v0,4
		la $a0,input1
		syscall
		li $v0,5
		syscall
		move $t1,$v0

		li $v0,4
		la $a0,input2
		syscall
		li $v0,5
		syscall
		move $t2,$v0

		add $t3,$t1,$t2
		li $v0,4
		la $a0,output1
		syscall
		li $v0,1
		move $a0,$t3
		syscall		
		
		li $v0,4
		la $a0, newline
		syscall
		li $v0,4
		la $a0, newline
		syscall

		j while
		
	subtraction:
		li $v0,4
		la $a0,input1
		syscall
		li $v0,5
		syscall
		move $t1,$v0

		li $v0,4
		la $a0,input2
		syscall
		li $v0,5
		syscall
		move $t2,$v0

		sub $t3,$t1,$t2
		li $v0,4
		la $a0,output2
		syscall
		li $v0,1
		move $a0,$t3
		syscall
		
		li $v0,4
		la $a0, newline
		syscall
		li $v0,4
		la $a0, newline
		syscall
		
		j while
		
	end:
		li $v0,10
		syscall
		
	li $v0,10
	syscall

.data
menu: .asciiz "Enter Menu: 1.Add 2.Sub 3.Exit :"
input1: .asciiz "Enter a: "
input2: .asciiz "Enter b: "
output1: .asciiz "Sum is: "
output2: .asciiz "Difference is: "
newline: .asciiz "\n"