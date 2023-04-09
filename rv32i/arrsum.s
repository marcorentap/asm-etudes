	.file	"arrsum.c"
	.option nopic
	.attribute arch, "rv32i2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	2
	.globl	func1
	.type	func1, @function
func1:
	addi	sp,sp,-32
	sw	s0,28(sp)
	addi	s0,sp,32
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	lw	a4,0(a5)
	lw	a5,-20(s0)
	addi	a5,a5,4
	lw	a5,0(a5)
	add	a4,a4,a5
	lw	a5,-20(s0)
	addi	a5,a5,8
	lw	a5,0(a5)
	add	a5,a4,a5
	mv	a0,a5
	lw	s0,28(sp)
	addi	sp,sp,32
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
	li	a5,2
	sw	a5,-32(s0)
	li	a5,3
	sw	a5,-28(s0)
	li	a5,4
	sw	a5,-24(s0)
	addi	a5,s0,-32
	mv	a0,a5
	call	func1
	sw	a0,-20(s0)
	li	a5,0
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	addi	sp,sp,32
	jr	ra
	.size	main, .-main
	.ident	"GCC: (g2ee5e430018) 12.2.0"
	.section	.note.GNU-stack,"",@progbits
