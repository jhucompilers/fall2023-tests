/* variable 'a' allocated vreg 10 */
/* variable 'b' allocated vreg 11 */
/* variable 'c' allocated vreg 12 */
/* Function 'main' uses 0 bytes of memory and 13 virtual registers */
/* Function 'main' uses 72 total bytes of memory storage for vregs */
/* Function 'main': placing vreg storage at offset -72 from %rbp */
/* Function 'main': 80 bytes of local storage allocated in stack frame */
	.section .text

	.globl main
main:
	pushq    %rbp                /* enter    $0 */
	movq     %rsp, %rbp
	subq     $80, %rsp
	movq     $14642, -48(%rbp)   /* mov_q    vr13, $14642 */
	movq     -48(%rbp), %r10     /* mov_q    vr10, vr13 */
	movq     %r10, -72(%rbp)
	movq     $341491, -40(%rbp)  /* mov_q    vr14, $341491 */
	movq     -72(%rbp), %r10     /* mul_q    vr15, vr10, vr14 */
	imulq    -40(%rbp), %r10
	movq     %r10, -32(%rbp)
	movq     -32(%rbp), %r10     /* mov_q    vr10, vr15 */
	movq     %r10, -72(%rbp)
	movq     $29, -24(%rbp)      /* mov_q    vr16, $29 */
	movq     -24(%rbp), %r10     /* mov_q    vr11, vr16 */
	movq     %r10, -64(%rbp)
	movq     -72(%rbp), %r10     /* mul_q    vr17, vr10, vr11 */
	imulq    -64(%rbp), %r10
	movq     %r10, -16(%rbp)
	movq     -16(%rbp), %r10     /* mov_q    vr12, vr17 */
	movq     %r10, -56(%rbp)
	movq     -56(%rbp), %rdi     /* mov_q    vr1, vr12 */
	call     print_i64           /* call     print_i64 */
	call     print_nl            /* call     print_nl */
	movl     $0, -8(%rbp)        /* mov_l    vr18, $0 */
	movl     -8(%rbp), %eax      /* mov_l    vr0, vr18 */
	jmp      .Lmain_return       /* jmp      .Lmain_return */
	jmp      .Lmain_return       /* jmp      .Lmain_return */
.Lmain_return:
	addq     $80, %rsp           /* leave    $0 */
	popq     %rbp
	ret                          /* ret       */
