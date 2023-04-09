	.file	"swap.c"
	.option nopic
	.attribute arch, "rv32i2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	2
	.globl	func1
	.type	func1, @function
func1:
	addi	sp,sp,-48
	sw	s0,44(sp)
	addi	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	lw	a5,-40(s0)
	lw	a5,0(a5)
	sw	a5,-20(s0)
	lw	a5,-36(s0)
	lw	a4,0(a5)
	lw	a5,-40(s0)
	sw	a4,0(a5)
	lw	a5,-36(s0)
	lw	a4,-20(s0)
	sw	a4,0(a5)
	nop
	lw	s0,44(sp)
	addi	sp,sp,48
	jr	ra
	.size	func1, .-func1
	.align	2
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	addi	s0,sp,32
	li	a5,3
	sw	a5,-20(s0)
	li	a5,4
	sw	a5,-24(s0)
	addi	a4,s0,-24
	addi	a5,s0,-20
	mv	a1,a4
	mv	a0,a5
	call	func1
	li	a5,0
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	addi	sp,sp,32
	jr	ra
	.size	main, .-main
	.ident	"GCC: (g2ee5e430018) 12.2.0"
	.section	.note.GNU-stack,"",@progbits
