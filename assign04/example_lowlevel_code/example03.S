/* variable 'i' allocated vreg 10 */
/* variable 'n' allocated vreg 11 */
/* variable 'sum' allocated vreg 12 */
/* Function 'main' uses 0 bytes of memory and 13 virtual registers */
/* Function 'main' uses 48 total bytes of memory storage for vregs */
/* Function 'main': placing vreg storage at offset -48 from %rbp */
/* Function 'main': 48 bytes of local storage allocated in stack frame */
	.section .text

	.globl main
main:
	pushq    %rbp                /* enter    $0 */
	movq     %rsp, %rbp
	subq     $48, %rsp
	movl     $1, -24(%rbp)       /* mov_l    vr13, $1 */
	movl     -24(%rbp), %r10d    /* mov_l    vr10, vr13 */
	movl     %r10d, -48(%rbp)
	movl     $11, -24(%rbp)      /* mov_l    vr13, $11 */
	movl     -24(%rbp), %r10d    /* mov_l    vr11, vr13 */
	movl     %r10d, -40(%rbp)
	movl     $0, -24(%rbp)       /* mov_l    vr13, $0 */
	movl     -24(%rbp), %r10d    /* mov_l    vr12, vr13 */
	movl     %r10d, -32(%rbp)
.L0:
	movl     -32(%rbp), %r10d    /* add_l    vr13, vr12, vr10 */
	addl     -48(%rbp), %r10d
	movl     %r10d, -24(%rbp)
	movl     -24(%rbp), %r10d    /* mov_l    vr12, vr13 */
	movl     %r10d, -32(%rbp)
	movl     $1, -24(%rbp)       /* mov_l    vr13, $1 */
	movl     -48(%rbp), %r10d    /* add_l    vr14, vr10, vr13 */
	addl     -24(%rbp), %r10d
	movl     %r10d, -16(%rbp)
	movl     -16(%rbp), %r10d    /* mov_l    vr10, vr14 */
	movl     %r10d, -48(%rbp)
	movl     -48(%rbp), %r10d    /* cmplt_l  vr15, vr10, vr11 */
	cmpl     -40(%rbp), %r10d
	setl     %r10b
	movzbl   %r10b, %r11d
	movl     %r11d, -8(%rbp)
	cmpl     $0, -8(%rbp)        /* cjmp_t   vr15, .L0 */
	jne      .L0
	movl     -32(%rbp), %eax     /* mov_l    vr0, vr12 */
	jmp      .Lmain_return       /* jmp      .Lmain_return */
.Lmain_return:
	addq     $48, %rsp           /* leave    $0 */
	popq     %rbp
	ret                          /* ret       */
