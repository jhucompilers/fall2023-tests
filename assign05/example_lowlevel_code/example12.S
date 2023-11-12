/* variable 'p' allocated 8 bytes of storage at offset 0 */
/* Function 'main' uses 8 bytes of memory and 10 virtual registers */
/* Function 'main': placing memory variables at offset -8 from %rbp */
/* Function 'main' uses 136 total bytes of memory storage for vregs */
/* Function 'main': placing vreg storage at offset -144 from %rbp */
/* Function 'main': 144 bytes of local storage allocated in stack frame */
	.section .text

	.globl main
main:
	pushq    %rbp                /* enter    $8 */
	movq     %rsp, %rbp
	subq     $144, %rsp
	movl     $2, -144(%rbp)      /* mov_l    vr10, $2 */
	leaq     -8(%rbp), %r10      /* localaddr vr11, $0 */
	movq     %r10, -136(%rbp)
	movq     $0, -128(%rbp)      /* mov_q    vr12, $0 */
	movq     -136(%rbp), %r10    /* add_q    vr13, vr11, vr12 */
	addq     -128(%rbp), %r10
	movq     %r10, -120(%rbp)
	movq     -120(%rbp), %r11    /* mov_l    (vr13), vr10 */
	movl     -144(%rbp), %r10d
	movl     %r10d, (%r11)
	movl     $3, -112(%rbp)      /* mov_l    vr14, $3 */
	leaq     -8(%rbp), %r10      /* localaddr vr15, $0 */
	movq     %r10, -104(%rbp)
	movq     $4, -96(%rbp)       /* mov_q    vr16, $4 */
	movq     -104(%rbp), %r10    /* add_q    vr17, vr15, vr16 */
	addq     -96(%rbp), %r10
	movq     %r10, -88(%rbp)
	movq     -88(%rbp), %r11     /* mov_l    (vr17), vr14 */
	movl     -112(%rbp), %r10d
	movl     %r10d, (%r11)
	leaq     -8(%rbp), %r10      /* localaddr vr18, $0 */
	movq     %r10, -80(%rbp)
	movq     $0, -72(%rbp)       /* mov_q    vr19, $0 */
	movq     -80(%rbp), %r10     /* add_q    vr20, vr18, vr19 */
	addq     -72(%rbp), %r10
	movq     %r10, -64(%rbp)
	leaq     -8(%rbp), %r10      /* localaddr vr21, $0 */
	movq     %r10, -56(%rbp)
	movq     $4, -48(%rbp)       /* mov_q    vr22, $4 */
	movq     -56(%rbp), %r10     /* add_q    vr23, vr21, vr22 */
	addq     -48(%rbp), %r10
	movq     %r10, -40(%rbp)
	movq     -64(%rbp), %r11     /* mov_l    vr25, (vr20) */
	movl     (%r11), %r10d
	movl     %r10d, -24(%rbp)
	movq     -40(%rbp), %r11     /* mov_l    vr26, (vr23) */
	movl     (%r11), %r10d
	movl     %r10d, -16(%rbp)
	movl     -24(%rbp), %r10d    /* add_l    vr24, vr25, vr26 */
	addl     -16(%rbp), %r10d
	movl     %r10d, -32(%rbp)
	movl     -32(%rbp), %eax     /* mov_l    vr0, vr24 */
	jmp      .Lmain_return       /* jmp      .Lmain_return */
	jmp      .Lmain_return       /* jmp      .Lmain_return */
.Lmain_return:
	addq     $144, %rsp          /* leave    $8 */
	popq     %rbp
	ret                          /* ret       */
