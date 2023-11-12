/* variable 'n' allocated vreg 10 */
/* variable 'a' allocated vreg 11 */
/* variable 'b' allocated vreg 12 */
/* variable 'c' allocated vreg 13 */
/* variable 'i' allocated vreg 14 */
/* Function 'fib' uses 0 bytes of memory and 15 virtual registers */
/* variable 'n' allocated vreg 10 */
/* Function 'main' uses 0 bytes of memory and 11 virtual registers */
/* Function 'fib' uses 80 total bytes of memory storage for vregs */
/* Function 'fib': placing vreg storage at offset -80 from %rbp */
/* Function 'fib': 80 bytes of local storage allocated in stack frame */
	.section .text

	.globl fib
fib:
	pushq    %rbp                /* enter    $0 */
	movq     %rsp, %rbp
	subq     $80, %rsp
	movl     %edi, -80(%rbp)     /* mov_l    vr10, vr1 */
	movl     $1, -40(%rbp)       /* mov_l    vr15, $1 */
	movl     -80(%rbp), %r10d    /* cmplte_l vr16, vr10, vr15 */
	cmpl     -40(%rbp), %r10d
	setle    %r10b
	movzbl   %r10b, %r11d
	movl     %r11d, -32(%rbp)
	cmpl     $0, -32(%rbp)       /* cjmp_f   vr16, .L0 */
	je       .L0
	movl     -80(%rbp), %eax     /* mov_l    vr0, vr10 */
	jmp      .Lfib_return        /* jmp      .Lfib_return */
.L0:
	movl     $0, -24(%rbp)       /* mov_l    vr17, $0 */
	movl     -24(%rbp), %r10d    /* mov_l    vr11, vr17 */
	movl     %r10d, -72(%rbp)
	movl     $1, -16(%rbp)       /* mov_l    vr18, $1 */
	movl     -16(%rbp), %r10d    /* mov_l    vr12, vr18 */
	movl     %r10d, -64(%rbp)
	movl     $2, -8(%rbp)        /* mov_l    vr19, $2 */
	movl     -8(%rbp), %r10d     /* mov_l    vr14, vr19 */
	movl     %r10d, -48(%rbp)
	jmp      .L2                 /* jmp      .L2 */
.L1:
	movl     -72(%rbp), %r10d    /* add_l    vr15, vr11, vr12 */
	addl     -64(%rbp), %r10d
	movl     %r10d, -40(%rbp)
	movl     -40(%rbp), %r10d    /* mov_l    vr13, vr15 */
	movl     %r10d, -56(%rbp)
	movl     -64(%rbp), %r10d    /* mov_l    vr11, vr12 */
	movl     %r10d, -72(%rbp)
	movl     -56(%rbp), %r10d    /* mov_l    vr12, vr13 */
	movl     %r10d, -64(%rbp)
	movl     $1, -32(%rbp)       /* mov_l    vr16, $1 */
	movl     -48(%rbp), %r10d    /* add_l    vr17, vr14, vr16 */
	addl     -32(%rbp), %r10d
	movl     %r10d, -24(%rbp)
	movl     -24(%rbp), %r10d    /* mov_l    vr14, vr17 */
	movl     %r10d, -48(%rbp)
.L2:
	movl     -48(%rbp), %r10d    /* cmplte_l vr18, vr14, vr10 */
	cmpl     -80(%rbp), %r10d
	setle    %r10b
	movzbl   %r10b, %r11d
	movl     %r11d, -16(%rbp)
	cmpl     $0, -16(%rbp)       /* cjmp_t   vr18, .L1 */
	jne      .L1
	movl     -64(%rbp), %eax     /* mov_l    vr0, vr12 */
	jmp      .Lfib_return        /* jmp      .Lfib_return */
	jmp      .Lfib_return        /* jmp      .Lfib_return */
.Lfib_return:
	addq     $80, %rsp           /* leave    $0 */
	popq     %rbp
	ret                          /* ret       */
/* Function 'main' uses 32 total bytes of memory storage for vregs */
/* Function 'main': placing vreg storage at offset -32 from %rbp */
/* Function 'main': 32 bytes of local storage allocated in stack frame */

	.globl main
main:
	pushq    %rbp                /* enter    $0 */
	movq     %rsp, %rbp
	subq     $32, %rsp
	call     read_i32            /* call     read_i32 */
	movl     %eax, -24(%rbp)     /* mov_l    vr11, vr0 */
	movl     -24(%rbp), %r10d    /* mov_l    vr10, vr11 */
	movl     %r10d, -32(%rbp)
	movl     -32(%rbp), %edi     /* mov_l    vr1, vr10 */
	call     fib                 /* call     fib */
	movl     %eax, -16(%rbp)     /* mov_l    vr12, vr0 */
	movl     -16(%rbp), %r10d    /* mov_l    vr10, vr12 */
	movl     %r10d, -32(%rbp)
	movl     -32(%rbp), %edi     /* mov_l    vr1, vr10 */
	call     print_i32           /* call     print_i32 */
	call     print_nl            /* call     print_nl */
	movl     $0, -8(%rbp)        /* mov_l    vr13, $0 */
	movl     -8(%rbp), %eax      /* mov_l    vr0, vr13 */
	jmp      .Lmain_return       /* jmp      .Lmain_return */
	jmp      .Lmain_return       /* jmp      .Lmain_return */
.Lmain_return:
	addq     $32, %rsp           /* leave    $0 */
	popq     %rbp
	ret                          /* ret       */
