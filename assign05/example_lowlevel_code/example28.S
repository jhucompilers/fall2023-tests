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
	movl     $0, -64(%rbp)       /* mov_l    vr12, $0 */
	movl     -64(%rbp), %r10d    /* mov_l    vr11, vr12 */
	movl     %r10d, -72(%rbp)
	jmp      .L1                 /* jmp      .L1 */
.L0:
	call     read_i64            /* call     read_i64 */
	movq     %rax, -64(%rbp)     /* mov_q    vr12, vr0 */
	movl     -72(%rbp), %r10d    /* sconv_lq vr13, vr11 */
	movslq   %r10d, %r10
	movq     %r10, -56(%rbp)
	movq     -56(%rbp), %r10     /* mul_q    vr14, vr13, $8 */
	imulq    $8, %r10
	movq     %r10, -48(%rbp)
	movq     -80(%rbp), %r10     /* add_q    vr15, vr10, vr14 */
	addq     -48(%rbp), %r10
	movq     %r10, -40(%rbp)
	movq     -40(%rbp), %r11     /* mov_q    (vr15), vr12 */
	movq     -64(%rbp), %r10
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
	jmp      .Lread_m10x10_return /* jmp      .Lread_m10x10_return */
.Lread_m10x10_return:
	addq     $80, %rsp           /* leave    $0 */
	popq     %rbp
	ret                          /* ret       */
/* Function 'main': placing memory variables at offset -2400 from %rbp */
/* Function 'main' uses 304 total bytes of memory storage for vregs */
/* Function 'main': placing vreg storage at offset -2704 from %rbp */
/* Function 'main': 2704 bytes of local storage allocated in stack frame */

	.globl main
main:
	pushq    %rbp                /* enter    $2400 */
	movq     %rsp, %rbp
	subq     $2704, %rsp
	movl     $10, -2656(%rbp)    /* mov_l    vr16, $10 */
	movl     -2656(%rbp), %r10d  /* mov_l    vr10, vr16 */
	movl     %r10d, -2704(%rbp)
	leaq     -2400(%rbp), %r10   /* localaddr vr17, $0 */
	movq     %r10, -2648(%rbp)
	movq     -2648(%rbp), %rdi   /* mov_q    vr1, vr17 */
	call     read_m10x10         /* call     read_m10x10 */
	leaq     -1600(%rbp), %r10   /* localaddr vr18, $800 */
	movq     %r10, -2640(%rbp)
	movq     -2640(%rbp), %rdi   /* mov_q    vr1, vr18 */
	call     read_m10x10         /* call     read_m10x10 */
	movl     $0, -2632(%rbp)     /* mov_l    vr19, $0 */
	movl     -2632(%rbp), %r10d  /* mov_l    vr11, vr19 */
	movl     %r10d, -2696(%rbp)
	jmp      .L3                 /* jmp      .L3 */
.L2:
	movq     $0, -2656(%rbp)     /* mov_q    vr16, $0 */
	leaq     -800(%rbp), %r10    /* localaddr vr17, $1600 */
	movq     %r10, -2648(%rbp)
	movl     -2696(%rbp), %r10d  /* sconv_lq vr18, vr11 */
	movslq   %r10d, %r10
	movq     %r10, -2640(%rbp)
	movq     -2640(%rbp), %r10   /* mul_q    vr19, vr18, $8 */
	imulq    $8, %r10
	movq     %r10, -2632(%rbp)
	movq     -2648(%rbp), %r10   /* add_q    vr20, vr17, vr19 */
	addq     -2632(%rbp), %r10
	movq     %r10, -2624(%rbp)
	movq     -2624(%rbp), %r11   /* mov_q    (vr20), vr16 */
	movq     -2656(%rbp), %r10
	movq     %r10, (%r11)
	movl     $1, -2616(%rbp)     /* mov_l    vr21, $1 */
	movl     -2696(%rbp), %r10d  /* add_l    vr22, vr11, vr21 */
	addl     -2616(%rbp), %r10d
	movl     %r10d, -2608(%rbp)
	movl     -2608(%rbp), %r10d  /* mov_l    vr11, vr22 */
	movl     %r10d, -2696(%rbp)
.L3:
	movl     $100, -2600(%rbp)   /* mov_l    vr23, $100 */
	movl     -2696(%rbp), %r10d  /* cmplt_l  vr24, vr11, vr23 */
	cmpl     -2600(%rbp), %r10d
	setl     %r10b
	movzbl   %r10b, %r11d
	movl     %r11d, -2592(%rbp)
	cmpl     $0, -2592(%rbp)     /* cjmp_t   vr24, .L2 */
	jne      .L2
	movl     $0, -2584(%rbp)     /* mov_l    vr25, $0 */
	movl     -2584(%rbp), %r10d  /* mov_l    vr13, vr25 */
	movl     %r10d, -2680(%rbp)
	jmp      .L5                 /* jmp      .L5 */
.L4:
	movl     $0, -2656(%rbp)     /* mov_l    vr16, $0 */
	movl     -2656(%rbp), %r10d  /* mov_l    vr11, vr16 */
	movl     %r10d, -2696(%rbp)
	jmp      .L7                 /* jmp      .L7 */
.L6:
	leaq     -2400(%rbp), %r10   /* localaddr vr16, $0 */
	movq     %r10, -2656(%rbp)
	movl     -2696(%rbp), %r10d  /* mul_l    vr17, vr11, vr10 */
	imull    -2704(%rbp), %r10d
	movl     %r10d, -2648(%rbp)
	movl     -2648(%rbp), %r10d  /* add_l    vr18, vr17, vr13 */
	addl     -2680(%rbp), %r10d
	movl     %r10d, -2640(%rbp)
	movl     -2640(%rbp), %r10d  /* sconv_lq vr19, vr18 */
	movslq   %r10d, %r10
	movq     %r10, -2632(%rbp)
	movq     -2632(%rbp), %r10   /* mul_q    vr20, vr19, $8 */
	imulq    $8, %r10
	movq     %r10, -2624(%rbp)
	movq     -2656(%rbp), %r10   /* add_q    vr21, vr16, vr20 */
	addq     -2624(%rbp), %r10
	movq     %r10, -2616(%rbp)
	movq     -2616(%rbp), %r11   /* mov_q    vr22, (vr21) */
	movq     (%r11), %r10
	movq     %r10, -2608(%rbp)
	movq     -2608(%rbp), %r10   /* mov_q    vr14, vr22 */
	movq     %r10, -2672(%rbp)
	movl     $0, -2600(%rbp)     /* mov_l    vr23, $0 */
	movl     -2600(%rbp), %r10d  /* mov_l    vr12, vr23 */
	movl     %r10d, -2688(%rbp)
	jmp      .L9                 /* jmp      .L9 */
.L8:
	leaq     -800(%rbp), %r10    /* localaddr vr16, $1600 */
	movq     %r10, -2656(%rbp)
	movl     -2696(%rbp), %r10d  /* mul_l    vr17, vr11, vr10 */
	imull    -2704(%rbp), %r10d
	movl     %r10d, -2648(%rbp)
	movl     -2648(%rbp), %r10d  /* add_l    vr18, vr17, vr12 */
	addl     -2688(%rbp), %r10d
	movl     %r10d, -2640(%rbp)
	movl     -2640(%rbp), %r10d  /* sconv_lq vr19, vr18 */
	movslq   %r10d, %r10
	movq     %r10, -2632(%rbp)
	movq     -2632(%rbp), %r10   /* mul_q    vr20, vr19, $8 */
	imulq    $8, %r10
	movq     %r10, -2624(%rbp)
	movq     -2656(%rbp), %r10   /* add_q    vr21, vr16, vr20 */
	addq     -2624(%rbp), %r10
	movq     %r10, -2616(%rbp)
	movq     -2616(%rbp), %r11   /* mov_q    vr22, (vr21) */
	movq     (%r11), %r10
	movq     %r10, -2608(%rbp)
	movq     -2608(%rbp), %r10   /* mov_q    vr15, vr22 */
	movq     %r10, -2664(%rbp)
	leaq     -1600(%rbp), %r10   /* localaddr vr23, $800 */
	movq     %r10, -2600(%rbp)
	movl     -2680(%rbp), %r10d  /* mul_l    vr24, vr13, vr10 */
	imull    -2704(%rbp), %r10d
	movl     %r10d, -2592(%rbp)
	movl     -2592(%rbp), %r10d  /* add_l    vr25, vr24, vr12 */
	addl     -2688(%rbp), %r10d
	movl     %r10d, -2584(%rbp)
	movl     -2584(%rbp), %r10d  /* sconv_lq vr26, vr25 */
	movslq   %r10d, %r10
	movq     %r10, -2576(%rbp)
	movq     -2576(%rbp), %r10   /* mul_q    vr27, vr26, $8 */
	imulq    $8, %r10
	movq     %r10, -2568(%rbp)
	movq     -2600(%rbp), %r10   /* add_q    vr28, vr23, vr27 */
	addq     -2568(%rbp), %r10
	movq     %r10, -2560(%rbp)
	movq     -2560(%rbp), %r11   /* mov_q    vr30, (vr28) */
	movq     (%r11), %r10
	movq     %r10, -2544(%rbp)
	movq     -2672(%rbp), %r10   /* mul_q    vr29, vr14, vr30 */
	imulq    -2544(%rbp), %r10
	movq     %r10, -2552(%rbp)
	movq     -2664(%rbp), %r10   /* add_q    vr31, vr15, vr29 */
	addq     -2552(%rbp), %r10
	movq     %r10, -2536(%rbp)
	movq     -2536(%rbp), %r10   /* mov_q    vr15, vr31 */
	movq     %r10, -2664(%rbp)
	leaq     -800(%rbp), %r10    /* localaddr vr32, $1600 */
	movq     %r10, -2528(%rbp)
	movl     -2696(%rbp), %r10d  /* mul_l    vr33, vr11, vr10 */
	imull    -2704(%rbp), %r10d
	movl     %r10d, -2520(%rbp)
	movl     -2520(%rbp), %r10d  /* add_l    vr34, vr33, vr12 */
	addl     -2688(%rbp), %r10d
	movl     %r10d, -2512(%rbp)
	movl     -2512(%rbp), %r10d  /* sconv_lq vr35, vr34 */
	movslq   %r10d, %r10
	movq     %r10, -2504(%rbp)
	movq     -2504(%rbp), %r10   /* mul_q    vr36, vr35, $8 */
	imulq    $8, %r10
	movq     %r10, -2496(%rbp)
	movq     -2528(%rbp), %r10   /* add_q    vr37, vr32, vr36 */
	addq     -2496(%rbp), %r10
	movq     %r10, -2488(%rbp)
	movq     -2488(%rbp), %r11   /* mov_q    (vr37), vr15 */
	movq     -2664(%rbp), %r10
	movq     %r10, (%r11)
	movl     $1, -2480(%rbp)     /* mov_l    vr38, $1 */
	movl     -2688(%rbp), %r10d  /* add_l    vr39, vr12, vr38 */
	addl     -2480(%rbp), %r10d
	movl     %r10d, -2472(%rbp)
	movl     -2472(%rbp), %r10d  /* mov_l    vr12, vr39 */
	movl     %r10d, -2688(%rbp)
.L9:
	movl     -2688(%rbp), %r10d  /* cmplt_l  vr40, vr12, vr10 */
	cmpl     -2704(%rbp), %r10d
	setl     %r10b
	movzbl   %r10b, %r11d
	movl     %r11d, -2464(%rbp)
	cmpl     $0, -2464(%rbp)     /* cjmp_t   vr40, .L8 */
	jne      .L8
	movl     $1, -2456(%rbp)     /* mov_l    vr41, $1 */
	movl     -2696(%rbp), %r10d  /* add_l    vr42, vr11, vr41 */
	addl     -2456(%rbp), %r10d
	movl     %r10d, -2448(%rbp)
	movl     -2448(%rbp), %r10d  /* mov_l    vr11, vr42 */
	movl     %r10d, -2696(%rbp)
.L7:
	movl     -2696(%rbp), %r10d  /* cmplt_l  vr43, vr11, vr10 */
	cmpl     -2704(%rbp), %r10d
	setl     %r10b
	movzbl   %r10b, %r11d
	movl     %r11d, -2440(%rbp)
	cmpl     $0, -2440(%rbp)     /* cjmp_t   vr43, .L6 */
	jne      .L6
	movl     $1, -2432(%rbp)     /* mov_l    vr44, $1 */
	movl     -2680(%rbp), %r10d  /* add_l    vr45, vr13, vr44 */
	addl     -2432(%rbp), %r10d
	movl     %r10d, -2424(%rbp)
	movl     -2424(%rbp), %r10d  /* mov_l    vr13, vr45 */
	movl     %r10d, -2680(%rbp)
.L5:
	movl     -2680(%rbp), %r10d  /* cmplt_l  vr46, vr13, vr10 */
	cmpl     -2704(%rbp), %r10d
	setl     %r10b
	movzbl   %r10b, %r11d
	movl     %r11d, -2416(%rbp)
	cmpl     $0, -2416(%rbp)     /* cjmp_t   vr46, .L4 */
	jne      .L4
	movl     $0, -2408(%rbp)     /* mov_l    vr47, $0 */
	movl     -2408(%rbp), %r10d  /* mov_l    vr11, vr47 */
	movl     %r10d, -2696(%rbp)
	jmp      .L11                /* jmp      .L11 */
.L10:
	leaq     -800(%rbp), %r10    /* localaddr vr16, $1600 */
	movq     %r10, -2656(%rbp)
	movl     -2696(%rbp), %r10d  /* sconv_lq vr17, vr11 */
	movslq   %r10d, %r10
	movq     %r10, -2648(%rbp)
	movq     -2648(%rbp), %r10   /* mul_q    vr18, vr17, $8 */
	imulq    $8, %r10
	movq     %r10, -2640(%rbp)
	movq     -2656(%rbp), %r10   /* add_q    vr19, vr16, vr18 */
	addq     -2640(%rbp), %r10
	movq     %r10, -2632(%rbp)
	movq     -2632(%rbp), %r11   /* mov_q    vr1, (vr19) */
	movq     (%r11), %rdi
	call     print_i64           /* call     print_i64 */
	call     print_nl            /* call     print_nl */
	movl     $1, -2624(%rbp)     /* mov_l    vr20, $1 */
	movl     -2696(%rbp), %r10d  /* add_l    vr21, vr11, vr20 */
	addl     -2624(%rbp), %r10d
	movl     %r10d, -2616(%rbp)
	movl     -2616(%rbp), %r10d  /* mov_l    vr11, vr21 */
	movl     %r10d, -2696(%rbp)
.L11:
	movl     $100, -2608(%rbp)   /* mov_l    vr22, $100 */
	movl     -2696(%rbp), %r10d  /* cmplt_l  vr23, vr11, vr22 */
	cmpl     -2608(%rbp), %r10d
	setl     %r10b
	movzbl   %r10b, %r11d
	movl     %r11d, -2600(%rbp)
	cmpl     $0, -2600(%rbp)     /* cjmp_t   vr23, .L10 */
	jne      .L10
	movl     $0, -2592(%rbp)     /* mov_l    vr24, $0 */
	movl     -2592(%rbp), %eax   /* mov_l    vr0, vr24 */
	jmp      .Lmain_return       /* jmp      .Lmain_return */
	jmp      .Lmain_return       /* jmp      .Lmain_return */
.Lmain_return:
	addq     $2704, %rsp         /* leave    $2400 */
	popq     %rbp
	ret                          /* ret       */
