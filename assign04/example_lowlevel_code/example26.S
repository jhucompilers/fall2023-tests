/* variable 'p' allocated 24 bytes of storage at offset 0 */
/* variable 's' allocated vreg 10 */
/* Function 'main' uses 24 bytes of memory and 11 virtual registers */
/* Function 'main': placing memory variables at offset -24 from %rbp */
/* Function 'main' uses 72 total bytes of memory storage for vregs */
/* Function 'main': placing vreg storage at offset -96 from %rbp */
/* Function 'main': 96 bytes of local storage allocated in stack frame */
	.section .text

	.globl main
main:
	pushq    %rbp                /* enter    $24 */
	movq     %rsp, %rbp
	subq     $96, %rsp
	leaq     -24(%rbp), %r10     /* localaddr vr11, $0 */
	movq     %r10, -88(%rbp)
	movq     $0, -80(%rbp)       /* mov_q    vr12, $0 */
	movq     -88(%rbp), %r10     /* add_q    vr13, vr11, vr12 */
	addq     -80(%rbp), %r10
	movq     %r10, -72(%rbp)
	movl     $0, -64(%rbp)       /* mov_l    vr14, $0 */
	movl     -64(%rbp), %r10d    /* sconv_lq vr15, vr14 */
	movslq   %r10d, %r10
	movq     %r10, -56(%rbp)
	movq     -56(%rbp), %r10     /* mul_q    vr16, vr15, $1 */
	imulq    $1, %r10
	movq     %r10, -48(%rbp)
	movq     -72(%rbp), %r10     /* add_q    vr17, vr13, vr16 */
	addq     -48(%rbp), %r10
	movq     %r10, -40(%rbp)
	movb     $65, -32(%rbp)      /* mov_b    vr18, $65 */
	movq     -40(%rbp), %r11     /* mov_b    (vr17), vr18 */
	movb     -32(%rbp), %r10b
	movb     %r10b, (%r11)
	leaq     -24(%rbp), %r10     /* localaddr vr11, $0 */
	movq     %r10, -88(%rbp)
	movq     $0, -80(%rbp)       /* mov_q    vr12, $0 */
	movq     -88(%rbp), %r10     /* add_q    vr13, vr11, vr12 */
	addq     -80(%rbp), %r10
	movq     %r10, -72(%rbp)
	movl     $1, -64(%rbp)       /* mov_l    vr14, $1 */
	movl     -64(%rbp), %r10d    /* sconv_lq vr15, vr14 */
	movslq   %r10d, %r10
	movq     %r10, -56(%rbp)
	movq     -56(%rbp), %r10     /* mul_q    vr16, vr15, $1 */
	imulq    $1, %r10
	movq     %r10, -48(%rbp)
	movq     -72(%rbp), %r10     /* add_q    vr17, vr13, vr16 */
	addq     -48(%rbp), %r10
	movq     %r10, -40(%rbp)
	movb     $108, -32(%rbp)     /* mov_b    vr18, $108 */
	movq     -40(%rbp), %r11     /* mov_b    (vr17), vr18 */
	movb     -32(%rbp), %r10b
	movb     %r10b, (%r11)
	leaq     -24(%rbp), %r10     /* localaddr vr11, $0 */
	movq     %r10, -88(%rbp)
	movq     $0, -80(%rbp)       /* mov_q    vr12, $0 */
	movq     -88(%rbp), %r10     /* add_q    vr13, vr11, vr12 */
	addq     -80(%rbp), %r10
	movq     %r10, -72(%rbp)
	movl     $2, -64(%rbp)       /* mov_l    vr14, $2 */
	movl     -64(%rbp), %r10d    /* sconv_lq vr15, vr14 */
	movslq   %r10d, %r10
	movq     %r10, -56(%rbp)
	movq     -56(%rbp), %r10     /* mul_q    vr16, vr15, $1 */
	imulq    $1, %r10
	movq     %r10, -48(%rbp)
	movq     -72(%rbp), %r10     /* add_q    vr17, vr13, vr16 */
	addq     -48(%rbp), %r10
	movq     %r10, -40(%rbp)
	movb     $105, -32(%rbp)     /* mov_b    vr18, $105 */
	movq     -40(%rbp), %r11     /* mov_b    (vr17), vr18 */
	movb     -32(%rbp), %r10b
	movb     %r10b, (%r11)
	leaq     -24(%rbp), %r10     /* localaddr vr11, $0 */
	movq     %r10, -88(%rbp)
	movq     $0, -80(%rbp)       /* mov_q    vr12, $0 */
	movq     -88(%rbp), %r10     /* add_q    vr13, vr11, vr12 */
	addq     -80(%rbp), %r10
	movq     %r10, -72(%rbp)
	movl     $3, -64(%rbp)       /* mov_l    vr14, $3 */
	movl     -64(%rbp), %r10d    /* sconv_lq vr15, vr14 */
	movslq   %r10d, %r10
	movq     %r10, -56(%rbp)
	movq     -56(%rbp), %r10     /* mul_q    vr16, vr15, $1 */
	imulq    $1, %r10
	movq     %r10, -48(%rbp)
	movq     -72(%rbp), %r10     /* add_q    vr17, vr13, vr16 */
	addq     -48(%rbp), %r10
	movq     %r10, -40(%rbp)
	movb     $99, -32(%rbp)      /* mov_b    vr18, $99 */
	movq     -40(%rbp), %r11     /* mov_b    (vr17), vr18 */
	movb     -32(%rbp), %r10b
	movb     %r10b, (%r11)
	leaq     -24(%rbp), %r10     /* localaddr vr11, $0 */
	movq     %r10, -88(%rbp)
	movq     $0, -80(%rbp)       /* mov_q    vr12, $0 */
	movq     -88(%rbp), %r10     /* add_q    vr13, vr11, vr12 */
	addq     -80(%rbp), %r10
	movq     %r10, -72(%rbp)
	movl     $4, -64(%rbp)       /* mov_l    vr14, $4 */
	movl     -64(%rbp), %r10d    /* sconv_lq vr15, vr14 */
	movslq   %r10d, %r10
	movq     %r10, -56(%rbp)
	movq     -56(%rbp), %r10     /* mul_q    vr16, vr15, $1 */
	imulq    $1, %r10
	movq     %r10, -48(%rbp)
	movq     -72(%rbp), %r10     /* add_q    vr17, vr13, vr16 */
	addq     -48(%rbp), %r10
	movq     %r10, -40(%rbp)
	movb     $101, -32(%rbp)     /* mov_b    vr18, $101 */
	movq     -40(%rbp), %r11     /* mov_b    (vr17), vr18 */
	movb     -32(%rbp), %r10b
	movb     %r10b, (%r11)
	leaq     -24(%rbp), %r10     /* localaddr vr11, $0 */
	movq     %r10, -88(%rbp)
	movq     $0, -80(%rbp)       /* mov_q    vr12, $0 */
	movq     -88(%rbp), %r10     /* add_q    vr13, vr11, vr12 */
	addq     -80(%rbp), %r10
	movq     %r10, -72(%rbp)
	movl     $5, -64(%rbp)       /* mov_l    vr14, $5 */
	movl     -64(%rbp), %r10d    /* sconv_lq vr15, vr14 */
	movslq   %r10d, %r10
	movq     %r10, -56(%rbp)
	movq     -56(%rbp), %r10     /* mul_q    vr16, vr15, $1 */
	imulq    $1, %r10
	movq     %r10, -48(%rbp)
	movq     -72(%rbp), %r10     /* add_q    vr17, vr13, vr16 */
	addq     -48(%rbp), %r10
	movq     %r10, -40(%rbp)
	movl     $0, -32(%rbp)       /* mov_l    vr18, $0 */
	movq     -40(%rbp), %r11     /* mov_b    (vr17), vr18 */
	movb     -32(%rbp), %r10b
	movb     %r10b, (%r11)
	leaq     -24(%rbp), %r10     /* localaddr vr11, $0 */
	movq     %r10, -88(%rbp)
	movq     $20, -80(%rbp)      /* mov_q    vr12, $20 */
	movq     -88(%rbp), %r10     /* add_q    vr13, vr11, vr12 */
	addq     -80(%rbp), %r10
	movq     %r10, -72(%rbp)
	movl     $43, -64(%rbp)      /* mov_l    vr14, $43 */
	movq     -72(%rbp), %r11     /* mov_l    (vr13), vr14 */
	movl     -64(%rbp), %r10d
	movl     %r10d, (%r11)
	leaq     -24(%rbp), %r10     /* localaddr vr11, $0 */
	movq     %r10, -88(%rbp)
	movq     $0, -80(%rbp)       /* mov_q    vr12, $0 */
	movq     -88(%rbp), %r10     /* add_q    vr13, vr11, vr12 */
	addq     -80(%rbp), %r10
	movq     %r10, -72(%rbp)
	movq     -72(%rbp), %r10     /* mov_q    vr10, vr13 */
	movq     %r10, -96(%rbp)
	movq     -96(%rbp), %rdi     /* mov_q    vr1, vr10 */
	call     print_str           /* call     print_str */
	call     print_nl            /* call     print_nl */
	leaq     -24(%rbp), %r10     /* localaddr vr11, $0 */
	movq     %r10, -88(%rbp)
	movq     $20, -80(%rbp)      /* mov_q    vr12, $20 */
	movq     -88(%rbp), %r10     /* add_q    vr13, vr11, vr12 */
	addq     -80(%rbp), %r10
	movq     %r10, -72(%rbp)
	movq     -72(%rbp), %r11     /* mov_l    vr1, (vr13) */
	movl     (%r11), %edi
	call     print_i32           /* call     print_i32 */
	call     print_nl            /* call     print_nl */
	movl     $0, -88(%rbp)       /* mov_l    vr11, $0 */
	movl     -88(%rbp), %eax     /* mov_l    vr0, vr11 */
	jmp      .Lmain_return       /* jmp      .Lmain_return */
.Lmain_return:
	addq     $96, %rsp           /* leave    $24 */
	popq     %rbp
	ret                          /* ret       */
