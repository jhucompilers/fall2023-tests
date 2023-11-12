/* variable 'c' allocated vreg 10 */
/* Function 'ctoi' uses 0 bytes of memory and 11 virtual registers */
/* Function 'main' uses 0 bytes of memory and 10 virtual registers */
/* Function 'ctoi' uses 16 total bytes of memory storage for vregs */
/* Function 'ctoi': placing vreg storage at offset -16 from %rbp */
/* Function 'ctoi': 16 bytes of local storage allocated in stack frame */
	.section .text

	.globl ctoi
ctoi:
	pushq    %rbp                /* enter    $0 */
	movq     %rsp, %rbp
	subq     $16, %rsp
	movb     %dil, -16(%rbp)     /* mov_b    vr10, vr1 */
	movb     -16(%rbp), %r10b    /* sconv_bl vr11, vr10 */
	movsbl   %r10b, %r10d
	movl     %r10d, -8(%rbp)
	movl     -8(%rbp), %eax      /* mov_l    vr0, vr11 */
	jmp      .Lctoi_return       /* jmp      .Lctoi_return */
	jmp      .Lctoi_return       /* jmp      .Lctoi_return */
.Lctoi_return:
	addq     $16, %rsp           /* leave    $0 */
	popq     %rbp
	ret                          /* ret       */
/* Function 'main' uses 88 total bytes of memory storage for vregs */
/* Function 'main': placing vreg storage at offset -88 from %rbp */
/* Function 'main': 96 bytes of local storage allocated in stack frame */

	.globl main
main:
	pushq    %rbp                /* enter    $0 */
	movq     %rsp, %rbp
	subq     $96, %rsp
	movb     $72, -88(%rbp)      /* mov_b    vr10, $72 */
	movb     -88(%rbp), %dil     /* mov_b    vr1, vr10 */
	call     ctoi                /* call     ctoi */
	movl     %eax, -80(%rbp)     /* mov_l    vr11, vr0 */
	movl     -80(%rbp), %edi     /* mov_l    vr1, vr11 */
	call     print_i32           /* call     print_i32 */
	call     print_nl            /* call     print_nl */
	movb     $101, -72(%rbp)     /* mov_b    vr12, $101 */
	movb     -72(%rbp), %dil     /* mov_b    vr1, vr12 */
	call     ctoi                /* call     ctoi */
	movl     %eax, -64(%rbp)     /* mov_l    vr13, vr0 */
	movl     -64(%rbp), %edi     /* mov_l    vr1, vr13 */
	call     print_i32           /* call     print_i32 */
	call     print_nl            /* call     print_nl */
	movb     $108, -56(%rbp)     /* mov_b    vr14, $108 */
	movb     -56(%rbp), %dil     /* mov_b    vr1, vr14 */
	call     ctoi                /* call     ctoi */
	movl     %eax, -48(%rbp)     /* mov_l    vr15, vr0 */
	movl     -48(%rbp), %edi     /* mov_l    vr1, vr15 */
	call     print_i32           /* call     print_i32 */
	call     print_nl            /* call     print_nl */
	movb     $108, -40(%rbp)     /* mov_b    vr16, $108 */
	movb     -40(%rbp), %dil     /* mov_b    vr1, vr16 */
	call     ctoi                /* call     ctoi */
	movl     %eax, -32(%rbp)     /* mov_l    vr17, vr0 */
	movl     -32(%rbp), %edi     /* mov_l    vr1, vr17 */
	call     print_i32           /* call     print_i32 */
	call     print_nl            /* call     print_nl */
	movb     $111, -24(%rbp)     /* mov_b    vr18, $111 */
	movb     -24(%rbp), %dil     /* mov_b    vr1, vr18 */
	call     ctoi                /* call     ctoi */
	movl     %eax, -16(%rbp)     /* mov_l    vr19, vr0 */
	movl     -16(%rbp), %edi     /* mov_l    vr1, vr19 */
	call     print_i32           /* call     print_i32 */
	call     print_nl            /* call     print_nl */
	movl     $0, -8(%rbp)        /* mov_l    vr20, $0 */
	movl     -8(%rbp), %eax      /* mov_l    vr0, vr20 */
	jmp      .Lmain_return       /* jmp      .Lmain_return */
	jmp      .Lmain_return       /* jmp      .Lmain_return */
.Lmain_return:
	addq     $96, %rsp           /* leave    $0 */
	popq     %rbp
	ret                          /* ret       */
