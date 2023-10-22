/* variable 'a' allocated vreg 10 */
/* variable 'n' allocated vreg 11 */
/* variable 'i' allocated vreg 12 */
/* variable 'sum' allocated vreg 13 */
/* Function 'sum' uses 0 bytes of memory and 14 virtual registers */
/* variable 'arr' allocated 12 bytes of storage at offset 0 */
/* variable 'result' allocated vreg 10 */
/* Function 'main' uses 12 bytes of memory and 11 virtual registers */
/* Function 'sum' uses 96 total bytes of memory storage for vregs */
/* Function 'sum': placing vreg storage at offset -96 from %rbp */
/* Function 'sum': 96 bytes of local storage allocated in stack frame */
	.section .text

	.globl sum
sum:
	pushq    %rbp                /* enter    $0 */
	movq     %rsp, %rbp
	subq     $96, %rsp
	movq     %rdi, -96(%rbp)     /* mov_q    vr10, vr1 */
	movl     %esi, -88(%rbp)     /* mov_l    vr11, vr2 */
	movl     $0, -64(%rbp)       /* mov_l    vr14, $0 */
	movl     -64(%rbp), %r10d    /* mov_l    vr13, vr14 */
	movl     %r10d, -72(%rbp)
	movl     $0, -56(%rbp)       /* mov_l    vr15, $0 */
	movl     -56(%rbp), %r10d    /* mov_l    vr12, vr15 */
	movl     %r10d, -80(%rbp)
	jmp      .L1                 /* jmp      .L1 */
.L0:
	movl     -80(%rbp), %r10d    /* sconv_lq vr14, vr12 */
	movslq   %r10d, %r10
	movq     %r10, -64(%rbp)
	movq     -64(%rbp), %r10     /* mul_q    vr15, vr14, $4 */
	imulq    $4, %r10
	movq     %r10, -56(%rbp)
	movq     -96(%rbp), %r10     /* add_q    vr16, vr10, vr15 */
	addq     -56(%rbp), %r10
	movq     %r10, -48(%rbp)
	movq     -48(%rbp), %r11     /* mov_l    vr18, (vr16) */
	movl     (%r11), %r10d
	movl     %r10d, -32(%rbp)
	movl     -72(%rbp), %r10d    /* add_l    vr17, vr13, vr18 */
	addl     -32(%rbp), %r10d
	movl     %r10d, -40(%rbp)
	movl     -40(%rbp), %r10d    /* mov_l    vr13, vr17 */
	movl     %r10d, -72(%rbp)
	movl     $1, -24(%rbp)       /* mov_l    vr19, $1 */
	movl     -80(%rbp), %r10d    /* add_l    vr20, vr12, vr19 */
	addl     -24(%rbp), %r10d
	movl     %r10d, -16(%rbp)
	movl     -16(%rbp), %r10d    /* mov_l    vr12, vr20 */
	movl     %r10d, -80(%rbp)
.L1:
	movl     -80(%rbp), %r10d    /* cmplt_l  vr21, vr12, vr11 */
	cmpl     -88(%rbp), %r10d
	setl     %r10b
	movzbl   %r10b, %r11d
	movl     %r11d, -8(%rbp)
	cmpl     $0, -8(%rbp)        /* cjmp_t   vr21, .L0 */
	jne      .L0
	movl     -72(%rbp), %eax     /* mov_l    vr0, vr13 */
	jmp      .Lsum_return        /* jmp      .Lsum_return */
.Lsum_return:
	addq     $96, %rsp           /* leave    $0 */
	popq     %rbp
	ret                          /* ret       */
/* Function 'main': placing memory variables at offset -16 from %rbp */
/* Function 'main' uses 56 total bytes of memory storage for vregs */
/* Function 'main': placing vreg storage at offset -72 from %rbp */
/* Function 'main': 80 bytes of local storage allocated in stack frame */

	.globl main
main:
	pushq    %rbp                /* enter    $12 */
	movq     %rsp, %rbp
	subq     $80, %rsp
	leaq     -16(%rbp), %r10     /* localaddr vr11, $0 */
	movq     %r10, -64(%rbp)
	movl     $0, -56(%rbp)       /* mov_l    vr12, $0 */
	movl     -56(%rbp), %r10d    /* sconv_lq vr13, vr12 */
	movslq   %r10d, %r10
	movq     %r10, -48(%rbp)
	movq     -48(%rbp), %r10     /* mul_q    vr14, vr13, $4 */
	imulq    $4, %r10
	movq     %r10, -40(%rbp)
	movq     -64(%rbp), %r10     /* add_q    vr15, vr11, vr14 */
	addq     -40(%rbp), %r10
	movq     %r10, -32(%rbp)
	movl     $1, -24(%rbp)       /* mov_l    vr16, $1 */
	movq     -32(%rbp), %r11     /* mov_l    (vr15), vr16 */
	movl     -24(%rbp), %r10d
	movl     %r10d, (%r11)
	leaq     -16(%rbp), %r10     /* localaddr vr11, $0 */
	movq     %r10, -64(%rbp)
	movl     $1, -56(%rbp)       /* mov_l    vr12, $1 */
	movl     -56(%rbp), %r10d    /* sconv_lq vr13, vr12 */
	movslq   %r10d, %r10
	movq     %r10, -48(%rbp)
	movq     -48(%rbp), %r10     /* mul_q    vr14, vr13, $4 */
	imulq    $4, %r10
	movq     %r10, -40(%rbp)
	movq     -64(%rbp), %r10     /* add_q    vr15, vr11, vr14 */
	addq     -40(%rbp), %r10
	movq     %r10, -32(%rbp)
	movl     $2, -24(%rbp)       /* mov_l    vr16, $2 */
	movq     -32(%rbp), %r11     /* mov_l    (vr15), vr16 */
	movl     -24(%rbp), %r10d
	movl     %r10d, (%r11)
	leaq     -16(%rbp), %r10     /* localaddr vr11, $0 */
	movq     %r10, -64(%rbp)
	movl     $2, -56(%rbp)       /* mov_l    vr12, $2 */
	movl     -56(%rbp), %r10d    /* sconv_lq vr13, vr12 */
	movslq   %r10d, %r10
	movq     %r10, -48(%rbp)
	movq     -48(%rbp), %r10     /* mul_q    vr14, vr13, $4 */
	imulq    $4, %r10
	movq     %r10, -40(%rbp)
	movq     -64(%rbp), %r10     /* add_q    vr15, vr11, vr14 */
	addq     -40(%rbp), %r10
	movq     %r10, -32(%rbp)
	movl     $3, -24(%rbp)       /* mov_l    vr16, $3 */
	movq     -32(%rbp), %r11     /* mov_l    (vr15), vr16 */
	movl     -24(%rbp), %r10d
	movl     %r10d, (%r11)
	leaq     -16(%rbp), %r10     /* localaddr vr11, $0 */
	movq     %r10, -64(%rbp)
	movq     -64(%rbp), %rdi     /* mov_q    vr1, vr11 */
	movl     $3, -56(%rbp)       /* mov_l    vr12, $3 */
	movl     -56(%rbp), %esi     /* mov_l    vr2, vr12 */
	call     sum                 /* call     sum */
	movl     %eax, -48(%rbp)     /* mov_l    vr13, vr0 */
	movl     -48(%rbp), %r10d    /* mov_l    vr10, vr13 */
	movl     %r10d, -72(%rbp)
	movl     -72(%rbp), %eax     /* mov_l    vr0, vr10 */
	jmp      .Lmain_return       /* jmp      .Lmain_return */
.Lmain_return:
	addq     $80, %rsp           /* leave    $12 */
	popq     %rbp
	ret                          /* ret       */
