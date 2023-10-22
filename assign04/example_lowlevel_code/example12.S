/* variable 'p' allocated 8 bytes of storage at offset 0 */
/* Function 'main' uses 8 bytes of memory and 10 virtual registers */
/* Function 'main': placing memory variables at offset -8 from %rbp */
/* Function 'main' uses 72 total bytes of memory storage for vregs */
/* Function 'main': placing vreg storage at offset -80 from %rbp */
/* Function 'main': 80 bytes of local storage allocated in stack frame */
	.section .text

	.globl main
main:
	pushq    %rbp                /* enter    $8 */
	movq     %rsp, %rbp
	subq     $80, %rsp
	leaq     -8(%rbp), %r10      /* localaddr vr10, $0 */
	movq     %r10, -80(%rbp)
	movq     $0, -72(%rbp)       /* mov_q    vr11, $0 */
	movq     -80(%rbp), %r10     /* add_q    vr12, vr10, vr11 */
	addq     -72(%rbp), %r10
	movq     %r10, -64(%rbp)
	movl     $2, -56(%rbp)       /* mov_l    vr13, $2 */
	movq     -64(%rbp), %r11     /* mov_l    (vr12), vr13 */
	movl     -56(%rbp), %r10d
	movl     %r10d, (%r11)
	leaq     -8(%rbp), %r10      /* localaddr vr10, $0 */
	movq     %r10, -80(%rbp)
	movq     $4, -72(%rbp)       /* mov_q    vr11, $4 */
	movq     -80(%rbp), %r10     /* add_q    vr12, vr10, vr11 */
	addq     -72(%rbp), %r10
	movq     %r10, -64(%rbp)
	movl     $3, -56(%rbp)       /* mov_l    vr13, $3 */
	movq     -64(%rbp), %r11     /* mov_l    (vr12), vr13 */
	movl     -56(%rbp), %r10d
	movl     %r10d, (%r11)
	leaq     -8(%rbp), %r10      /* localaddr vr10, $0 */
	movq     %r10, -80(%rbp)
	movq     $0, -72(%rbp)       /* mov_q    vr11, $0 */
	movq     -80(%rbp), %r10     /* add_q    vr12, vr10, vr11 */
	addq     -72(%rbp), %r10
	movq     %r10, -64(%rbp)
	leaq     -8(%rbp), %r10      /* localaddr vr13, $0 */
	movq     %r10, -56(%rbp)
	movq     $4, -48(%rbp)       /* mov_q    vr14, $4 */
	movq     -56(%rbp), %r10     /* add_q    vr15, vr13, vr14 */
	addq     -48(%rbp), %r10
	movq     %r10, -40(%rbp)
	movq     -64(%rbp), %r11     /* mov_l    vr17, (vr12) */
	movl     (%r11), %r10d
	movl     %r10d, -24(%rbp)
	movq     -40(%rbp), %r11     /* mov_l    vr18, (vr15) */
	movl     (%r11), %r10d
	movl     %r10d, -16(%rbp)
	movl     -24(%rbp), %r10d    /* add_l    vr16, vr17, vr18 */
	addl     -16(%rbp), %r10d
	movl     %r10d, -32(%rbp)
	movl     -32(%rbp), %eax     /* mov_l    vr0, vr16 */
	jmp      .Lmain_return       /* jmp      .Lmain_return */
.Lmain_return:
	addq     $80, %rsp           /* leave    $8 */
	popq     %rbp
	ret                          /* ret       */
