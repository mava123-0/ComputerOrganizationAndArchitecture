.text
.globl main
main:
li $v0,4
la $a0,print
syscall
li $v0,10
syscall

.data
print:
.asciiz "yo the DELOP"