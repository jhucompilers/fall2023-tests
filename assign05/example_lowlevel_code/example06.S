/* variable 'a' allocated vreg 10 */
/* variable 'b' allocated vreg 11 */
/* variable 'c' allocated vreg 12 */
/* Function 'main' uses 0 bytes of memory and 13 virtual registers */
/* Function 'main' uses 72 total bytes of memory storage for vregs */
/* Function 'main': placing vreg storage at offset -72 from %rbp */
/* Function 'main': 80 bytes of local storage allocated in stack frame */
	.section .text

	.globl main
main:
	pushq    %rbp                /* enter    $0 */
	movq     %rsp, %rbp
	subq     $80, %rsp
	movl     $2, -48(%rbp)       /* mov_l    vr13, $2 */
	movl     -48(%rbp), %r10d    /* mov_l    vr10, vr13 */
	movl     %r10d, -72(%rbp)
	movl     $3, -40(%rbp)       /* mov_l    vr14, $3 */
	movl     -40(%rbp), %r10d    /* mov_l    vr11, vr14 */
	movl     %r10d, -64(%rbp)
	movl     $1, -32(%rbp)       /* mov_l    vr15, $1 */
	movl     -32(%rbp), %r10d    /* mov_l    vr12, vr15 */
	movl     %r10d, -56(%rbp)
	movl     $1, -24(%rbp)       /* mov_l    vr16, $1 */
	movl     -72(%rbp), %r10d    /* add_l    vr17, vr10, vr16 */
	addl     -24(%rbp), %r10d
	movl     %r10d, -16(%rbp)
	movl     -16(%rbp), %r10d    /* cmpeq_l  vr18, vr17, vr11 */
	cmpl     -64(%rbp), %r10d
	sete     %r10b
	movzbl   %r10b, %r11d
	movl     %r11d, -8(%rbp)
	cmpl     $0, -8(%rbp)        /* cjmp_f   vr18, .L0 */
	je       .L0
	movl     $0, -48(%rbp)       /* mov_l    vr13, $0 */
	movl     -48(%rbp), %r10d    /* mov_l    vr12, vr13 */
	movl     %r10d, -56(%rbp)
.L0:
	movl     -56(%rbp), %eax     /* mov_l    vr0, vr12 */
	jmp      .Lmain_return       /* jmp      .Lmain_return */
	jmp      .Lmain_return       /* jmp      .Lmain_return */
.Lmain_return:
	addq     $80, %rsp           /* leave    $0 */
	popq     %rbp
	ret                          /* ret       */
