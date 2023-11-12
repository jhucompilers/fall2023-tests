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
	movl     $250000, -16(%rbp)  /* mov_l    vr18, $250000 */
	movl     -72(%rbp), %r10d    /* cmplt_l  vr19, vr11, vr18 */
	cmpl     -16(%rbp), %r10d
	setl     %r10b
	movzbl   %r10b, %r11d
	movl     %r11d, -8(%rbp)
	cmpl     $0, -8(%rbp)        /* cjmp_t   vr19, .L0 */
	jne      .L0
	jmp      .Lread_m500x500_return /* jmp      .Lread_m500x500_return */
.Lread_m500x500_return:
	addq     $80, %rsp           /* leave    $0 */
	popq     %rbp
	ret                          /* ret       */
/* Function 'main': placing memory variables at offset -6000000 from %rbp */
/* Function 'main' uses 312 total bytes of memory storage for vregs */
/* Function 'main': placing vreg storage at offset -6000312 from %rbp */
/* Function 'main': 6000320 bytes of local storage allocated in stack frame */

	.globl main
main:
	pushq    %rbp                /* enter    $6000000 */
	movq     %rsp, %rbp
	subq     $6000320, %rsp
	movl     $500, -6000256(%rbp) /* mov_l    vr18, $500 */
	movl     -6000256(%rbp), %r10d /* mov_l    vr10, vr18 */
	movl     %r10d, -6000312(%rbp)
	movl     $250000, -6000248(%rbp) /* mov_l    vr19, $250000 */
	movl     -6000248(%rbp), %r10d /* mov_l    vr11, vr19 */
	movl     %r10d, -6000304(%rbp)
	leaq     -6000000(%rbp), %r10 /* localaddr vr20, $0 */
	movq     %r10, -6000240(%rbp)
	movq     -6000240(%rbp), %rdi /* mov_q    vr1, vr20 */
	call     read_m500x500       /* call     read_m500x500 */
	leaq     -4000000(%rbp), %r10 /* localaddr vr21, $2000000 */
	movq     %r10, -6000232(%rbp)
	movq     -6000232(%rbp), %rdi /* mov_q    vr1, vr21 */
	call     read_m500x500       /* call     read_m500x500 */
	movl     $0, -6000224(%rbp)  /* mov_l    vr22, $0 */
	movl     -6000224(%rbp), %r10d /* mov_l    vr13, vr22 */
	movl     %r10d, -6000296(%rbp)
	jmp      .L3                 /* jmp      .L3 */
.L2:
	movq     $0, -6000256(%rbp)  /* mov_q    vr18, $0 */
	leaq     -2000000(%rbp), %r10 /* localaddr vr19, $4000000 */
	movq     %r10, -6000248(%rbp)
	movl     -6000296(%rbp), %r10d /* sconv_lq vr20, vr13 */
	movslq   %r10d, %r10
	movq     %r10, -6000240(%rbp)
	movq     -6000240(%rbp), %r10 /* mul_q    vr21, vr20, $8 */
	imulq    $8, %r10
	movq     %r10, -6000232(%rbp)
	movq     -6000248(%rbp), %r10 /* add_q    vr22, vr19, vr21 */
	addq     -6000232(%rbp), %r10
	movq     %r10, -6000224(%rbp)
	movq     -6000224(%rbp), %r11 /* mov_q    (vr22), vr18 */
	movq     -6000256(%rbp), %r10
	movq     %r10, (%r11)
	movl     $1, -6000216(%rbp)  /* mov_l    vr23, $1 */
	movl     -6000296(%rbp), %r10d /* add_l    vr24, vr13, vr23 */
	addl     -6000216(%rbp), %r10d
	movl     %r10d, -6000208(%rbp)
	movl     -6000208(%rbp), %r10d /* mov_l    vr13, vr24 */
	movl     %r10d, -6000296(%rbp)
.L3:
	movl     -6000296(%rbp), %r10d /* cmplt_l  vr25, vr13, vr11 */
	cmpl     -6000304(%rbp), %r10d
	setl     %r10b
	movzbl   %r10b, %r11d
	movl     %r11d, -6000200(%rbp)
	cmpl     $0, -6000200(%rbp)  /* cjmp_t   vr25, .L2 */
	jne      .L2
	movl     $0, -6000192(%rbp)  /* mov_l    vr26, $0 */
	movl     -6000192(%rbp), %r10d /* mov_l    vr15, vr26 */
	movl     %r10d, -6000280(%rbp)
	jmp      .L5                 /* jmp      .L5 */
.L4:
	movl     $0, -6000256(%rbp)  /* mov_l    vr18, $0 */
	movl     -6000256(%rbp), %r10d /* mov_l    vr13, vr18 */
	movl     %r10d, -6000296(%rbp)
	jmp      .L7                 /* jmp      .L7 */
.L6:
	leaq     -6000000(%rbp), %r10 /* localaddr vr18, $0 */
	movq     %r10, -6000256(%rbp)
	movl     -6000296(%rbp), %r10d /* mul_l    vr19, vr13, vr10 */
	imull    -6000312(%rbp), %r10d
	movl     %r10d, -6000248(%rbp)
	movl     -6000248(%rbp), %r10d /* add_l    vr20, vr19, vr15 */
	addl     -6000280(%rbp), %r10d
	movl     %r10d, -6000240(%rbp)
	movl     -6000240(%rbp), %r10d /* sconv_lq vr21, vr20 */
	movslq   %r10d, %r10
	movq     %r10, -6000232(%rbp)
	movq     -6000232(%rbp), %r10 /* mul_q    vr22, vr21, $8 */
	imulq    $8, %r10
	movq     %r10, -6000224(%rbp)
	movq     -6000256(%rbp), %r10 /* add_q    vr23, vr18, vr22 */
	addq     -6000224(%rbp), %r10
	movq     %r10, -6000216(%rbp)
	movq     -6000216(%rbp), %r11 /* mov_q    vr24, (vr23) */
	movq     (%r11), %r10
	movq     %r10, -6000208(%rbp)
	movq     -6000208(%rbp), %r10 /* mov_q    vr16, vr24 */
	movq     %r10, -6000272(%rbp)
	movl     $0, -6000200(%rbp)  /* mov_l    vr25, $0 */
	movl     -6000200(%rbp), %r10d /* mov_l    vr14, vr25 */
	movl     %r10d, -6000288(%rbp)
	jmp      .L9                 /* jmp      .L9 */
.L8:
	leaq     -2000000(%rbp), %r10 /* localaddr vr18, $4000000 */
	movq     %r10, -6000256(%rbp)
	movl     -6000296(%rbp), %r10d /* mul_l    vr19, vr13, vr10 */
	imull    -6000312(%rbp), %r10d
	movl     %r10d, -6000248(%rbp)
	movl     -6000248(%rbp), %r10d /* add_l    vr20, vr19, vr14 */
	addl     -6000288(%rbp), %r10d
	movl     %r10d, -6000240(%rbp)
	movl     -6000240(%rbp), %r10d /* sconv_lq vr21, vr20 */
	movslq   %r10d, %r10
	movq     %r10, -6000232(%rbp)
	movq     -6000232(%rbp), %r10 /* mul_q    vr22, vr21, $8 */
	imulq    $8, %r10
	movq     %r10, -6000224(%rbp)
	movq     -6000256(%rbp), %r10 /* add_q    vr23, vr18, vr22 */
	addq     -6000224(%rbp), %r10
	movq     %r10, -6000216(%rbp)
	movq     -6000216(%rbp), %r11 /* mov_q    vr24, (vr23) */
	movq     (%r11), %r10
	movq     %r10, -6000208(%rbp)
	movq     -6000208(%rbp), %r10 /* mov_q    vr17, vr24 */
	movq     %r10, -6000264(%rbp)
	leaq     -4000000(%rbp), %r10 /* localaddr vr25, $2000000 */
	movq     %r10, -6000200(%rbp)
	movl     -6000280(%rbp), %r10d /* mul_l    vr26, vr15, vr10 */
	imull    -6000312(%rbp), %r10d
	movl     %r10d, -6000192(%rbp)
	movl     -6000192(%rbp), %r10d /* add_l    vr27, vr26, vr14 */
	addl     -6000288(%rbp), %r10d
	movl     %r10d, -6000184(%rbp)
	movl     -6000184(%rbp), %r10d /* sconv_lq vr28, vr27 */
	movslq   %r10d, %r10
	movq     %r10, -6000176(%rbp)
	movq     -6000176(%rbp), %r10 /* mul_q    vr29, vr28, $8 */
	imulq    $8, %r10
	movq     %r10, -6000168(%rbp)
	movq     -6000200(%rbp), %r10 /* add_q    vr30, vr25, vr29 */
	addq     -6000168(%rbp), %r10
	movq     %r10, -6000160(%rbp)
	movq     -6000160(%rbp), %r11 /* mov_q    vr32, (vr30) */
	movq     (%r11), %r10
	movq     %r10, -6000144(%rbp)
	movq     -6000272(%rbp), %r10 /* mul_q    vr31, vr16, vr32 */
	imulq    -6000144(%rbp), %r10
	movq     %r10, -6000152(%rbp)
	movq     -6000264(%rbp), %r10 /* add_q    vr33, vr17, vr31 */
	addq     -6000152(%rbp), %r10
	movq     %r10, -6000136(%rbp)
	movq     -6000136(%rbp), %r10 /* mov_q    vr17, vr33 */
	movq     %r10, -6000264(%rbp)
	leaq     -2000000(%rbp), %r10 /* localaddr vr34, $4000000 */
	movq     %r10, -6000128(%rbp)
	movl     -6000296(%rbp), %r10d /* mul_l    vr35, vr13, vr10 */
	imull    -6000312(%rbp), %r10d
	movl     %r10d, -6000120(%rbp)
	movl     -6000120(%rbp), %r10d /* add_l    vr36, vr35, vr14 */
	addl     -6000288(%rbp), %r10d
	movl     %r10d, -6000112(%rbp)
	movl     -6000112(%rbp), %r10d /* sconv_lq vr37, vr36 */
	movslq   %r10d, %r10
	movq     %r10, -6000104(%rbp)
	movq     -6000104(%rbp), %r10 /* mul_q    vr38, vr37, $8 */
	imulq    $8, %r10
	movq     %r10, -6000096(%rbp)
	movq     -6000128(%rbp), %r10 /* add_q    vr39, vr34, vr38 */
	addq     -6000096(%rbp), %r10
	movq     %r10, -6000088(%rbp)
	movq     -6000088(%rbp), %r11 /* mov_q    (vr39), vr17 */
	movq     -6000264(%rbp), %r10
	movq     %r10, (%r11)
	movl     $1, -6000080(%rbp)  /* mov_l    vr40, $1 */
	movl     -6000288(%rbp), %r10d /* add_l    vr41, vr14, vr40 */
	addl     -6000080(%rbp), %r10d
	movl     %r10d, -6000072(%rbp)
	movl     -6000072(%rbp), %r10d /* mov_l    vr14, vr41 */
	movl     %r10d, -6000288(%rbp)
.L9:
	movl     -6000288(%rbp), %r10d /* cmplt_l  vr42, vr14, vr10 */
	cmpl     -6000312(%rbp), %r10d
	setl     %r10b
	movzbl   %r10b, %r11d
	movl     %r11d, -6000064(%rbp)
	cmpl     $0, -6000064(%rbp)  /* cjmp_t   vr42, .L8 */
	jne      .L8
	movl     $1, -6000056(%rbp)  /* mov_l    vr43, $1 */
	movl     -6000296(%rbp), %r10d /* add_l    vr44, vr13, vr43 */
	addl     -6000056(%rbp), %r10d
	movl     %r10d, -6000048(%rbp)
	movl     -6000048(%rbp), %r10d /* mov_l    vr13, vr44 */
	movl     %r10d, -6000296(%rbp)
.L7:
	movl     -6000296(%rbp), %r10d /* cmplt_l  vr45, vr13, vr10 */
	cmpl     -6000312(%rbp), %r10d
	setl     %r10b
	movzbl   %r10b, %r11d
	movl     %r11d, -6000040(%rbp)
	cmpl     $0, -6000040(%rbp)  /* cjmp_t   vr45, .L6 */
	jne      .L6
	movl     $1, -6000032(%rbp)  /* mov_l    vr46, $1 */
	movl     -6000280(%rbp), %r10d /* add_l    vr47, vr15, vr46 */
	addl     -6000032(%rbp), %r10d
	movl     %r10d, -6000024(%rbp)
	movl     -6000024(%rbp), %r10d /* mov_l    vr15, vr47 */
	movl     %r10d, -6000280(%rbp)
.L5:
	movl     -6000280(%rbp), %r10d /* cmplt_l  vr48, vr15, vr10 */
	cmpl     -6000312(%rbp), %r10d
	setl     %r10b
	movzbl   %r10b, %r11d
	movl     %r11d, -6000016(%rbp)
	cmpl     $0, -6000016(%rbp)  /* cjmp_t   vr48, .L4 */
	jne      .L4
	movl     $0, -6000008(%rbp)  /* mov_l    vr49, $0 */
	movl     -6000008(%rbp), %r10d /* mov_l    vr13, vr49 */
	movl     %r10d, -6000296(%rbp)
	jmp      .L11                /* jmp      .L11 */
.L10:
	leaq     -2000000(%rbp), %r10 /* localaddr vr18, $4000000 */
	movq     %r10, -6000256(%rbp)
	movl     -6000296(%rbp), %r10d /* sconv_lq vr19, vr13 */
	movslq   %r10d, %r10
	movq     %r10, -6000248(%rbp)
	movq     -6000248(%rbp), %r10 /* mul_q    vr20, vr19, $8 */
	imulq    $8, %r10
	movq     %r10, -6000240(%rbp)
	movq     -6000256(%rbp), %r10 /* add_q    vr21, vr18, vr20 */
	addq     -6000240(%rbp), %r10
	movq     %r10, -6000232(%rbp)
	movq     -6000232(%rbp), %r11 /* mov_q    vr1, (vr21) */
	movq     (%r11), %rdi
	call     print_i64           /* call     print_i64 */
	call     print_nl            /* call     print_nl */
	movl     $1, -6000224(%rbp)  /* mov_l    vr22, $1 */
	movl     -6000296(%rbp), %r10d /* add_l    vr23, vr13, vr22 */
	addl     -6000224(%rbp), %r10d
	movl     %r10d, -6000216(%rbp)
	movl     -6000216(%rbp), %r10d /* mov_l    vr13, vr23 */
	movl     %r10d, -6000296(%rbp)
.L11:
	movl     $250000, -6000208(%rbp) /* mov_l    vr24, $250000 */
	movl     -6000296(%rbp), %r10d /* cmplt_l  vr25, vr13, vr24 */
	cmpl     -6000208(%rbp), %r10d
	setl     %r10b
	movzbl   %r10b, %r11d
	movl     %r11d, -6000200(%rbp)
	cmpl     $0, -6000200(%rbp)  /* cjmp_t   vr25, .L10 */
	jne      .L10
	movl     $0, -6000192(%rbp)  /* mov_l    vr26, $0 */
	movl     -6000192(%rbp), %eax /* mov_l    vr0, vr26 */
	jmp      .Lmain_return       /* jmp      .Lmain_return */
	jmp      .Lmain_return       /* jmp      .Lmain_return */
.Lmain_return:
	addq     $6000320, %rsp      /* leave    $6000000 */
	popq     %rbp
	ret                          /* ret       */
