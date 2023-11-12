/* variable 'i' allocated vreg 10 */
/* variable 'j' allocated vreg 11 */
/* variable 'n' allocated vreg 12 */
/* variable 'm' allocated 400 bytes of storage at offset 0 */
/* Function 'main' uses 400 bytes of memory and 13 virtual registers */
/* Function 'main': placing memory variables at offset -400 from %rbp */
/* Function 'main' uses 160 total bytes of memory storage for vregs */
/* Function 'main': placing vreg storage at offset -560 from %rbp */
/* Function 'main': 560 bytes of local storage allocated in stack frame */
	.section .text

	.globl main
main:
	pushq    %rbp                /* enter    $400 */
	movq     %rsp, %rbp
	subq     $560, %rsp
	movl     $0, -536(%rbp)      /* mov_l    vr13, $0 */
	movl     -536(%rbp), %r10d   /* mov_l    vr10, vr13 */
	movl     %r10d, -560(%rbp)
	jmp      .L1                 /* jmp      .L1 */
.L0:
	movl     $0, -536(%rbp)      /* mov_l    vr13, $0 */
	movl     -536(%rbp), %r10d   /* mov_l    vr12, vr13 */
	movl     %r10d, -544(%rbp)
	movl     $0, -528(%rbp)      /* mov_l    vr14, $0 */
	movl     -528(%rbp), %r10d   /* mov_l    vr11, vr14 */
	movl     %r10d, -552(%rbp)
	jmp      .L3                 /* jmp      .L3 */
.L2:
	leaq     -400(%rbp), %r10    /* localaddr vr13, $0 */
	movq     %r10, -536(%rbp)
	movl     -560(%rbp), %r10d   /* sconv_lq vr14, vr10 */
	movslq   %r10d, %r10
	movq     %r10, -528(%rbp)
	movq     -528(%rbp), %r10    /* mul_q    vr15, vr14, $40 */
	imulq    $40, %r10
	movq     %r10, -520(%rbp)
	movq     -536(%rbp), %r10    /* add_q    vr16, vr13, vr15 */
	addq     -520(%rbp), %r10
	movq     %r10, -512(%rbp)
	movl     -552(%rbp), %r10d   /* sconv_lq vr17, vr11 */
	movslq   %r10d, %r10
	movq     %r10, -504(%rbp)
	movq     -504(%rbp), %r10    /* mul_q    vr18, vr17, $4 */
	imulq    $4, %r10
	movq     %r10, -496(%rbp)
	movq     -512(%rbp), %r10    /* add_q    vr19, vr16, vr18 */
	addq     -496(%rbp), %r10
	movq     %r10, -488(%rbp)
	movq     -488(%rbp), %r11    /* mov_l    (vr19), vr12 */
	movl     -544(%rbp), %r10d
	movl     %r10d, (%r11)
	movl     -544(%rbp), %r10d   /* add_l    vr20, vr12, vr10 */
	addl     -560(%rbp), %r10d
	movl     %r10d, -480(%rbp)
	movl     -480(%rbp), %r10d   /* mov_l    vr12, vr20 */
	movl     %r10d, -544(%rbp)
	movl     $1, -472(%rbp)      /* mov_l    vr21, $1 */
	movl     -552(%rbp), %r10d   /* add_l    vr22, vr11, vr21 */
	addl     -472(%rbp), %r10d
	movl     %r10d, -464(%rbp)
	movl     -464(%rbp), %r10d   /* mov_l    vr11, vr22 */
	movl     %r10d, -552(%rbp)
.L3:
	movl     $9, -456(%rbp)      /* mov_l    vr23, $9 */
	movl     -552(%rbp), %r10d   /* cmplte_l vr24, vr11, vr23 */
	cmpl     -456(%rbp), %r10d
	setle    %r10b
	movzbl   %r10b, %r11d
	movl     %r11d, -448(%rbp)
	cmpl     $0, -448(%rbp)      /* cjmp_t   vr24, .L2 */
	jne      .L2
	movl     $1, -440(%rbp)      /* mov_l    vr25, $1 */
	movl     -560(%rbp), %r10d   /* add_l    vr26, vr10, vr25 */
	addl     -440(%rbp), %r10d
	movl     %r10d, -432(%rbp)
	movl     -432(%rbp), %r10d   /* mov_l    vr10, vr26 */
	movl     %r10d, -560(%rbp)
.L1:
	movl     $9, -424(%rbp)      /* mov_l    vr27, $9 */
	movl     -560(%rbp), %r10d   /* cmplte_l vr28, vr10, vr27 */
	cmpl     -424(%rbp), %r10d
	setle    %r10b
	movzbl   %r10b, %r11d
	movl     %r11d, -416(%rbp)
	cmpl     $0, -416(%rbp)      /* cjmp_t   vr28, .L0 */
	jne      .L0
	movl     $0, -408(%rbp)      /* mov_l    vr29, $0 */
	movl     -408(%rbp), %r10d   /* mov_l    vr10, vr29 */
	movl     %r10d, -560(%rbp)
	jmp      .L5                 /* jmp      .L5 */
.L4:
	movl     $0, -536(%rbp)      /* mov_l    vr13, $0 */
	movl     -536(%rbp), %r10d   /* mov_l    vr11, vr13 */
	movl     %r10d, -552(%rbp)
	jmp      .L7                 /* jmp      .L7 */
.L6:
	leaq     -400(%rbp), %r10    /* localaddr vr13, $0 */
	movq     %r10, -536(%rbp)
	movl     -560(%rbp), %r10d   /* sconv_lq vr14, vr10 */
	movslq   %r10d, %r10
	movq     %r10, -528(%rbp)
	movq     -528(%rbp), %r10    /* mul_q    vr15, vr14, $40 */
	imulq    $40, %r10
	movq     %r10, -520(%rbp)
	movq     -536(%rbp), %r10    /* add_q    vr16, vr13, vr15 */
	addq     -520(%rbp), %r10
	movq     %r10, -512(%rbp)
	movl     -552(%rbp), %r10d   /* sconv_lq vr17, vr11 */
	movslq   %r10d, %r10
	movq     %r10, -504(%rbp)
	movq     -504(%rbp), %r10    /* mul_q    vr18, vr17, $4 */
	imulq    $4, %r10
	movq     %r10, -496(%rbp)
	movq     -512(%rbp), %r10    /* add_q    vr19, vr16, vr18 */
	addq     -496(%rbp), %r10
	movq     %r10, -488(%rbp)
	movq     -488(%rbp), %r11    /* mov_l    vr1, (vr19) */
	movl     (%r11), %edi
	call     print_i32           /* call     print_i32 */
	call     print_space         /* call     print_space */
	movl     $1, -480(%rbp)      /* mov_l    vr20, $1 */
	movl     -552(%rbp), %r10d   /* add_l    vr21, vr11, vr20 */
	addl     -480(%rbp), %r10d
	movl     %r10d, -472(%rbp)
	movl     -472(%rbp), %r10d   /* mov_l    vr11, vr21 */
	movl     %r10d, -552(%rbp)
.L7:
	movl     $9, -464(%rbp)      /* mov_l    vr22, $9 */
	movl     -552(%rbp), %r10d   /* cmplte_l vr23, vr11, vr22 */
	cmpl     -464(%rbp), %r10d
	setle    %r10b
	movzbl   %r10b, %r11d
	movl     %r11d, -456(%rbp)
	cmpl     $0, -456(%rbp)      /* cjmp_t   vr23, .L6 */
	jne      .L6
	call     print_nl            /* call     print_nl */
	movl     $1, -448(%rbp)      /* mov_l    vr24, $1 */
	movl     -560(%rbp), %r10d   /* add_l    vr25, vr10, vr24 */
	addl     -448(%rbp), %r10d
	movl     %r10d, -440(%rbp)
	movl     -440(%rbp), %r10d   /* mov_l    vr10, vr25 */
	movl     %r10d, -560(%rbp)
.L5:
	movl     $9, -432(%rbp)      /* mov_l    vr26, $9 */
	movl     -560(%rbp), %r10d   /* cmplte_l vr27, vr10, vr26 */
	cmpl     -432(%rbp), %r10d
	setle    %r10b
	movzbl   %r10b, %r11d
	movl     %r11d, -424(%rbp)
	cmpl     $0, -424(%rbp)      /* cjmp_t   vr27, .L4 */
	jne      .L4
	movl     $0, -416(%rbp)      /* mov_l    vr28, $0 */
	movl     -416(%rbp), %eax    /* mov_l    vr0, vr28 */
	jmp      .Lmain_return       /* jmp      .Lmain_return */
	jmp      .Lmain_return       /* jmp      .Lmain_return */
.Lmain_return:
	addq     $560, %rsp          /* leave    $400 */
	popq     %rbp
	ret                          /* ret       */
