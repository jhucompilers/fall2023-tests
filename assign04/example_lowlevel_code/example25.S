/* variable 'points' allocated 24 bytes of storage at offset 0 */
/* variable 'i' allocated vreg 10 */
/* variable 'count' allocated vreg 11 */
/* Function 'main' uses 24 bytes of memory and 12 virtual registers */
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
	movl     $11, -80(%rbp)      /* mov_l    vr12, $11 */
	movl     -80(%rbp), %r10d    /* mov_l    vr11, vr12 */
	movl     %r10d, -88(%rbp)
	movl     $0, -72(%rbp)       /* mov_l    vr13, $0 */
	movl     -72(%rbp), %r10d    /* mov_l    vr10, vr13 */
	movl     %r10d, -96(%rbp)
	jmp      .L1                 /* jmp      .L1 */
.L0:
	leaq     -24(%rbp), %r10     /* localaddr vr12, $0 */
	movq     %r10, -80(%rbp)
	movl     -96(%rbp), %r10d    /* sconv_lq vr13, vr10 */
	movslq   %r10d, %r10
	movq     %r10, -72(%rbp)
	movq     -72(%rbp), %r10     /* mul_q    vr14, vr13, $8 */
	imulq    $8, %r10
	movq     %r10, -64(%rbp)
	movq     -80(%rbp), %r10     /* add_q    vr15, vr12, vr14 */
	addq     -64(%rbp), %r10
	movq     %r10, -56(%rbp)
	movq     $0, -48(%rbp)       /* mov_q    vr16, $0 */
	movq     -56(%rbp), %r10     /* add_q    vr17, vr15, vr16 */
	addq     -48(%rbp), %r10
	movq     %r10, -40(%rbp)
	movq     -40(%rbp), %r11     /* mov_l    (vr17), vr11 */
	movl     -88(%rbp), %r10d
	movl     %r10d, (%r11)
	movl     $1, -80(%rbp)       /* mov_l    vr12, $1 */
	movl     -88(%rbp), %r10d    /* add_l    vr13, vr11, vr12 */
	addl     -80(%rbp), %r10d
	movl     %r10d, -72(%rbp)
	movl     -72(%rbp), %r10d    /* mov_l    vr11, vr13 */
	movl     %r10d, -88(%rbp)
	leaq     -24(%rbp), %r10     /* localaddr vr12, $0 */
	movq     %r10, -80(%rbp)
	movl     -96(%rbp), %r10d    /* sconv_lq vr13, vr10 */
	movslq   %r10d, %r10
	movq     %r10, -72(%rbp)
	movq     -72(%rbp), %r10     /* mul_q    vr14, vr13, $8 */
	imulq    $8, %r10
	movq     %r10, -64(%rbp)
	movq     -80(%rbp), %r10     /* add_q    vr15, vr12, vr14 */
	addq     -64(%rbp), %r10
	movq     %r10, -56(%rbp)
	movq     $4, -48(%rbp)       /* mov_q    vr16, $4 */
	movq     -56(%rbp), %r10     /* add_q    vr17, vr15, vr16 */
	addq     -48(%rbp), %r10
	movq     %r10, -40(%rbp)
	movq     -40(%rbp), %r11     /* mov_l    (vr17), vr11 */
	movl     -88(%rbp), %r10d
	movl     %r10d, (%r11)
	movl     $1, -80(%rbp)       /* mov_l    vr12, $1 */
	movl     -88(%rbp), %r10d    /* add_l    vr13, vr11, vr12 */
	addl     -80(%rbp), %r10d
	movl     %r10d, -72(%rbp)
	movl     -72(%rbp), %r10d    /* mov_l    vr11, vr13 */
	movl     %r10d, -88(%rbp)
	movl     $1, -64(%rbp)       /* mov_l    vr14, $1 */
	movl     -96(%rbp), %r10d    /* add_l    vr15, vr10, vr14 */
	addl     -64(%rbp), %r10d
	movl     %r10d, -56(%rbp)
	movl     -56(%rbp), %r10d    /* mov_l    vr10, vr15 */
	movl     %r10d, -96(%rbp)
.L1:
	movl     $3, -48(%rbp)       /* mov_l    vr16, $3 */
	movl     -96(%rbp), %r10d    /* cmplt_l  vr17, vr10, vr16 */
	cmpl     -48(%rbp), %r10d
	setl     %r10b
	movzbl   %r10b, %r11d
	movl     %r11d, -40(%rbp)
	cmpl     $0, -40(%rbp)       /* cjmp_t   vr17, .L0 */
	jne      .L0
	movl     $2, -32(%rbp)       /* mov_l    vr18, $2 */
	movl     -32(%rbp), %r10d    /* mov_l    vr10, vr18 */
	movl     %r10d, -96(%rbp)
	jmp      .L3                 /* jmp      .L3 */
.L2:
	leaq     -24(%rbp), %r10     /* localaddr vr12, $0 */
	movq     %r10, -80(%rbp)
	movl     -96(%rbp), %r10d    /* sconv_lq vr13, vr10 */
	movslq   %r10d, %r10
	movq     %r10, -72(%rbp)
	movq     -72(%rbp), %r10     /* mul_q    vr14, vr13, $8 */
	imulq    $8, %r10
	movq     %r10, -64(%rbp)
	movq     -80(%rbp), %r10     /* add_q    vr15, vr12, vr14 */
	addq     -64(%rbp), %r10
	movq     %r10, -56(%rbp)
	movq     $0, -48(%rbp)       /* mov_q    vr16, $0 */
	movq     -56(%rbp), %r10     /* add_q    vr17, vr15, vr16 */
	addq     -48(%rbp), %r10
	movq     %r10, -40(%rbp)
	movq     -40(%rbp), %r11     /* mov_l    vr1, (vr17) */
	movl     (%r11), %edi
	call     print_i32           /* call     print_i32 */
	call     print_nl            /* call     print_nl */
	leaq     -24(%rbp), %r10     /* localaddr vr12, $0 */
	movq     %r10, -80(%rbp)
	movl     -96(%rbp), %r10d    /* sconv_lq vr13, vr10 */
	movslq   %r10d, %r10
	movq     %r10, -72(%rbp)
	movq     -72(%rbp), %r10     /* mul_q    vr14, vr13, $8 */
	imulq    $8, %r10
	movq     %r10, -64(%rbp)
	movq     -80(%rbp), %r10     /* add_q    vr15, vr12, vr14 */
	addq     -64(%rbp), %r10
	movq     %r10, -56(%rbp)
	movq     $4, -48(%rbp)       /* mov_q    vr16, $4 */
	movq     -56(%rbp), %r10     /* add_q    vr17, vr15, vr16 */
	addq     -48(%rbp), %r10
	movq     %r10, -40(%rbp)
	movq     -40(%rbp), %r11     /* mov_l    vr1, (vr17) */
	movl     (%r11), %edi
	call     print_i32           /* call     print_i32 */
	call     print_nl            /* call     print_nl */
	movl     $1, -80(%rbp)       /* mov_l    vr12, $1 */
	movl     -96(%rbp), %r10d    /* sub_l    vr13, vr10, vr12 */
	subl     -80(%rbp), %r10d
	movl     %r10d, -72(%rbp)
	movl     -72(%rbp), %r10d    /* mov_l    vr10, vr13 */
	movl     %r10d, -96(%rbp)
.L3:
	movl     $0, -64(%rbp)       /* mov_l    vr14, $0 */
	movl     -96(%rbp), %r10d    /* cmpgte_l vr15, vr10, vr14 */
	cmpl     -64(%rbp), %r10d
	setge    %r10b
	movzbl   %r10b, %r11d
	movl     %r11d, -56(%rbp)
	cmpl     $0, -56(%rbp)       /* cjmp_t   vr15, .L2 */
	jne      .L2
	movl     $0, -80(%rbp)       /* mov_l    vr12, $0 */
	movl     -80(%rbp), %eax     /* mov_l    vr0, vr12 */
	jmp      .Lmain_return       /* jmp      .Lmain_return */
.Lmain_return:
	addq     $96, %rsp           /* leave    $24 */
	popq     %rbp
	ret                          /* ret       */
