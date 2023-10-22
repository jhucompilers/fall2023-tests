/* variable 'arr' allocated vreg 10 */
/* variable 'i' allocated vreg 11 */
/* Function 'read_m500x500' uses 0 bytes of memory and 12 virtual registers */
/* variable 'a' allocated 2000000 bytes of storage at offset 0 */
/* variable 'b' allocated 2000000 bytes of storage at offset 2000000 */
/* variable 'c' allocated 2000000 bytes of storage at offset 4000000 */
/* variable 'M' allocated vreg 10 */
/* variable 'NELTS' allocated vreg 11 */
/* variable 'SZ' allocated vreg 12 */
/* variable 'i' allocated vreg 13 */
/* variable 'j' allocated vreg 14 */
/* variable 'k' allocated vreg 15 */
/* variable 'r' allocated vreg 16 */
/* variable 'val' allocated vreg 17 */
/* Function 'main' uses 6000000 bytes of memory and 18 virtual registers */
/* Function 'read_m500x500' uses 80 total bytes of memory storage for vregs */
/* Function 'read_m500x500': placing vreg storage at offset -80 from %rbp */
/* Function 'read_m500x500': 80 bytes of local storage allocated in stack frame */
	.section .text

	.globl read_m500x500
read_m500x500:
	pushq    %rbp                /* enter    $0 */
	movq     %rsp, %rbp
	subq     $80, %rsp
	movq     %rdi, -80(%rbp)     /* mov_q    vr10, vr1 */
	movl     $0, %eax            /* mov_l    vr0, $0 */
	movl     %eax, -72(%rbp)     /* mov_l    vr11, vr0 */
	jmp      .L1                 /* jmp      .L1 */
.L0:
	movl     -72(%rbp), %r10d    /* sconv_lq vr12, vr11 */
	movslq   %r10d, %r10
	movq     %r10, -64(%rbp)
	movq     -64(%rbp), %r10     /* mul_q    vr13, vr12, $8 */
	imulq    $8, %r10
	movq     %r10, -56(%rbp)
	movq     -80(%rbp), %r10     /* add_q    vr14, vr10, vr13 */
	addq     -56(%rbp), %r10
	movq     %r10, -48(%rbp)
	call     read_i64            /* call     read_i64 */
	movq     %rax, -40(%rbp)     /* mov_q    vr15, vr0 */
	movq     -48(%rbp), %r11     /* mov_q    (vr14), vr15 */
	movq     -40(%rbp), %r10
	movq     %r10, (%r11)
	movl     $1, -32(%rbp)       /* mov_l    vr16, $1 */
	movl     -72(%rbp), %r10d    /* add_l    vr17, vr11, vr16 */
	addl     -32(%rbp), %r10d
	movl     %r10d, -24(%rbp)
	movl     -24(%rbp), %r10d    /* mov_l    vr11, vr17 */
	movl     %r10d, -72(%rbp)
.L1:
	movl     $250000, -16(%rbp)  /* mov_l    vr18, $250000 */
	movl     -72(%rbp), %r10d    /* cmplt_l  vr19, vr11, vr18 */
	cmpl     -16(%rbp), %r10d
	setl     %r10b
	movzbl   %r10b, %r11d
	movl     %r11d, -8(%rbp)
	cmpl     $0, -8(%rbp)        /* cjmp_t   vr19, .L0 */
	jne      .L0
.Lread_m500x500_return:
	addq     $80, %rsp           /* leave    $0 */
	popq     %rbp
	ret                          /* ret       */
/* Function 'main': placing memory variables at offset -6000000 from %rbp */
/* Function 'main' uses 192 total bytes of memory storage for vregs */
/* Function 'main': placing vreg storage at offset -6000192 from %rbp */
/* Function 'main': 6000192 bytes of local storage allocated in stack frame */

	.globl main
main:
	pushq    %rbp                /* enter    $6000000 */
	movq     %rsp, %rbp
	subq     $6000192, %rsp
	movl     $500, -6000128(%rbp) /* mov_l    vr18, $500 */
	movl     -6000128(%rbp), %r10d /* mov_l    vr10, vr18 */
	movl     %r10d, -6000192(%rbp)
	movl     $250000, -6000128(%rbp) /* mov_l    vr18, $250000 */
	movl     -6000128(%rbp), %r10d /* mov_l    vr11, vr18 */
	movl     %r10d, -6000184(%rbp)
	leaq     -6000000(%rbp), %r10 /* localaddr vr18, $0 */
	movq     %r10, -6000128(%rbp)
	movq     -6000128(%rbp), %rdi /* mov_q    vr1, vr18 */
	call     read_m500x500       /* call     read_m500x500 */
	leaq     -4000000(%rbp), %r10 /* localaddr vr18, $2000000 */
	movq     %r10, -6000128(%rbp)
	movq     -6000128(%rbp), %rdi /* mov_q    vr1, vr18 */
	call     read_m500x500       /* call     read_m500x500 */
	movl     $0, -6000120(%rbp)  /* mov_l    vr19, $0 */
	movl     -6000120(%rbp), %r10d /* mov_l    vr13, vr19 */
	movl     %r10d, -6000168(%rbp)
	jmp      .L3                 /* jmp      .L3 */
.L2:
	leaq     -2000000(%rbp), %r10 /* localaddr vr18, $4000000 */
	movq     %r10, -6000128(%rbp)
	movl     -6000168(%rbp), %r10d /* sconv_lq vr19, vr13 */
	movslq   %r10d, %r10
	movq     %r10, -6000120(%rbp)
	movq     -6000120(%rbp), %r10 /* mul_q    vr20, vr19, $8 */
	imulq    $8, %r10
	movq     %r10, -6000112(%rbp)
	movq     -6000128(%rbp), %r10 /* add_q    vr21, vr18, vr20 */
	addq     -6000112(%rbp), %r10
	movq     %r10, -6000104(%rbp)
	movq     $0, -6000096(%rbp)  /* mov_q    vr22, $0 */
	movq     -6000104(%rbp), %r11 /* mov_q    (vr21), vr22 */
	movq     -6000096(%rbp), %r10
	movq     %r10, (%r11)
	movl     $1, -6000088(%rbp)  /* mov_l    vr23, $1 */
	movl     -6000168(%rbp), %r10d /* add_l    vr24, vr13, vr23 */
	addl     -6000088(%rbp), %r10d
	movl     %r10d, -6000080(%rbp)
	movl     -6000080(%rbp), %r10d /* mov_l    vr13, vr24 */
	movl     %r10d, -6000168(%rbp)
.L3:
	movl     -6000168(%rbp), %r10d /* cmplt_l  vr25, vr13, vr11 */
	cmpl     -6000184(%rbp), %r10d
	setl     %r10b
	movzbl   %r10b, %r11d
	movl     %r11d, -6000072(%rbp)
	cmpl     $0, -6000072(%rbp)  /* cjmp_t   vr25, .L2 */
	jne      .L2
	movl     $0, -6000064(%rbp)  /* mov_l    vr26, $0 */
	movl     -6000064(%rbp), %r10d /* mov_l    vr15, vr26 */
	movl     %r10d, -6000152(%rbp)
	jmp      .L5                 /* jmp      .L5 */
.L4:
	movl     $0, -6000056(%rbp)  /* mov_l    vr27, $0 */
	movl     -6000056(%rbp), %r10d /* mov_l    vr13, vr27 */
	movl     %r10d, -6000168(%rbp)
	jmp      .L7                 /* jmp      .L7 */
.L6:
	leaq     -6000000(%rbp), %r10 /* localaddr vr18, $0 */
	movq     %r10, -6000128(%rbp)
	movl     -6000168(%rbp), %r10d /* mul_l    vr19, vr13, vr10 */
	imull    -6000192(%rbp), %r10d
	movl     %r10d, -6000120(%rbp)
	movl     -6000120(%rbp), %r10d /* add_l    vr20, vr19, vr15 */
	addl     -6000152(%rbp), %r10d
	movl     %r10d, -6000112(%rbp)
	movl     -6000112(%rbp), %r10d /* sconv_lq vr21, vr20 */
	movslq   %r10d, %r10
	movq     %r10, -6000104(%rbp)
	movq     -6000104(%rbp), %r10 /* mul_q    vr22, vr21, $8 */
	imulq    $8, %r10
	movq     %r10, -6000096(%rbp)
	movq     -6000128(%rbp), %r10 /* add_q    vr23, vr18, vr22 */
	addq     -6000096(%rbp), %r10
	movq     %r10, -6000088(%rbp)
	movq     -6000088(%rbp), %r11 /* mov_q    vr24, (vr23) */
	movq     (%r11), %r10
	movq     %r10, -6000080(%rbp)
	movq     -6000080(%rbp), %r10 /* mov_q    vr16, vr24 */
	movq     %r10, -6000144(%rbp)
	movl     $0, -6000072(%rbp)  /* mov_l    vr25, $0 */
	movl     -6000072(%rbp), %r10d /* mov_l    vr14, vr25 */
	movl     %r10d, -6000160(%rbp)
	jmp      .L9                 /* jmp      .L9 */
.L8:
	leaq     -2000000(%rbp), %r10 /* localaddr vr18, $4000000 */
	movq     %r10, -6000128(%rbp)
	movl     -6000168(%rbp), %r10d /* mul_l    vr19, vr13, vr10 */
	imull    -6000192(%rbp), %r10d
	movl     %r10d, -6000120(%rbp)
	movl     -6000120(%rbp), %r10d /* add_l    vr20, vr19, vr14 */
	addl     -6000160(%rbp), %r10d
	movl     %r10d, -6000112(%rbp)
	movl     -6000112(%rbp), %r10d /* sconv_lq vr21, vr20 */
	movslq   %r10d, %r10
	movq     %r10, -6000104(%rbp)
	movq     -6000104(%rbp), %r10 /* mul_q    vr22, vr21, $8 */
	imulq    $8, %r10
	movq     %r10, -6000096(%rbp)
	movq     -6000128(%rbp), %r10 /* add_q    vr23, vr18, vr22 */
	addq     -6000096(%rbp), %r10
	movq     %r10, -6000088(%rbp)
	movq     -6000088(%rbp), %r11 /* mov_q    vr24, (vr23) */
	movq     (%r11), %r10
	movq     %r10, -6000080(%rbp)
	movq     -6000080(%rbp), %r10 /* mov_q    vr17, vr24 */
	movq     %r10, -6000136(%rbp)
	leaq     -4000000(%rbp), %r10 /* localaddr vr18, $2000000 */
	movq     %r10, -6000128(%rbp)
	movl     -6000152(%rbp), %r10d /* mul_l    vr19, vr15, vr10 */
	imull    -6000192(%rbp), %r10d
	movl     %r10d, -6000120(%rbp)
	movl     -6000120(%rbp), %r10d /* add_l    vr20, vr19, vr14 */
	addl     -6000160(%rbp), %r10d
	movl     %r10d, -6000112(%rbp)
	movl     -6000112(%rbp), %r10d /* sconv_lq vr21, vr20 */
	movslq   %r10d, %r10
	movq     %r10, -6000104(%rbp)
	movq     -6000104(%rbp), %r10 /* mul_q    vr22, vr21, $8 */
	imulq    $8, %r10
	movq     %r10, -6000096(%rbp)
	movq     -6000128(%rbp), %r10 /* add_q    vr23, vr18, vr22 */
	addq     -6000096(%rbp), %r10
	movq     %r10, -6000088(%rbp)
	movq     -6000088(%rbp), %r11 /* mov_q    vr25, (vr23) */
	movq     (%r11), %r10
	movq     %r10, -6000072(%rbp)
	movq     -6000144(%rbp), %r10 /* mul_q    vr24, vr16, vr25 */
	imulq    -6000072(%rbp), %r10
	movq     %r10, -6000080(%rbp)
	movq     -6000136(%rbp), %r10 /* add_q    vr26, vr17, vr24 */
	addq     -6000080(%rbp), %r10
	movq     %r10, -6000064(%rbp)
	movq     -6000064(%rbp), %r10 /* mov_q    vr17, vr26 */
	movq     %r10, -6000136(%rbp)
	leaq     -2000000(%rbp), %r10 /* localaddr vr18, $4000000 */
	movq     %r10, -6000128(%rbp)
	movl     -6000168(%rbp), %r10d /* mul_l    vr19, vr13, vr10 */
	imull    -6000192(%rbp), %r10d
	movl     %r10d, -6000120(%rbp)
	movl     -6000120(%rbp), %r10d /* add_l    vr20, vr19, vr14 */
	addl     -6000160(%rbp), %r10d
	movl     %r10d, -6000112(%rbp)
	movl     -6000112(%rbp), %r10d /* sconv_lq vr21, vr20 */
	movslq   %r10d, %r10
	movq     %r10, -6000104(%rbp)
	movq     -6000104(%rbp), %r10 /* mul_q    vr22, vr21, $8 */
	imulq    $8, %r10
	movq     %r10, -6000096(%rbp)
	movq     -6000128(%rbp), %r10 /* add_q    vr23, vr18, vr22 */
	addq     -6000096(%rbp), %r10
	movq     %r10, -6000088(%rbp)
	movq     -6000088(%rbp), %r11 /* mov_q    (vr23), vr17 */
	movq     -6000136(%rbp), %r10
	movq     %r10, (%r11)
	movl     $1, -6000080(%rbp)  /* mov_l    vr24, $1 */
	movl     -6000160(%rbp), %r10d /* add_l    vr25, vr14, vr24 */
	addl     -6000080(%rbp), %r10d
	movl     %r10d, -6000072(%rbp)
	movl     -6000072(%rbp), %r10d /* mov_l    vr14, vr25 */
	movl     %r10d, -6000160(%rbp)
.L9:
	movl     -6000160(%rbp), %r10d /* cmplt_l  vr26, vr14, vr10 */
	cmpl     -6000192(%rbp), %r10d
	setl     %r10b
	movzbl   %r10b, %r11d
	movl     %r11d, -6000064(%rbp)
	cmpl     $0, -6000064(%rbp)  /* cjmp_t   vr26, .L8 */
	jne      .L8
	movl     $1, -6000056(%rbp)  /* mov_l    vr27, $1 */
	movl     -6000168(%rbp), %r10d /* add_l    vr28, vr13, vr27 */
	addl     -6000056(%rbp), %r10d
	movl     %r10d, -6000048(%rbp)
	movl     -6000048(%rbp), %r10d /* mov_l    vr13, vr28 */
	movl     %r10d, -6000168(%rbp)
.L7:
	movl     -6000168(%rbp), %r10d /* cmplt_l  vr29, vr13, vr10 */
	cmpl     -6000192(%rbp), %r10d
	setl     %r10b
	movzbl   %r10b, %r11d
	movl     %r11d, -6000040(%rbp)
	cmpl     $0, -6000040(%rbp)  /* cjmp_t   vr29, .L6 */
	jne      .L6
	movl     $1, -6000032(%rbp)  /* mov_l    vr30, $1 */
	movl     -6000152(%rbp), %r10d /* add_l    vr31, vr15, vr30 */
	addl     -6000032(%rbp), %r10d
	movl     %r10d, -6000024(%rbp)
	movl     -6000024(%rbp), %r10d /* mov_l    vr15, vr31 */
	movl     %r10d, -6000152(%rbp)
.L5:
	movl     -6000152(%rbp), %r10d /* cmplt_l  vr32, vr15, vr10 */
	cmpl     -6000192(%rbp), %r10d
	setl     %r10b
	movzbl   %r10b, %r11d
	movl     %r11d, -6000016(%rbp)
	cmpl     $0, -6000016(%rbp)  /* cjmp_t   vr32, .L4 */
	jne      .L4
	movl     $0, -6000008(%rbp)  /* mov_l    vr33, $0 */
	movl     -6000008(%rbp), %r10d /* mov_l    vr13, vr33 */
	movl     %r10d, -6000168(%rbp)
	jmp      .L11                /* jmp      .L11 */
.L10:
	leaq     -2000000(%rbp), %r10 /* localaddr vr18, $4000000 */
	movq     %r10, -6000128(%rbp)
	movl     -6000168(%rbp), %r10d /* sconv_lq vr19, vr13 */
	movslq   %r10d, %r10
	movq     %r10, -6000120(%rbp)
	movq     -6000120(%rbp), %r10 /* mul_q    vr20, vr19, $8 */
	imulq    $8, %r10
	movq     %r10, -6000112(%rbp)
	movq     -6000128(%rbp), %r10 /* add_q    vr21, vr18, vr20 */
	addq     -6000112(%rbp), %r10
	movq     %r10, -6000104(%rbp)
	movq     -6000104(%rbp), %r11 /* mov_q    vr1, (vr21) */
	movq     (%r11), %rdi
	call     print_i64           /* call     print_i64 */
	call     print_nl            /* call     print_nl */
	movl     $1, -6000128(%rbp)  /* mov_l    vr18, $1 */
	movl     -6000168(%rbp), %r10d /* add_l    vr19, vr13, vr18 */
	addl     -6000128(%rbp), %r10d
	movl     %r10d, -6000120(%rbp)
	movl     -6000120(%rbp), %r10d /* mov_l    vr13, vr19 */
	movl     %r10d, -6000168(%rbp)
.L11:
	movl     $250000, -6000112(%rbp) /* mov_l    vr20, $250000 */
	movl     -6000168(%rbp), %r10d /* cmplt_l  vr21, vr13, vr20 */
	cmpl     -6000112(%rbp), %r10d
	setl     %r10b
	movzbl   %r10b, %r11d
	movl     %r11d, -6000104(%rbp)
	cmpl     $0, -6000104(%rbp)  /* cjmp_t   vr21, .L10 */
	jne      .L10
	movl     $0, -6000128(%rbp)  /* mov_l    vr18, $0 */
	movl     -6000128(%rbp), %eax /* mov_l    vr0, vr18 */
	jmp      .Lmain_return       /* jmp      .Lmain_return */
.Lmain_return:
	addq     $6000192, %rsp      /* leave    $6000000 */
	popq     %rbp
	ret                          /* ret       */
