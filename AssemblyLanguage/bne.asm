.text
.globl main
main:
li $t0,5
li $t1,5
bne $t1,$t0,end
j inst

inst:
li $t2,2
mul $t3,$t1,1
li $v0,10
syscall

end:
li $v0,10
syscall