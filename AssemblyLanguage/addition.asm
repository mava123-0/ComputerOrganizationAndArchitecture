.data
.text
.globl main
main:
ori $t0,$0,0x0e
ori $t1,$0,0x0f
add $t2,$t0,$t1
syscall
.end main