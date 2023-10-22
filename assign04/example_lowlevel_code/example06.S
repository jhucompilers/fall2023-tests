/* variable 'a' allocated vreg 10 */
/* variable 'b' allocated vreg 11 */
/* variable 'c' allocated vreg 12 */
/* Function 'main' uses 0 bytes of memory and 13 virtual registers */
/* Function 'main' uses 56 total bytes of memory storage for vregs */
/* Function 'main': placing vreg storage at offset -56 from %rbp */
/* Function 'main': 64 bytes of local storage allocated in stack frame */
	.section .text

	.globl main
main:
	pushq    %rbp                /* enter    $0 */
	movq     %rsp, %rbp
	subq     $64, %rsp
	movl     $2, -32(%rbp)       /* mov_l    vr13, $2 */
	movl     -32(%rbp), %r10d    /* mov_l    vr10, vr13 */
	movl     %r10d, -56(%rbp)
	movl     $3, -32(%rbp)       /* mov_l    vr13, $3 */
	movl     -32(%rbp), %r10d    /* mov_l    vr11, vr13 */
	movl     %r10d, -48(%rbp)
	movl     $1, -32(%rbp)       /* mov_l    vr13, $1 */
	movl     -32(%rbp), %r10d    /* mov_l    vr12, vr13 */
	movl     %r10d, -40(%rbp)
	movl     $1, -24(%rbp)       /* mov_l    vr14, $1 */
	movl     -56(%rbp), %r10d    /* add_l    vr15, vr10, vr14 */
	addl     -24(%rbp), %r10d
	movl     %r10d, -16(%rbp)
	movl     -16(%rbp), %r10d    /* cmpeq_l  vr16, vr15, vr11 */
	cmpl     -48(%rbp), %r10d
	sete     %r10b
	movzbl   %r10b, %r11d
	movl     %r11d, -8(%rbp)
	cmpl     $0, -8(%rbp)        /* cjmp_f   vr16, .L0 */
	je       .L0
	movl     $0, -32(%rbp)       /* mov_l    vr13, $0 */
	movl     -32(%rbp), %r10d    /* mov_l    vr12, vr13 */
	movl     %r10d, -40(%rbp)
.L0:
	movl     -40(%rbp), %eax     /* mov_l    vr0, vr12 */
	jmp      .Lmain_return       /* jmp      .Lmain_return */
.Lmain_return:
	addq     $64, %rsp           /* leave    $0 */
	popq     %rbp
	ret                          /* ret       */
