/* variable 'arr' allocated vreg 10 */
/* variable 'i' allocated vreg 11 */
/* Function 'read_m10x10' uses 0 bytes of memory and 12 virtual registers */
/* variable 'a' allocated 800 bytes of storage at offset 0 */
/* variable 'b' allocated 800 bytes of storage at offset 800 */
/* variable 'c' allocated 800 bytes of storage at offset 1600 */
/* variable 'M' allocated vreg 10 */
/* variable 'i' allocated vreg 11 */
/* variable 'j' allocated vreg 12 */
/* variable 'k' allocated vreg 13 */
/* variable 'r' allocated vreg 14 */
/* variable 'val' allocated vreg 15 */
/* Function 'main' uses 2400 bytes of memory and 16 virtual registers */
/* Function 'read_m10x10' uses 80 total bytes of memory storage for vregs */
/* Function 'read_m10x10': placing vreg storage at offset -80 from %rbp */
/* Function 'read_m10x10': 80 bytes of local storage allocated in stack frame */
	.section .text

	.globl read_m10x10
read_m10x10:
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
	movl     $100, -16(%rbp)     /* mov_l    vr18, $100 */
	movl     -72(%rbp), %r10d    /* cmplt_l  vr19, vr11, vr18 */
	cmpl     -16(%rbp), %r10d
	setl     %r10b
	movzbl   %r10b, %r11d
	movl     %r11d, -8(%rbp)
	cmpl     $0, -8(%rbp)        /* cjmp_t   vr19, .L0 */
	jne      .L0
.Lread_m10x10_return:
	addq     $80, %rsp           /* leave    $0 */
	popq     %rbp
	ret                          /* ret       */
/* Function 'main': placing memory variables at offset -2400 from %rbp */
/* Function 'main' uses 176 total bytes of memory storage for vregs */
/* Function 'main': placing vreg storage at offset -2576 from %rbp */
/* Function 'main': 2576 bytes of local storage allocated in stack frame */

	.globl main
main:
	pushq    %rbp                /* enter    $2400 */
	movq     %rsp, %rbp
	subq     $2576, %rsp
	movl     $10, -2528(%rbp)    /* mov_l    vr16, $10 */
	movl     -2528(%rbp), %r10d  /* mov_l    vr10, vr16 */
	movl     %r10d, -2576(%rbp)
	leaq     -2400(%rbp), %r10   /* localaddr vr16, $0 */
	movq     %r10, -2528(%rbp)
	movq     -2528(%rbp), %rdi   /* mov_q    vr1, vr16 */
	call     read_m10x10         /* call     read_m10x10 */
	leaq     -1600(%rbp), %r10   /* localaddr vr16, $800 */
	movq     %r10, -2528(%rbp)
	movq     -2528(%rbp), %rdi   /* mov_q    vr1, vr16 */
	call     read_m10x10         /* call     read_m10x10 */
	movl     $0, -2520(%rbp)     /* mov_l    vr17, $0 */
	movl     -2520(%rbp), %r10d  /* mov_l    vr11, vr17 */
	movl     %r10d, -2568(%rbp)
	jmp      .L3                 /* jmp      .L3 */
.L2:
	leaq     -800(%rbp), %r10    /* localaddr vr16, $1600 */
	movq     %r10, -2528(%rbp)
	movl     -2568(%rbp), %r10d  /* sconv_lq vr17, vr11 */
	movslq   %r10d, %r10
	movq     %r10, -2520(%rbp)
	movq     -2520(%rbp), %r10   /* mul_q    vr18, vr17, $8 */
	imulq    $8, %r10
	movq     %r10, -2512(%rbp)
	movq     -2528(%rbp), %r10   /* add_q    vr19, vr16, vr18 */
	addq     -2512(%rbp), %r10
	movq     %r10, -2504(%rbp)
	movq     $0, -2496(%rbp)     /* mov_q    vr20, $0 */
	movq     -2504(%rbp), %r11   /* mov_q    (vr19), vr20 */
	movq     -2496(%rbp), %r10
	movq     %r10, (%r11)
	movl     $1, -2488(%rbp)     /* mov_l    vr21, $1 */
	movl     -2568(%rbp), %r10d  /* add_l    vr22, vr11, vr21 */
	addl     -2488(%rbp), %r10d
	movl     %r10d, -2480(%rbp)
	movl     -2480(%rbp), %r10d  /* mov_l    vr11, vr22 */
	movl     %r10d, -2568(%rbp)
.L3:
	movl     $100, -2472(%rbp)   /* mov_l    vr23, $100 */
	movl     -2568(%rbp), %r10d  /* cmplt_l  vr24, vr11, vr23 */
	cmpl     -2472(%rbp), %r10d
	setl     %r10b
	movzbl   %r10b, %r11d
	movl     %r11d, -2464(%rbp)
	cmpl     $0, -2464(%rbp)     /* cjmp_t   vr24, .L2 */
	jne      .L2
	movl     $0, -2456(%rbp)     /* mov_l    vr25, $0 */
	movl     -2456(%rbp), %r10d  /* mov_l    vr13, vr25 */
	movl     %r10d, -2552(%rbp)
	jmp      .L5                 /* jmp      .L5 */
.L4:
	movl     $0, -2448(%rbp)     /* mov_l    vr26, $0 */
	movl     -2448(%rbp), %r10d  /* mov_l    vr11, vr26 */
	movl     %r10d, -2568(%rbp)
	jmp      .L7                 /* jmp      .L7 */
.L6:
	leaq     -2400(%rbp), %r10   /* localaddr vr16, $0 */
	movq     %r10, -2528(%rbp)
	movl     -2568(%rbp), %r10d  /* mul_l    vr17, vr11, vr10 */
	imull    -2576(%rbp), %r10d
	movl     %r10d, -2520(%rbp)
	movl     -2520(%rbp), %r10d  /* add_l    vr18, vr17, vr13 */
	addl     -2552(%rbp), %r10d
	movl     %r10d, -2512(%rbp)
	movl     -2512(%rbp), %r10d  /* sconv_lq vr19, vr18 */
	movslq   %r10d, %r10
	movq     %r10, -2504(%rbp)
	movq     -2504(%rbp), %r10   /* mul_q    vr20, vr19, $8 */
	imulq    $8, %r10
	movq     %r10, -2496(%rbp)
	movq     -2528(%rbp), %r10   /* add_q    vr21, vr16, vr20 */
	addq     -2496(%rbp), %r10
	movq     %r10, -2488(%rbp)
	movq     -2488(%rbp), %r11   /* mov_q    vr22, (vr21) */
	movq     (%r11), %r10
	movq     %r10, -2480(%rbp)
	movq     -2480(%rbp), %r10   /* mov_q    vr14, vr22 */
	movq     %r10, -2544(%rbp)
	movl     $0, -2472(%rbp)     /* mov_l    vr23, $0 */
	movl     -2472(%rbp), %r10d  /* mov_l    vr12, vr23 */
	movl     %r10d, -2560(%rbp)
	jmp      .L9                 /* jmp      .L9 */
.L8:
	leaq     -800(%rbp), %r10    /* localaddr vr16, $1600 */
	movq     %r10, -2528(%rbp)
	movl     -2568(%rbp), %r10d  /* mul_l    vr17, vr11, vr10 */
	imull    -2576(%rbp), %r10d
	movl     %r10d, -2520(%rbp)
	movl     -2520(%rbp), %r10d  /* add_l    vr18, vr17, vr12 */
	addl     -2560(%rbp), %r10d
	movl     %r10d, -2512(%rbp)
	movl     -2512(%rbp), %r10d  /* sconv_lq vr19, vr18 */
	movslq   %r10d, %r10
	movq     %r10, -2504(%rbp)
	movq     -2504(%rbp), %r10   /* mul_q    vr20, vr19, $8 */
	imulq    $8, %r10
	movq     %r10, -2496(%rbp)
	movq     -2528(%rbp), %r10   /* add_q    vr21, vr16, vr20 */
	addq     -2496(%rbp), %r10
	movq     %r10, -2488(%rbp)
	movq     -2488(%rbp), %r11   /* mov_q    vr22, (vr21) */
	movq     (%r11), %r10
	movq     %r10, -2480(%rbp)
	movq     -2480(%rbp), %r10   /* mov_q    vr15, vr22 */
	movq     %r10, -2536(%rbp)
	leaq     -1600(%rbp), %r10   /* localaddr vr16, $800 */
	movq     %r10, -2528(%rbp)
	movl     -2552(%rbp), %r10d  /* mul_l    vr17, vr13, vr10 */
	imull    -2576(%rbp), %r10d
	movl     %r10d, -2520(%rbp)
	movl     -2520(%rbp), %r10d  /* add_l    vr18, vr17, vr12 */
	addl     -2560(%rbp), %r10d
	movl     %r10d, -2512(%rbp)
	movl     -2512(%rbp), %r10d  /* sconv_lq vr19, vr18 */
	movslq   %r10d, %r10
	movq     %r10, -2504(%rbp)
	movq     -2504(%rbp), %r10   /* mul_q    vr20, vr19, $8 */
	imulq    $8, %r10
	movq     %r10, -2496(%rbp)
	movq     -2528(%rbp), %r10   /* add_q    vr21, vr16, vr20 */
	addq     -2496(%rbp), %r10
	movq     %r10, -2488(%rbp)
	movq     -2488(%rbp), %r11   /* mov_q    vr23, (vr21) */
	movq     (%r11), %r10
	movq     %r10, -2472(%rbp)
	movq     -2544(%rbp), %r10   /* mul_q    vr22, vr14, vr23 */
	imulq    -2472(%rbp), %r10
	movq     %r10, -2480(%rbp)
	movq     -2536(%rbp), %r10   /* add_q    vr24, vr15, vr22 */
	addq     -2480(%rbp), %r10
	movq     %r10, -2464(%rbp)
	movq     -2464(%rbp), %r10   /* mov_q    vr15, vr24 */
	movq     %r10, -2536(%rbp)
	leaq     -800(%rbp), %r10    /* localaddr vr16, $1600 */
	movq     %r10, -2528(%rbp)
	movl     -2568(%rbp), %r10d  /* mul_l    vr17, vr11, vr10 */
	imull    -2576(%rbp), %r10d
	movl     %r10d, -2520(%rbp)
	movl     -2520(%rbp), %r10d  /* add_l    vr18, vr17, vr12 */
	addl     -2560(%rbp), %r10d
	movl     %r10d, -2512(%rbp)
	movl     -2512(%rbp), %r10d  /* sconv_lq vr19, vr18 */
	movslq   %r10d, %r10
	movq     %r10, -2504(%rbp)
	movq     -2504(%rbp), %r10   /* mul_q    vr20, vr19, $8 */
	imulq    $8, %r10
	movq     %r10, -2496(%rbp)
	movq     -2528(%rbp), %r10   /* add_q    vr21, vr16, vr20 */
	addq     -2496(%rbp), %r10
	movq     %r10, -2488(%rbp)
	movq     -2488(%rbp), %r11   /* mov_q    (vr21), vr15 */
	movq     -2536(%rbp), %r10
	movq     %r10, (%r11)
	movl     $1, -2480(%rbp)     /* mov_l    vr22, $1 */
	movl     -2560(%rbp), %r10d  /* add_l    vr23, vr12, vr22 */
	addl     -2480(%rbp), %r10d
	movl     %r10d, -2472(%rbp)
	movl     -2472(%rbp), %r10d  /* mov_l    vr12, vr23 */
	movl     %r10d, -2560(%rbp)
.L9:
	movl     -2560(%rbp), %r10d  /* cmplt_l  vr24, vr12, vr10 */
	cmpl     -2576(%rbp), %r10d
	setl     %r10b
	movzbl   %r10b, %r11d
	movl     %r11d, -2464(%rbp)
	cmpl     $0, -2464(%rbp)     /* cjmp_t   vr24, .L8 */
	jne      .L8
	movl     $1, -2456(%rbp)     /* mov_l    vr25, $1 */
	movl     -2568(%rbp), %r10d  /* add_l    vr26, vr11, vr25 */
	addl     -2456(%rbp), %r10d
	movl     %r10d, -2448(%rbp)
	movl     -2448(%rbp), %r10d  /* mov_l    vr11, vr26 */
	movl     %r10d, -2568(%rbp)
.L7:
	movl     -2568(%rbp), %r10d  /* cmplt_l  vr27, vr11, vr10 */
	cmpl     -2576(%rbp), %r10d
	setl     %r10b
	movzbl   %r10b, %r11d
	movl     %r11d, -2440(%rbp)
	cmpl     $0, -2440(%rbp)     /* cjmp_t   vr27, .L6 */
	jne      .L6
	movl     $1, -2432(%rbp)     /* mov_l    vr28, $1 */
	movl     -2552(%rbp), %r10d  /* add_l    vr29, vr13, vr28 */
	addl     -2432(%rbp), %r10d
	movl     %r10d, -2424(%rbp)
	movl     -2424(%rbp), %r10d  /* mov_l    vr13, vr29 */
	movl     %r10d, -2552(%rbp)
.L5:
	movl     -2552(%rbp), %r10d  /* cmplt_l  vr30, vr13, vr10 */
	cmpl     -2576(%rbp), %r10d
	setl     %r10b
	movzbl   %r10b, %r11d
	movl     %r11d, -2416(%rbp)
	cmpl     $0, -2416(%rbp)     /* cjmp_t   vr30, .L4 */
	jne      .L4
	movl     $0, -2408(%rbp)     /* mov_l    vr31, $0 */
	movl     -2408(%rbp), %r10d  /* mov_l    vr11, vr31 */
	movl     %r10d, -2568(%rbp)
	jmp      .L11                /* jmp      .L11 */
.L10:
	leaq     -800(%rbp), %r10    /* localaddr vr16, $1600 */
	movq     %r10, -2528(%rbp)
	movl     -2568(%rbp), %r10d  /* sconv_lq vr17, vr11 */
	movslq   %r10d, %r10
	movq     %r10, -2520(%rbp)
	movq     -2520(%rbp), %r10   /* mul_q    vr18, vr17, $8 */
	imulq    $8, %r10
	movq     %r10, -2512(%rbp)
	movq     -2528(%rbp), %r10   /* add_q    vr19, vr16, vr18 */
	addq     -2512(%rbp), %r10
	movq     %r10, -2504(%rbp)
	movq     -2504(%rbp), %r11   /* mov_q    vr1, (vr19) */
	movq     (%r11), %rdi
	call     print_i64           /* call     print_i64 */
	call     print_nl            /* call     print_nl */
	movl     $1, -2528(%rbp)     /* mov_l    vr16, $1 */
	movl     -2568(%rbp), %r10d  /* add_l    vr17, vr11, vr16 */
	addl     -2528(%rbp), %r10d
	movl     %r10d, -2520(%rbp)
	movl     -2520(%rbp), %r10d  /* mov_l    vr11, vr17 */
	movl     %r10d, -2568(%rbp)
.L11:
	movl     $100, -2512(%rbp)   /* mov_l    vr18, $100 */
	movl     -2568(%rbp), %r10d  /* cmplt_l  vr19, vr11, vr18 */
	cmpl     -2512(%rbp), %r10d
	setl     %r10b
	movzbl   %r10b, %r11d
	movl     %r11d, -2504(%rbp)
	cmpl     $0, -2504(%rbp)     /* cjmp_t   vr19, .L10 */
	jne      .L10
	movl     $0, -2528(%rbp)     /* mov_l    vr16, $0 */
	movl     -2528(%rbp), %eax   /* mov_l    vr0, vr16 */
	jmp      .Lmain_return       /* jmp      .Lmain_return */
.Lmain_return:
	addq     $2576, %rsp         /* leave    $2400 */
	popq     %rbp
	ret                          /* ret       */
