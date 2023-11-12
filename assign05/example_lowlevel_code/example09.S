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
	jmp      .Lsum_return        /* jmp      .Lsum_return */
.Lsum_return:
	addq     $96, %rsp           /* leave    $0 */
	popq     %rbp
	ret                          /* ret       */
/* Function 'main': placing memory variables at offset -16 from %rbp */
/* Function 'main' uses 176 total bytes of memory storage for vregs */
/* Function 'main': placing vreg storage at offset -192 from %rbp */
/* Function 'main': 192 bytes of local storage allocated in stack frame */

	.globl main
main:
	pushq    %rbp                /* enter    $12 */
	movq     %rsp, %rbp
	subq     $192, %rsp
	movl     $1, -184(%rbp)      /* mov_l    vr11, $1 */
	leaq     -16(%rbp), %r10     /* localaddr vr12, $0 */
	movq     %r10, -176(%rbp)
	movl     $0, -168(%rbp)      /* mov_l    vr13, $0 */
	movl     -168(%rbp), %r10d   /* sconv_lq vr14, vr13 */
	movslq   %r10d, %r10
	movq     %r10, -160(%rbp)
	movq     -160(%rbp), %r10    /* mul_q    vr15, vr14, $4 */
	imulq    $4, %r10
	movq     %r10, -152(%rbp)
	movq     -176(%rbp), %r10    /* add_q    vr16, vr12, vr15 */
	addq     -152(%rbp), %r10
	movq     %r10, -144(%rbp)
	movq     -144(%rbp), %r11    /* mov_l    (vr16), vr11 */
	movl     -184(%rbp), %r10d
	movl     %r10d, (%r11)
	movl     $2, -136(%rbp)      /* mov_l    vr17, $2 */
	leaq     -16(%rbp), %r10     /* localaddr vr18, $0 */
	movq     %r10, -128(%rbp)
	movl     $1, -120(%rbp)      /* mov_l    vr19, $1 */
	movl     -120(%rbp), %r10d   /* sconv_lq vr20, vr19 */
	movslq   %r10d, %r10
	movq     %r10, -112(%rbp)
	movq     -112(%rbp), %r10    /* mul_q    vr21, vr20, $4 */
	imulq    $4, %r10
	movq     %r10, -104(%rbp)
	movq     -128(%rbp), %r10    /* add_q    vr22, vr18, vr21 */
	addq     -104(%rbp), %r10
	movq     %r10, -96(%rbp)
	movq     -96(%rbp), %r11     /* mov_l    (vr22), vr17 */
	movl     -136(%rbp), %r10d
	movl     %r10d, (%r11)
	movl     $3, -88(%rbp)       /* mov_l    vr23, $3 */
	leaq     -16(%rbp), %r10     /* localaddr vr24, $0 */
	movq     %r10, -80(%rbp)
	movl     $2, -72(%rbp)       /* mov_l    vr25, $2 */
	movl     -72(%rbp), %r10d    /* sconv_lq vr26, vr25 */
	movslq   %r10d, %r10
	movq     %r10, -64(%rbp)
	movq     -64(%rbp), %r10     /* mul_q    vr27, vr26, $4 */
	imulq    $4, %r10
	movq     %r10, -56(%rbp)
	movq     -80(%rbp), %r10     /* add_q    vr28, vr24, vr27 */
	addq     -56(%rbp), %r10
	movq     %r10, -48(%rbp)
	movq     -48(%rbp), %r11     /* mov_l    (vr28), vr23 */
	movl     -88(%rbp), %r10d
	movl     %r10d, (%r11)
	leaq     -16(%rbp), %r10     /* localaddr vr29, $0 */
	movq     %r10, -40(%rbp)
	movq     -40(%rbp), %rdi     /* mov_q    vr1, vr29 */
	movl     $3, -32(%rbp)       /* mov_l    vr30, $3 */
	movl     -32(%rbp), %esi     /* mov_l    vr2, vr30 */
	call     sum                 /* call     sum */
	movl     %eax, -24(%rbp)     /* mov_l    vr31, vr0 */
	movl     -24(%rbp), %r10d    /* mov_l    vr10, vr31 */
	movl     %r10d, -192(%rbp)
	movl     -192(%rbp), %eax    /* mov_l    vr0, vr10 */
	jmp      .Lmain_return       /* jmp      .Lmain_return */
	jmp      .Lmain_return       /* jmp      .Lmain_return */
.Lmain_return:
	addq     $192, %rsp          /* leave    $12 */
	popq     %rbp
	ret                          /* ret       */
