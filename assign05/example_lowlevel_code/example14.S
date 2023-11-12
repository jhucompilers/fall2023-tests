/* variable 'arr' allocated 4 bytes of storage at offset 0 */
/* variable 'sum' allocated vreg 10 */
/* Function 'main' uses 4 bytes of memory and 11 virtual registers */
/* Function 'main': placing memory variables at offset -8 from %rbp */
/* Function 'main' uses 120 total bytes of memory storage for vregs */
/* Function 'main': placing vreg storage at offset -128 from %rbp */
/* Function 'main': 128 bytes of local storage allocated in stack frame */
	.section .text

	.globl main
main:
	pushq    %rbp                /* enter    $4 */
	movq     %rsp, %rbp
	subq     $128, %rsp
	movl     $2, -120(%rbp)      /* mov_l    vr11, $2 */
	leaq     -8(%rbp), %r10      /* localaddr vr12, $0 */
	movq     %r10, -112(%rbp)
	movl     $0, -104(%rbp)      /* mov_l    vr13, $0 */
	movl     -104(%rbp), %r10d   /* sconv_lq vr14, vr13 */
	movslq   %r10d, %r10
	movq     %r10, -96(%rbp)
	movq     -96(%rbp), %r10     /* mul_q    vr15, vr14, $4 */
	imulq    $4, %r10
	movq     %r10, -88(%rbp)
	movq     -112(%rbp), %r10    /* add_q    vr16, vr12, vr15 */
	addq     -88(%rbp), %r10
	movq     %r10, -80(%rbp)
	movq     -80(%rbp), %r11     /* mov_l    (vr16), vr11 */
	movl     -120(%rbp), %r10d
	movl     %r10d, (%r11)
	leaq     -8(%rbp), %r10      /* localaddr vr17, $0 */
	movq     %r10, -72(%rbp)
	movl     $0, -64(%rbp)       /* mov_l    vr18, $0 */
	movl     -64(%rbp), %r10d    /* sconv_lq vr19, vr18 */
	movslq   %r10d, %r10
	movq     %r10, -56(%rbp)
	movq     -56(%rbp), %r10     /* mul_q    vr20, vr19, $4 */
	imulq    $4, %r10
	movq     %r10, -48(%rbp)
	movq     -72(%rbp), %r10     /* add_q    vr21, vr17, vr20 */
	addq     -48(%rbp), %r10
	movq     %r10, -40(%rbp)
	movl     $1, -32(%rbp)       /* mov_l    vr22, $1 */
	movq     -40(%rbp), %r11     /* mov_l    vr24, (vr21) */
	movl     (%r11), %r10d
	movl     %r10d, -16(%rbp)
	movl     -16(%rbp), %r10d    /* add_l    vr23, vr24, vr22 */
	addl     -32(%rbp), %r10d
	movl     %r10d, -24(%rbp)
	movl     -24(%rbp), %r10d    /* mov_l    vr10, vr23 */
	movl     %r10d, -128(%rbp)
	movl     -128(%rbp), %eax    /* mov_l    vr0, vr10 */
	jmp      .Lmain_return       /* jmp      .Lmain_return */
	jmp      .Lmain_return       /* jmp      .Lmain_return */
.Lmain_return:
	addq     $128, %rsp          /* leave    $4 */
	popq     %rbp
	ret                          /* ret       */
