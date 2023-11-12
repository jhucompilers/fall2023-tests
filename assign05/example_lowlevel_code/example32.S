/* variable 'arr' allocated vreg 10 */
/* variable 'i' allocated vreg 11 */
/* variable 'j' allocated vreg 12 */
/* variable 'tmp' allocated vreg 13 */
/* Function 'swap' uses 0 bytes of memory and 14 virtual registers */
/* variable 'arr' allocated vreg 10 */
/* variable 'n' allocated vreg 11 */
/* variable 'i' allocated vreg 12 */
/* variable 'tmp' allocated vreg 13 */
/* Function 'bubble' uses 0 bytes of memory and 14 virtual registers */
/* variable 'a' allocated 20 bytes of storage at offset 0 */
/* variable 'i' allocated vreg 10 */
/* Function 'main' uses 20 bytes of memory and 11 virtual registers */
/* Function 'swap' uses 144 total bytes of memory storage for vregs */
/* Function 'swap': placing vreg storage at offset -144 from %rbp */
/* Function 'swap': 144 bytes of local storage allocated in stack frame */
	.section .text

	.globl swap
swap:
	pushq    %rbp                /* enter    $0 */
	movq     %rsp, %rbp
	subq     $144, %rsp
	movq     %rdi, -144(%rbp)    /* mov_q    vr10, vr1 */
	movl     %esi, -136(%rbp)    /* mov_l    vr11, vr2 */
	movl     %edx, -128(%rbp)    /* mov_l    vr12, vr3 */
	movl     -136(%rbp), %r10d   /* sconv_lq vr14, vr11 */
	movslq   %r10d, %r10
	movq     %r10, -112(%rbp)
	movq     -112(%rbp), %r10    /* mul_q    vr15, vr14, $4 */
	imulq    $4, %r10
	movq     %r10, -104(%rbp)
	movq     -144(%rbp), %r10    /* add_q    vr16, vr10, vr15 */
	addq     -104(%rbp), %r10
	movq     %r10, -96(%rbp)
	movq     -96(%rbp), %r11     /* mov_l    vr17, (vr16) */
	movl     (%r11), %r10d
	movl     %r10d, -88(%rbp)
	movl     -88(%rbp), %r10d    /* mov_l    vr13, vr17 */
	movl     %r10d, -120(%rbp)
	movl     -128(%rbp), %r10d   /* sconv_lq vr18, vr12 */
	movslq   %r10d, %r10
	movq     %r10, -80(%rbp)
	movq     -80(%rbp), %r10     /* mul_q    vr19, vr18, $4 */
	imulq    $4, %r10
	movq     %r10, -72(%rbp)
	movq     -144(%rbp), %r10    /* add_q    vr20, vr10, vr19 */
	addq     -72(%rbp), %r10
	movq     %r10, -64(%rbp)
	movl     -136(%rbp), %r10d   /* sconv_lq vr21, vr11 */
	movslq   %r10d, %r10
	movq     %r10, -56(%rbp)
	movq     -56(%rbp), %r10     /* mul_q    vr22, vr21, $4 */
	imulq    $4, %r10
	movq     %r10, -48(%rbp)
	movq     -144(%rbp), %r10    /* add_q    vr23, vr10, vr22 */
	addq     -48(%rbp), %r10
	movq     %r10, -40(%rbp)
	movq     -64(%rbp), %r11     /* mov_l    vr24, (vr20) */
	movl     (%r11), %r10d
	movl     %r10d, -32(%rbp)
	movq     -40(%rbp), %r11     /* mov_l    (vr23), vr24 */
	movl     -32(%rbp), %r10d
	movl     %r10d, (%r11)
	movl     -128(%rbp), %r10d   /* sconv_lq vr25, vr12 */
	movslq   %r10d, %r10
	movq     %r10, -24(%rbp)
	movq     -24(%rbp), %r10     /* mul_q    vr26, vr25, $4 */
	imulq    $4, %r10
	movq     %r10, -16(%rbp)
	movq     -144(%rbp), %r10    /* add_q    vr27, vr10, vr26 */
	addq     -16(%rbp), %r10
	movq     %r10, -8(%rbp)
	movq     -8(%rbp), %r11      /* mov_l    (vr27), vr13 */
	movl     -120(%rbp), %r10d
	movl     %r10d, (%r11)
	jmp      .Lswap_return       /* jmp      .Lswap_return */
.Lswap_return:
	addq     $144, %rsp          /* leave    $0 */
	popq     %rbp
	ret                          /* ret       */
/* Function 'bubble' uses 112 total bytes of memory storage for vregs */
/* Function 'bubble': placing vreg storage at offset -112 from %rbp */
/* Function 'bubble': 112 bytes of local storage allocated in stack frame */

	.globl bubble
bubble:
	pushq    %rbp                /* enter    $0 */
	movq     %rsp, %rbp
	subq     $112, %rsp
	movq     %rdi, -112(%rbp)    /* mov_q    vr10, vr1 */
	movl     %esi, -104(%rbp)    /* mov_l    vr11, vr2 */
	movl     $1, -88(%rbp)       /* mov_l    vr14, $1 */
	movl     -88(%rbp), %r10d    /* mov_l    vr12, vr14 */
	movl     %r10d, -96(%rbp)
	jmp      .L1                 /* jmp      .L1 */
.L0:
	movl     -96(%rbp), %r10d    /* sconv_lq vr14, vr12 */
	movslq   %r10d, %r10
	movq     %r10, -88(%rbp)
	movq     -88(%rbp), %r10     /* mul_q    vr15, vr14, $4 */
	imulq    $4, %r10
	movq     %r10, -80(%rbp)
	movq     -112(%rbp), %r10    /* add_q    vr16, vr10, vr15 */
	addq     -80(%rbp), %r10
	movq     %r10, -72(%rbp)
	movl     $1, -64(%rbp)       /* mov_l    vr17, $1 */
	movl     -96(%rbp), %r10d    /* sub_l    vr18, vr12, vr17 */
	subl     -64(%rbp), %r10d
	movl     %r10d, -56(%rbp)
	movl     -56(%rbp), %r10d    /* sconv_lq vr19, vr18 */
	movslq   %r10d, %r10
	movq     %r10, -48(%rbp)
	movq     -48(%rbp), %r10     /* mul_q    vr20, vr19, $4 */
	imulq    $4, %r10
	movq     %r10, -40(%rbp)
	movq     -112(%rbp), %r10    /* add_q    vr21, vr10, vr20 */
	addq     -40(%rbp), %r10
	movq     %r10, -32(%rbp)
	movq     -72(%rbp), %r11     /* mov_l    vr23, (vr16) */
	movl     (%r11), %r10d
	movl     %r10d, -16(%rbp)
	movq     -32(%rbp), %r11     /* mov_l    vr24, (vr21) */
	movl     (%r11), %r10d
	movl     %r10d, -8(%rbp)
	movl     -16(%rbp), %r10d    /* cmplt_l  vr22, vr23, vr24 */
	cmpl     -8(%rbp), %r10d
	setl     %r10b
	movzbl   %r10b, %r11d
	movl     %r11d, -24(%rbp)
	cmpl     $0, -24(%rbp)       /* cjmp_f   vr22, .L2 */
	je       .L2
	movq     -112(%rbp), %rdi    /* mov_q    vr1, vr10 */
	movl     $1, -88(%rbp)       /* mov_l    vr14, $1 */
	movl     -96(%rbp), %r10d    /* sub_l    vr15, vr12, vr14 */
	subl     -88(%rbp), %r10d
	movl     %r10d, -80(%rbp)
	movl     -80(%rbp), %esi     /* mov_l    vr2, vr15 */
	movl     -96(%rbp), %edx     /* mov_l    vr3, vr12 */
	call     swap                /* call     swap */
.L2:
	movl     $1, -72(%rbp)       /* mov_l    vr16, $1 */
	movl     -96(%rbp), %r10d    /* add_l    vr17, vr12, vr16 */
	addl     -72(%rbp), %r10d
	movl     %r10d, -64(%rbp)
	movl     -64(%rbp), %r10d    /* mov_l    vr12, vr17 */
	movl     %r10d, -96(%rbp)
.L1:
	movl     -96(%rbp), %r10d    /* cmplt_l  vr18, vr12, vr11 */
	cmpl     -104(%rbp), %r10d
	setl     %r10b
	movzbl   %r10b, %r11d
	movl     %r11d, -56(%rbp)
	cmpl     $0, -56(%rbp)       /* cjmp_t   vr18, .L0 */
	jne      .L0
	jmp      .Lbubble_return     /* jmp      .Lbubble_return */
.Lbubble_return:
	addq     $112, %rsp          /* leave    $0 */
	popq     %rbp
	ret                          /* ret       */
/* Function 'main': placing memory variables at offset -24 from %rbp */
/* Function 'main' uses 272 total bytes of memory storage for vregs */
/* Function 'main': placing vreg storage at offset -296 from %rbp */
/* Function 'main': 304 bytes of local storage allocated in stack frame */

	.globl main
main:
	pushq    %rbp                /* enter    $20 */
	movq     %rsp, %rbp
	subq     $304, %rsp
	movl     $52, -288(%rbp)     /* mov_l    vr11, $52 */
	leaq     -24(%rbp), %r10     /* localaddr vr12, $0 */
	movq     %r10, -280(%rbp)
	movl     $0, -272(%rbp)      /* mov_l    vr13, $0 */
	movl     -272(%rbp), %r10d   /* sconv_lq vr14, vr13 */
	movslq   %r10d, %r10
	movq     %r10, -264(%rbp)
	movq     -264(%rbp), %r10    /* mul_q    vr15, vr14, $4 */
	imulq    $4, %r10
	movq     %r10, -256(%rbp)
	movq     -280(%rbp), %r10    /* add_q    vr16, vr12, vr15 */
	addq     -256(%rbp), %r10
	movq     %r10, -248(%rbp)
	movq     -248(%rbp), %r11    /* mov_l    (vr16), vr11 */
	movl     -288(%rbp), %r10d
	movl     %r10d, (%r11)
	movl     $31, -240(%rbp)     /* mov_l    vr17, $31 */
	leaq     -24(%rbp), %r10     /* localaddr vr18, $0 */
	movq     %r10, -232(%rbp)
	movl     $1, -224(%rbp)      /* mov_l    vr19, $1 */
	movl     -224(%rbp), %r10d   /* sconv_lq vr20, vr19 */
	movslq   %r10d, %r10
	movq     %r10, -216(%rbp)
	movq     -216(%rbp), %r10    /* mul_q    vr21, vr20, $4 */
	imulq    $4, %r10
	movq     %r10, -208(%rbp)
	movq     -232(%rbp), %r10    /* add_q    vr22, vr18, vr21 */
	addq     -208(%rbp), %r10
	movq     %r10, -200(%rbp)
	movq     -200(%rbp), %r11    /* mov_l    (vr22), vr17 */
	movl     -240(%rbp), %r10d
	movl     %r10d, (%r11)
	movl     $8, -192(%rbp)      /* mov_l    vr23, $8 */
	leaq     -24(%rbp), %r10     /* localaddr vr24, $0 */
	movq     %r10, -184(%rbp)
	movl     $2, -176(%rbp)      /* mov_l    vr25, $2 */
	movl     -176(%rbp), %r10d   /* sconv_lq vr26, vr25 */
	movslq   %r10d, %r10
	movq     %r10, -168(%rbp)
	movq     -168(%rbp), %r10    /* mul_q    vr27, vr26, $4 */
	imulq    $4, %r10
	movq     %r10, -160(%rbp)
	movq     -184(%rbp), %r10    /* add_q    vr28, vr24, vr27 */
	addq     -160(%rbp), %r10
	movq     %r10, -152(%rbp)
	movq     -152(%rbp), %r11    /* mov_l    (vr28), vr23 */
	movl     -192(%rbp), %r10d
	movl     %r10d, (%r11)
	movl     $41, -144(%rbp)     /* mov_l    vr29, $41 */
	leaq     -24(%rbp), %r10     /* localaddr vr30, $0 */
	movq     %r10, -136(%rbp)
	movl     $3, -128(%rbp)      /* mov_l    vr31, $3 */
	movl     -128(%rbp), %r10d   /* sconv_lq vr32, vr31 */
	movslq   %r10d, %r10
	movq     %r10, -120(%rbp)
	movq     -120(%rbp), %r10    /* mul_q    vr33, vr32, $4 */
	imulq    $4, %r10
	movq     %r10, -112(%rbp)
	movq     -136(%rbp), %r10    /* add_q    vr34, vr30, vr33 */
	addq     -112(%rbp), %r10
	movq     %r10, -104(%rbp)
	movq     -104(%rbp), %r11    /* mov_l    (vr34), vr29 */
	movl     -144(%rbp), %r10d
	movl     %r10d, (%r11)
	movl     $75, -96(%rbp)      /* mov_l    vr35, $75 */
	leaq     -24(%rbp), %r10     /* localaddr vr36, $0 */
	movq     %r10, -88(%rbp)
	movl     $4, -80(%rbp)       /* mov_l    vr37, $4 */
	movl     -80(%rbp), %r10d    /* sconv_lq vr38, vr37 */
	movslq   %r10d, %r10
	movq     %r10, -72(%rbp)
	movq     -72(%rbp), %r10     /* mul_q    vr39, vr38, $4 */
	imulq    $4, %r10
	movq     %r10, -64(%rbp)
	movq     -88(%rbp), %r10     /* add_q    vr40, vr36, vr39 */
	addq     -64(%rbp), %r10
	movq     %r10, -56(%rbp)
	movq     -56(%rbp), %r11     /* mov_l    (vr40), vr35 */
	movl     -96(%rbp), %r10d
	movl     %r10d, (%r11)
	leaq     -24(%rbp), %r10     /* localaddr vr41, $0 */
	movq     %r10, -48(%rbp)
	movq     -48(%rbp), %rdi     /* mov_q    vr1, vr41 */
	movl     $5, -40(%rbp)       /* mov_l    vr42, $5 */
	movl     -40(%rbp), %esi     /* mov_l    vr2, vr42 */
	call     bubble              /* call     bubble */
	movl     $0, -32(%rbp)       /* mov_l    vr43, $0 */
	movl     -32(%rbp), %r10d    /* mov_l    vr10, vr43 */
	movl     %r10d, -296(%rbp)
	jmp      .L4                 /* jmp      .L4 */
.L3:
	leaq     -24(%rbp), %r10     /* localaddr vr11, $0 */
	movq     %r10, -288(%rbp)
	movl     -296(%rbp), %r10d   /* sconv_lq vr12, vr10 */
	movslq   %r10d, %r10
	movq     %r10, -280(%rbp)
	movq     -280(%rbp), %r10    /* mul_q    vr13, vr12, $4 */
	imulq    $4, %r10
	movq     %r10, -272(%rbp)
	movq     -288(%rbp), %r10    /* add_q    vr14, vr11, vr13 */
	addq     -272(%rbp), %r10
	movq     %r10, -264(%rbp)
	movq     -264(%rbp), %r11    /* mov_l    vr1, (vr14) */
	movl     (%r11), %edi
	call     print_i32           /* call     print_i32 */
	call     print_nl            /* call     print_nl */
	movl     $1, -256(%rbp)      /* mov_l    vr15, $1 */
	movl     -296(%rbp), %r10d   /* add_l    vr16, vr10, vr15 */
	addl     -256(%rbp), %r10d
	movl     %r10d, -248(%rbp)
	movl     -248(%rbp), %r10d   /* mov_l    vr10, vr16 */
	movl     %r10d, -296(%rbp)
.L4:
	movl     $5, -240(%rbp)      /* mov_l    vr17, $5 */
	movl     -296(%rbp), %r10d   /* cmplt_l  vr18, vr10, vr17 */
	cmpl     -240(%rbp), %r10d
	setl     %r10b
	movzbl   %r10b, %r11d
	movl     %r11d, -232(%rbp)
	cmpl     $0, -232(%rbp)      /* cjmp_t   vr18, .L3 */
	jne      .L3
	movl     $0, -224(%rbp)      /* mov_l    vr19, $0 */
	movl     -224(%rbp), %eax    /* mov_l    vr0, vr19 */
	jmp      .Lmain_return       /* jmp      .Lmain_return */
	jmp      .Lmain_return       /* jmp      .Lmain_return */
.Lmain_return:
	addq     $304, %rsp          /* leave    $20 */
	popq     %rbp
	ret                          /* ret       */
