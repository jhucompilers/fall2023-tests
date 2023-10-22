/* variable 'i' allocated vreg 10 */
/* variable 'j' allocated vreg 11 */
/* variable 'n' allocated vreg 12 */
/* variable 'm' allocated 400 bytes of storage at offset 0 */
/* Function 'main' uses 400 bytes of memory and 13 virtual registers */
/* Function 'main': placing memory variables at offset -400 from %rbp */
/* Function 'main' uses 112 total bytes of memory storage for vregs */
/* Function 'main': placing vreg storage at offset -512 from %rbp */
/* Function 'main': 512 bytes of local storage allocated in stack frame */
	.section .text

	.globl main
main:
	pushq    %rbp                /* enter    $400 */
	movq     %rsp, %rbp
	subq     $512, %rsp
	movl     $0, %eax            /* mov_l    vr0, $0 */
	movl     %eax, -512(%rbp)    /* mov_l    vr10, vr0 */
	jmp      .L1                 /* jmp      .L1 */
.L0:
	movl     $0, -488(%rbp)      /* mov_l    vr13, $0 */
	movl     -488(%rbp), %r10d   /* mov_l    vr12, vr13 */
	movl     %r10d, -496(%rbp)
	movl     $0, -480(%rbp)      /* mov_l    vr14, $0 */
	movl     -480(%rbp), %r10d   /* mov_l    vr11, vr14 */
	movl     %r10d, -504(%rbp)
	jmp      .L3                 /* jmp      .L3 */
.L2:
	leaq     -400(%rbp), %r10    /* localaddr vr13, $0 */
	movq     %r10, -488(%rbp)
	movl     -512(%rbp), %r10d   /* sconv_lq vr14, vr10 */
	movslq   %r10d, %r10
	movq     %r10, -480(%rbp)
	movq     -480(%rbp), %r10    /* mul_q    vr15, vr14, $40 */
	imulq    $40, %r10
	movq     %r10, -472(%rbp)
	movq     -488(%rbp), %r10    /* add_q    vr16, vr13, vr15 */
	addq     -472(%rbp), %r10
	movq     %r10, -464(%rbp)
	movl     -504(%rbp), %r10d   /* sconv_lq vr17, vr11 */
	movslq   %r10d, %r10
	movq     %r10, -456(%rbp)
	movq     -456(%rbp), %r10    /* mul_q    vr18, vr17, $4 */
	imulq    $4, %r10
	movq     %r10, -448(%rbp)
	movq     -464(%rbp), %r10    /* add_q    vr19, vr16, vr18 */
	addq     -448(%rbp), %r10
	movq     %r10, -440(%rbp)
	movq     -440(%rbp), %r11    /* mov_l    (vr19), vr12 */
	movl     -496(%rbp), %r10d
	movl     %r10d, (%r11)
	movl     -496(%rbp), %r10d   /* add_l    vr13, vr12, vr10 */
	addl     -512(%rbp), %r10d
	movl     %r10d, -488(%rbp)
	movl     -488(%rbp), %r10d   /* mov_l    vr12, vr13 */
	movl     %r10d, -496(%rbp)
	movl     $1, -480(%rbp)      /* mov_l    vr14, $1 */
	movl     -504(%rbp), %r10d   /* add_l    vr15, vr11, vr14 */
	addl     -480(%rbp), %r10d
	movl     %r10d, -472(%rbp)
	movl     -472(%rbp), %r10d   /* mov_l    vr11, vr15 */
	movl     %r10d, -504(%rbp)
.L3:
	movl     $9, -464(%rbp)      /* mov_l    vr16, $9 */
	movl     -504(%rbp), %r10d   /* cmplte_l vr17, vr11, vr16 */
	cmpl     -464(%rbp), %r10d
	setle    %r10b
	movzbl   %r10b, %r11d
	movl     %r11d, -456(%rbp)
	cmpl     $0, -456(%rbp)      /* cjmp_t   vr17, .L2 */
	jne      .L2
	movl     $1, -448(%rbp)      /* mov_l    vr18, $1 */
	movl     -512(%rbp), %r10d   /* add_l    vr19, vr10, vr18 */
	addl     -448(%rbp), %r10d
	movl     %r10d, -440(%rbp)
	movl     -440(%rbp), %r10d   /* mov_l    vr10, vr19 */
	movl     %r10d, -512(%rbp)
.L1:
	movl     $9, -432(%rbp)      /* mov_l    vr20, $9 */
	movl     -512(%rbp), %r10d   /* cmplte_l vr21, vr10, vr20 */
	cmpl     -432(%rbp), %r10d
	setle    %r10b
	movzbl   %r10b, %r11d
	movl     %r11d, -424(%rbp)
	cmpl     $0, -424(%rbp)      /* cjmp_t   vr21, .L0 */
	jne      .L0
	movl     $0, -416(%rbp)      /* mov_l    vr22, $0 */
	movl     -416(%rbp), %r10d   /* mov_l    vr10, vr22 */
	movl     %r10d, -512(%rbp)
	jmp      .L5                 /* jmp      .L5 */
.L4:
	movl     $0, -408(%rbp)      /* mov_l    vr23, $0 */
	movl     -408(%rbp), %r10d   /* mov_l    vr11, vr23 */
	movl     %r10d, -504(%rbp)
	jmp      .L7                 /* jmp      .L7 */
.L6:
	leaq     -400(%rbp), %r10    /* localaddr vr13, $0 */
	movq     %r10, -488(%rbp)
	movl     -512(%rbp), %r10d   /* sconv_lq vr14, vr10 */
	movslq   %r10d, %r10
	movq     %r10, -480(%rbp)
	movq     -480(%rbp), %r10    /* mul_q    vr15, vr14, $40 */
	imulq    $40, %r10
	movq     %r10, -472(%rbp)
	movq     -488(%rbp), %r10    /* add_q    vr16, vr13, vr15 */
	addq     -472(%rbp), %r10
	movq     %r10, -464(%rbp)
	movl     -504(%rbp), %r10d   /* sconv_lq vr17, vr11 */
	movslq   %r10d, %r10
	movq     %r10, -456(%rbp)
	movq     -456(%rbp), %r10    /* mul_q    vr18, vr17, $4 */
	imulq    $4, %r10
	movq     %r10, -448(%rbp)
	movq     -464(%rbp), %r10    /* add_q    vr19, vr16, vr18 */
	addq     -448(%rbp), %r10
	movq     %r10, -440(%rbp)
	movq     -440(%rbp), %r11    /* mov_l    vr1, (vr19) */
	movl     (%r11), %edi
	call     print_i32           /* call     print_i32 */
	call     print_space         /* call     print_space */
	movl     $1, -488(%rbp)      /* mov_l    vr13, $1 */
	movl     -504(%rbp), %r10d   /* add_l    vr14, vr11, vr13 */
	addl     -488(%rbp), %r10d
	movl     %r10d, -480(%rbp)
	movl     -480(%rbp), %r10d   /* mov_l    vr11, vr14 */
	movl     %r10d, -504(%rbp)
.L7:
	movl     $9, -472(%rbp)      /* mov_l    vr15, $9 */
	movl     -504(%rbp), %r10d   /* cmplte_l vr16, vr11, vr15 */
	cmpl     -472(%rbp), %r10d
	setle    %r10b
	movzbl   %r10b, %r11d
	movl     %r11d, -464(%rbp)
	cmpl     $0, -464(%rbp)      /* cjmp_t   vr16, .L6 */
	jne      .L6
	call     print_nl            /* call     print_nl */
	movl     $1, -488(%rbp)      /* mov_l    vr13, $1 */
	movl     -512(%rbp), %r10d   /* add_l    vr14, vr10, vr13 */
	addl     -488(%rbp), %r10d
	movl     %r10d, -480(%rbp)
	movl     -480(%rbp), %r10d   /* mov_l    vr10, vr14 */
	movl     %r10d, -512(%rbp)
.L5:
	movl     $9, -472(%rbp)      /* mov_l    vr15, $9 */
	movl     -512(%rbp), %r10d   /* cmplte_l vr16, vr10, vr15 */
	cmpl     -472(%rbp), %r10d
	setle    %r10b
	movzbl   %r10b, %r11d
	movl     %r11d, -464(%rbp)
	cmpl     $0, -464(%rbp)      /* cjmp_t   vr16, .L4 */
	jne      .L4
	movl     $0, -488(%rbp)      /* mov_l    vr13, $0 */
	movl     -488(%rbp), %eax    /* mov_l    vr0, vr13 */
	jmp      .Lmain_return       /* jmp      .Lmain_return */
.Lmain_return:
	addq     $512, %rsp          /* leave    $400 */
	popq     %rbp
	ret                          /* ret       */
