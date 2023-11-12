/* variable 'points' allocated 24 bytes of storage at offset 0 */
/* variable 'i' allocated vreg 10 */
/* variable 'count' allocated vreg 11 */
/* Function 'main' uses 24 bytes of memory and 12 virtual registers */
/* Function 'main': placing memory variables at offset -24 from %rbp */
/* Function 'main' uses 184 total bytes of memory storage for vregs */
/* Function 'main': placing vreg storage at offset -208 from %rbp */
/* Function 'main': 208 bytes of local storage allocated in stack frame */
	.section .text

	.globl main
main:
	pushq    %rbp                /* enter    $24 */
	movq     %rsp, %rbp
	subq     $208, %rsp
	movl     $11, -192(%rbp)     /* mov_l    vr12, $11 */
	movl     -192(%rbp), %r10d   /* mov_l    vr11, vr12 */
	movl     %r10d, -200(%rbp)
	movl     $0, -184(%rbp)      /* mov_l    vr13, $0 */
	movl     -184(%rbp), %r10d   /* mov_l    vr10, vr13 */
	movl     %r10d, -208(%rbp)
	jmp      .L1                 /* jmp      .L1 */
.L0:
	leaq     -24(%rbp), %r10     /* localaddr vr12, $0 */
	movq     %r10, -192(%rbp)
	movl     -208(%rbp), %r10d   /* sconv_lq vr13, vr10 */
	movslq   %r10d, %r10
	movq     %r10, -184(%rbp)
	movq     -184(%rbp), %r10    /* mul_q    vr14, vr13, $8 */
	imulq    $8, %r10
	movq     %r10, -176(%rbp)
	movq     -192(%rbp), %r10    /* add_q    vr15, vr12, vr14 */
	addq     -176(%rbp), %r10
	movq     %r10, -168(%rbp)
	movq     $0, -160(%rbp)      /* mov_q    vr16, $0 */
	movq     -168(%rbp), %r10    /* add_q    vr17, vr15, vr16 */
	addq     -160(%rbp), %r10
	movq     %r10, -152(%rbp)
	movq     -152(%rbp), %r11    /* mov_l    (vr17), vr11 */
	movl     -200(%rbp), %r10d
	movl     %r10d, (%r11)
	movl     $1, -144(%rbp)      /* mov_l    vr18, $1 */
	movl     -200(%rbp), %r10d   /* add_l    vr19, vr11, vr18 */
	addl     -144(%rbp), %r10d
	movl     %r10d, -136(%rbp)
	movl     -136(%rbp), %r10d   /* mov_l    vr11, vr19 */
	movl     %r10d, -200(%rbp)
	leaq     -24(%rbp), %r10     /* localaddr vr20, $0 */
	movq     %r10, -128(%rbp)
	movl     -208(%rbp), %r10d   /* sconv_lq vr21, vr10 */
	movslq   %r10d, %r10
	movq     %r10, -120(%rbp)
	movq     -120(%rbp), %r10    /* mul_q    vr22, vr21, $8 */
	imulq    $8, %r10
	movq     %r10, -112(%rbp)
	movq     -128(%rbp), %r10    /* add_q    vr23, vr20, vr22 */
	addq     -112(%rbp), %r10
	movq     %r10, -104(%rbp)
	movq     $4, -96(%rbp)       /* mov_q    vr24, $4 */
	movq     -104(%rbp), %r10    /* add_q    vr25, vr23, vr24 */
	addq     -96(%rbp), %r10
	movq     %r10, -88(%rbp)
	movq     -88(%rbp), %r11     /* mov_l    (vr25), vr11 */
	movl     -200(%rbp), %r10d
	movl     %r10d, (%r11)
	movl     $1, -80(%rbp)       /* mov_l    vr26, $1 */
	movl     -200(%rbp), %r10d   /* add_l    vr27, vr11, vr26 */
	addl     -80(%rbp), %r10d
	movl     %r10d, -72(%rbp)
	movl     -72(%rbp), %r10d    /* mov_l    vr11, vr27 */
	movl     %r10d, -200(%rbp)
	movl     $1, -64(%rbp)       /* mov_l    vr28, $1 */
	movl     -208(%rbp), %r10d   /* add_l    vr29, vr10, vr28 */
	addl     -64(%rbp), %r10d
	movl     %r10d, -56(%rbp)
	movl     -56(%rbp), %r10d    /* mov_l    vr10, vr29 */
	movl     %r10d, -208(%rbp)
.L1:
	movl     $3, -48(%rbp)       /* mov_l    vr30, $3 */
	movl     -208(%rbp), %r10d   /* cmplt_l  vr31, vr10, vr30 */
	cmpl     -48(%rbp), %r10d
	setl     %r10b
	movzbl   %r10b, %r11d
	movl     %r11d, -40(%rbp)
	cmpl     $0, -40(%rbp)       /* cjmp_t   vr31, .L0 */
	jne      .L0
	movl     $2, -32(%rbp)       /* mov_l    vr32, $2 */
	movl     -32(%rbp), %r10d    /* mov_l    vr10, vr32 */
	movl     %r10d, -208(%rbp)
	jmp      .L3                 /* jmp      .L3 */
.L2:
	leaq     -24(%rbp), %r10     /* localaddr vr12, $0 */
	movq     %r10, -192(%rbp)
	movl     -208(%rbp), %r10d   /* sconv_lq vr13, vr10 */
	movslq   %r10d, %r10
	movq     %r10, -184(%rbp)
	movq     -184(%rbp), %r10    /* mul_q    vr14, vr13, $8 */
	imulq    $8, %r10
	movq     %r10, -176(%rbp)
	movq     -192(%rbp), %r10    /* add_q    vr15, vr12, vr14 */
	addq     -176(%rbp), %r10
	movq     %r10, -168(%rbp)
	movq     $0, -160(%rbp)      /* mov_q    vr16, $0 */
	movq     -168(%rbp), %r10    /* add_q    vr17, vr15, vr16 */
	addq     -160(%rbp), %r10
	movq     %r10, -152(%rbp)
	movq     -152(%rbp), %r11    /* mov_l    vr1, (vr17) */
	movl     (%r11), %edi
	call     print_i32           /* call     print_i32 */
	call     print_nl            /* call     print_nl */
	leaq     -24(%rbp), %r10     /* localaddr vr18, $0 */
	movq     %r10, -144(%rbp)
	movl     -208(%rbp), %r10d   /* sconv_lq vr19, vr10 */
	movslq   %r10d, %r10
	movq     %r10, -136(%rbp)
	movq     -136(%rbp), %r10    /* mul_q    vr20, vr19, $8 */
	imulq    $8, %r10
	movq     %r10, -128(%rbp)
	movq     -144(%rbp), %r10    /* add_q    vr21, vr18, vr20 */
	addq     -128(%rbp), %r10
	movq     %r10, -120(%rbp)
	movq     $4, -112(%rbp)      /* mov_q    vr22, $4 */
	movq     -120(%rbp), %r10    /* add_q    vr23, vr21, vr22 */
	addq     -112(%rbp), %r10
	movq     %r10, -104(%rbp)
	movq     -104(%rbp), %r11    /* mov_l    vr1, (vr23) */
	movl     (%r11), %edi
	call     print_i32           /* call     print_i32 */
	call     print_nl            /* call     print_nl */
	movl     $1, -96(%rbp)       /* mov_l    vr24, $1 */
	movl     -208(%rbp), %r10d   /* sub_l    vr25, vr10, vr24 */
	subl     -96(%rbp), %r10d
	movl     %r10d, -88(%rbp)
	movl     -88(%rbp), %r10d    /* mov_l    vr10, vr25 */
	movl     %r10d, -208(%rbp)
.L3:
	movl     $0, -80(%rbp)       /* mov_l    vr26, $0 */
	movl     -208(%rbp), %r10d   /* cmpgte_l vr27, vr10, vr26 */
	cmpl     -80(%rbp), %r10d
	setge    %r10b
	movzbl   %r10b, %r11d
	movl     %r11d, -72(%rbp)
	cmpl     $0, -72(%rbp)       /* cjmp_t   vr27, .L2 */
	jne      .L2
	movl     $0, -64(%rbp)       /* mov_l    vr28, $0 */
	movl     -64(%rbp), %eax     /* mov_l    vr0, vr28 */
	jmp      .Lmain_return       /* jmp      .Lmain_return */
	jmp      .Lmain_return       /* jmp      .Lmain_return */
.Lmain_return:
	addq     $208, %rsp          /* leave    $24 */
	popq     %rbp
	ret                          /* ret       */
