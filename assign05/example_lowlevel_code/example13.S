/* variable 'p' allocated 8 bytes of storage at offset 0 */
/* variable 'q' allocated vreg 10 */
/* Function 'main' uses 8 bytes of memory and 11 virtual registers */
/* Function 'main': placing memory variables at offset -8 from %rbp */
/* Function 'main' uses 120 total bytes of memory storage for vregs */
/* Function 'main': placing vreg storage at offset -128 from %rbp */
/* Function 'main': 128 bytes of local storage allocated in stack frame */
	.section .text

	.globl main
main:
	pushq    %rbp                /* enter    $8 */
	movq     %rsp, %rbp
	subq     $128, %rsp
	leaq     -8(%rbp), %r10      /* localaddr vr11, $0 */
	movq     %r10, -120(%rbp)
	movq     -120(%rbp), %r10    /* mov_q    vr10, vr11 */
	movq     %r10, -128(%rbp)
	movl     $2, -112(%rbp)      /* mov_l    vr12, $2 */
	movq     $0, -104(%rbp)      /* mov_q    vr13, $0 */
	movq     -128(%rbp), %r10    /* add_q    vr14, vr10, vr13 */
	addq     -104(%rbp), %r10
	movq     %r10, -96(%rbp)
	movq     -96(%rbp), %r11     /* mov_l    (vr14), vr12 */
	movl     -112(%rbp), %r10d
	movl     %r10d, (%r11)
	movl     $3, -88(%rbp)       /* mov_l    vr15, $3 */
	movq     $4, -80(%rbp)       /* mov_q    vr16, $4 */
	movq     -128(%rbp), %r10    /* add_q    vr17, vr10, vr16 */
	addq     -80(%rbp), %r10
	movq     %r10, -72(%rbp)
	movq     -72(%rbp), %r11     /* mov_l    (vr17), vr15 */
	movl     -88(%rbp), %r10d
	movl     %r10d, (%r11)
	movq     $0, -64(%rbp)       /* mov_q    vr18, $0 */
	movq     -128(%rbp), %r10    /* add_q    vr19, vr10, vr18 */
	addq     -64(%rbp), %r10
	movq     %r10, -56(%rbp)
	movq     $4, -48(%rbp)       /* mov_q    vr20, $4 */
	movq     -128(%rbp), %r10    /* add_q    vr21, vr10, vr20 */
	addq     -48(%rbp), %r10
	movq     %r10, -40(%rbp)
	movq     -56(%rbp), %r11     /* mov_l    vr23, (vr19) */
	movl     (%r11), %r10d
	movl     %r10d, -24(%rbp)
	movq     -40(%rbp), %r11     /* mov_l    vr24, (vr21) */
	movl     (%r11), %r10d
	movl     %r10d, -16(%rbp)
	movl     -24(%rbp), %r10d    /* add_l    vr22, vr23, vr24 */
	addl     -16(%rbp), %r10d
	movl     %r10d, -32(%rbp)
	movl     -32(%rbp), %eax     /* mov_l    vr0, vr22 */
	jmp      .Lmain_return       /* jmp      .Lmain_return */
	jmp      .Lmain_return       /* jmp      .Lmain_return */
.Lmain_return:
	addq     $128, %rsp          /* leave    $8 */
	popq     %rbp
	ret                          /* ret       */
