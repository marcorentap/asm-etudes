	.file	"toupper.c"
	.option nopic
	.attribute arch, "rv32i2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	2
	.globl	func2
	.type	func2, @function
func2:
	addi	sp,sp,-32
	sw	s0,28(sp)
	addi	s0,sp,32
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	lbu	a4,0(a5)
	li	a5,96
	bleu	a4,a5,.L3
	lw	a5,-20(s0)
	lbu	a4,0(a5)
	li	a5,122
	bgtu	a4,a5,.L3
	lw	a5,-20(s0)
	lbu	a5,0(a5)
	addi	a5,a5,-32
	andi	a4,a5,0xff
	lw	a5,-20(s0)
	sb	a4,0(a5)
.L3:
	nop
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
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	j	.L5
.L6:
	lw	a5,-20(s0)
	addi	a4,a5,1
	sw	a4,-20(s0)
	mv	a0,a5
	call	func2
.L5:
	lw	a5,-20(s0)
	lbu	a5,0(a5)
	bne	a5,zero,.L6
	nop
	nop
	lw	ra,44(sp)
	lw	s0,40(sp)
	addi	sp,sp,48
	jr	ra
	.size	func1, .-func1
	.section	.rodata
	.align	2
.LC1:
	.string	"%s"
	.align	2
.LC0:
	.string	"Harry Potter"
	.text
	.align	2
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	addi	s0,sp,32
	lui	a5,%hi(.LC0)
	addi	a5,a5,%lo(.LC0)
	lw	a2,0(a5)
	lw	a3,4(a5)
	lw	a4,8(a5)
	sw	a2,-32(s0)
	sw	a3,-28(s0)
	sw	a4,-24(s0)
	lbu	a5,12(a5)
	sb	a5,-20(s0)
	addi	a5,s0,-32
	mv	a0,a5
	call	func1
	addi	a5,s0,-32
	mv	a1,a5
	lui	a5,%hi(.LC1)
	addi	a0,a5,%lo(.LC1)
	call	printf
	li	a5,0
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	addi	sp,sp,32
	jr	ra
	.size	main, .-main
	.ident	"GCC: (g2ee5e430018) 12.2.0"
	.section	.note.GNU-stack,"",@progbits
