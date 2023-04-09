	.file	"evenodd.c"
	.option nopic
	.attribute arch, "rv32i2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	2
	.globl	func3
	.type	func3, @function
func3:
	addi	sp,sp,-32
	sw	s0,28(sp)
	addi	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	or	a5,a4,a5
	mv	a0,a5
	lw	s0,28(sp)
	addi	sp,sp,32
	jr	ra
	.size	func3, .-func3
	.align	2
	.globl	func2
	.type	func2, @function
func2:
	addi	sp,sp,-32
	sw	s0,28(sp)
	addi	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	and	a5,a4,a5
	mv	a0,a5
	lw	s0,28(sp)
	addi	sp,sp,32
	jr	ra
	.size	func2, .-func2
	.align	2
	.globl	func1
	.type	func1, @function
func1:
	addi	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	addi	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	lw	a5,-36(s0)
	andi	a5,a5,1
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	beq	a5,zero,.L6
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	func2
	mv	a5,a0
	j	.L7
.L6:
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	func3
	mv	a5,a0
.L7:
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
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
	li	a5,7
	sw	a5,-20(s0)
	li	a5,4
	sw	a5,-24(s0)
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	func1
	sw	a0,-28(s0)
	li	a5,0
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	addi	sp,sp,32
	jr	ra
	.size	main, .-main
	.ident	"GCC: (g2ee5e430018) 12.2.0"
	.section	.note.GNU-stack,"",@progbits
