/* variable 'p' allocated 24 bytes of storage at offset 0 */
/* variable 's' allocated vreg 10 */
/* Function 'main' uses 24 bytes of memory and 11 virtual registers */
/* Function 'main': placing memory variables at offset -24 from %rbp */
/* Function 'main' uses 480 total bytes of memory storage for vregs */
/* Function 'main': placing vreg storage at offset -504 from %rbp */
/* Function 'main': 512 bytes of local storage allocated in stack frame */
	.section .text

	.globl main
main:
	pushq    %rbp                /* enter    $24 */
	movq     %rsp, %rbp
	subq     $512, %rsp
	movb     $65, -496(%rbp)     /* mov_b    vr11, $65 */
	leaq     -24(%rbp), %r10     /* localaddr vr12, $0 */
	movq     %r10, -488(%rbp)
	movq     $0, -480(%rbp)      /* mov_q    vr13, $0 */
	movq     -488(%rbp), %r10    /* add_q    vr14, vr12, vr13 */
	addq     -480(%rbp), %r10
	movq     %r10, -472(%rbp)
	movl     $0, -464(%rbp)      /* mov_l    vr15, $0 */
	movl     -464(%rbp), %r10d   /* sconv_lq vr16, vr15 */
	movslq   %r10d, %r10
	movq     %r10, -456(%rbp)
	movq     -456(%rbp), %r10    /* mul_q    vr17, vr16, $1 */
	imulq    $1, %r10
	movq     %r10, -448(%rbp)
	movq     -472(%rbp), %r10    /* add_q    vr18, vr14, vr17 */
	addq     -448(%rbp), %r10
	movq     %r10, -440(%rbp)
	movq     -440(%rbp), %r11    /* mov_b    (vr18), vr11 */
	movb     -496(%rbp), %r10b
	movb     %r10b, (%r11)
	movb     $108, -432(%rbp)    /* mov_b    vr19, $108 */
	leaq     -24(%rbp), %r10     /* localaddr vr20, $0 */
	movq     %r10, -424(%rbp)
	movq     $0, -416(%rbp)      /* mov_q    vr21, $0 */
	movq     -424(%rbp), %r10    /* add_q    vr22, vr20, vr21 */
	addq     -416(%rbp), %r10
	movq     %r10, -408(%rbp)
	movl     $1, -400(%rbp)      /* mov_l    vr23, $1 */
	movl     -400(%rbp), %r10d   /* sconv_lq vr24, vr23 */
	movslq   %r10d, %r10
	movq     %r10, -392(%rbp)
	movq     -392(%rbp), %r10    /* mul_q    vr25, vr24, $1 */
	imulq    $1, %r10
	movq     %r10, -384(%rbp)
	movq     -408(%rbp), %r10    /* add_q    vr26, vr22, vr25 */
	addq     -384(%rbp), %r10
	movq     %r10, -376(%rbp)
	movq     -376(%rbp), %r11    /* mov_b    (vr26), vr19 */
	movb     -432(%rbp), %r10b
	movb     %r10b, (%r11)
	movb     $105, -368(%rbp)    /* mov_b    vr27, $105 */
	leaq     -24(%rbp), %r10     /* localaddr vr28, $0 */
	movq     %r10, -360(%rbp)
	movq     $0, -352(%rbp)      /* mov_q    vr29, $0 */
	movq     -360(%rbp), %r10    /* add_q    vr30, vr28, vr29 */
	addq     -352(%rbp), %r10
	movq     %r10, -344(%rbp)
	movl     $2, -336(%rbp)      /* mov_l    vr31, $2 */
	movl     -336(%rbp), %r10d   /* sconv_lq vr32, vr31 */
	movslq   %r10d, %r10
	movq     %r10, -328(%rbp)
	movq     -328(%rbp), %r10    /* mul_q    vr33, vr32, $1 */
	imulq    $1, %r10
	movq     %r10, -320(%rbp)
	movq     -344(%rbp), %r10    /* add_q    vr34, vr30, vr33 */
	addq     -320(%rbp), %r10
	movq     %r10, -312(%rbp)
	movq     -312(%rbp), %r11    /* mov_b    (vr34), vr27 */
	movb     -368(%rbp), %r10b
	movb     %r10b, (%r11)
	movb     $99, -304(%rbp)     /* mov_b    vr35, $99 */
	leaq     -24(%rbp), %r10     /* localaddr vr36, $0 */
	movq     %r10, -296(%rbp)
	movq     $0, -288(%rbp)      /* mov_q    vr37, $0 */
	movq     -296(%rbp), %r10    /* add_q    vr38, vr36, vr37 */
	addq     -288(%rbp), %r10
	movq     %r10, -280(%rbp)
	movl     $3, -272(%rbp)      /* mov_l    vr39, $3 */
	movl     -272(%rbp), %r10d   /* sconv_lq vr40, vr39 */
	movslq   %r10d, %r10
	movq     %r10, -264(%rbp)
	movq     -264(%rbp), %r10    /* mul_q    vr41, vr40, $1 */
	imulq    $1, %r10
	movq     %r10, -256(%rbp)
	movq     -280(%rbp), %r10    /* add_q    vr42, vr38, vr41 */
	addq     -256(%rbp), %r10
	movq     %r10, -248(%rbp)
	movq     -248(%rbp), %r11    /* mov_b    (vr42), vr35 */
	movb     -304(%rbp), %r10b
	movb     %r10b, (%r11)
	movb     $101, -240(%rbp)    /* mov_b    vr43, $101 */
	leaq     -24(%rbp), %r10     /* localaddr vr44, $0 */
	movq     %r10, -232(%rbp)
	movq     $0, -224(%rbp)      /* mov_q    vr45, $0 */
	movq     -232(%rbp), %r10    /* add_q    vr46, vr44, vr45 */
	addq     -224(%rbp), %r10
	movq     %r10, -216(%rbp)
	movl     $4, -208(%rbp)      /* mov_l    vr47, $4 */
	movl     -208(%rbp), %r10d   /* sconv_lq vr48, vr47 */
	movslq   %r10d, %r10
	movq     %r10, -200(%rbp)
	movq     -200(%rbp), %r10    /* mul_q    vr49, vr48, $1 */
	imulq    $1, %r10
	movq     %r10, -192(%rbp)
	movq     -216(%rbp), %r10    /* add_q    vr50, vr46, vr49 */
	addq     -192(%rbp), %r10
	movq     %r10, -184(%rbp)
	movq     -184(%rbp), %r11    /* mov_b    (vr50), vr43 */
	movb     -240(%rbp), %r10b
	movb     %r10b, (%r11)
	movl     $0, -176(%rbp)      /* mov_l    vr51, $0 */
	leaq     -24(%rbp), %r10     /* localaddr vr52, $0 */
	movq     %r10, -168(%rbp)
	movq     $0, -160(%rbp)      /* mov_q    vr53, $0 */
	movq     -168(%rbp), %r10    /* add_q    vr54, vr52, vr53 */
	addq     -160(%rbp), %r10
	movq     %r10, -152(%rbp)
	movl     $5, -144(%rbp)      /* mov_l    vr55, $5 */
	movl     -144(%rbp), %r10d   /* sconv_lq vr56, vr55 */
	movslq   %r10d, %r10
	movq     %r10, -136(%rbp)
	movq     -136(%rbp), %r10    /* mul_q    vr57, vr56, $1 */
	imulq    $1, %r10
	movq     %r10, -128(%rbp)
	movq     -152(%rbp), %r10    /* add_q    vr58, vr54, vr57 */
	addq     -128(%rbp), %r10
	movq     %r10, -120(%rbp)
	movq     -120(%rbp), %r11    /* mov_b    (vr58), vr51 */
	movb     -176(%rbp), %r10b
	movb     %r10b, (%r11)
	movl     $43, -112(%rbp)     /* mov_l    vr59, $43 */
	leaq     -24(%rbp), %r10     /* localaddr vr60, $0 */
	movq     %r10, -104(%rbp)
	movq     $20, -96(%rbp)      /* mov_q    vr61, $20 */
	movq     -104(%rbp), %r10    /* add_q    vr62, vr60, vr61 */
	addq     -96(%rbp), %r10
	movq     %r10, -88(%rbp)
	movq     -88(%rbp), %r11     /* mov_l    (vr62), vr59 */
	movl     -112(%rbp), %r10d
	movl     %r10d, (%r11)
	leaq     -24(%rbp), %r10     /* localaddr vr63, $0 */
	movq     %r10, -80(%rbp)
	movq     $0, -72(%rbp)       /* mov_q    vr64, $0 */
	movq     -80(%rbp), %r10     /* add_q    vr65, vr63, vr64 */
	addq     -72(%rbp), %r10
	movq     %r10, -64(%rbp)
	movq     -64(%rbp), %r10     /* mov_q    vr10, vr65 */
	movq     %r10, -504(%rbp)
	movq     -504(%rbp), %rdi    /* mov_q    vr1, vr10 */
	call     print_str           /* call     print_str */
	call     print_nl            /* call     print_nl */
	leaq     -24(%rbp), %r10     /* localaddr vr66, $0 */
	movq     %r10, -56(%rbp)
	movq     $20, -48(%rbp)      /* mov_q    vr67, $20 */
	movq     -56(%rbp), %r10     /* add_q    vr68, vr66, vr67 */
	addq     -48(%rbp), %r10
	movq     %r10, -40(%rbp)
	movq     -40(%rbp), %r11     /* mov_l    vr1, (vr68) */
	movl     (%r11), %edi
	call     print_i32           /* call     print_i32 */
	call     print_nl            /* call     print_nl */
	movl     $0, -32(%rbp)       /* mov_l    vr69, $0 */
	movl     -32(%rbp), %eax     /* mov_l    vr0, vr69 */
	jmp      .Lmain_return       /* jmp      .Lmain_return */
	jmp      .Lmain_return       /* jmp      .Lmain_return */
.Lmain_return:
	addq     $512, %rsp          /* leave    $24 */
	popq     %rbp
	ret                          /* ret       */
