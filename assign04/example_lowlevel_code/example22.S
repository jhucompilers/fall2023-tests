/* variable 'a' allocated vreg 10 */
/* variable 'b' allocated vreg 11 */
/* variable 'c' allocated vreg 12 */
/* Function 'main' uses 0 bytes of memory and 13 virtual registers */
/* Function 'main' uses 40 total bytes of memory storage for vregs */
/* Function 'main': placing vreg storage at offset -40 from %rbp */
/* Function 'main': 48 bytes of local storage allocated in stack frame */
	.section .text

	.globl main
main:
	pushq    %rbp                /* enter    $0 */
	movq     %rsp, %rbp
	subq     $48, %rsp
	movq     $14642, -16(%rbp)   /* mov_q    vr13, $14642 */
	movq     -16(%rbp), %r10     /* mov_q    vr10, vr13 */
	movq     %r10, -40(%rbp)
	movq     $341491, -16(%rbp)  /* mov_q    vr13, $341491 */
	movq     -40(%rbp), %r10     /* mul_q    vr14, vr10, vr13 */
	imulq    -16(%rbp), %r10
	movq     %r10, -8(%rbp)
	movq     -8(%rbp), %r10      /* mov_q    vr10, vr14 */
	movq     %r10, -40(%rbp)
	movq     $29, -16(%rbp)      /* mov_q    vr13, $29 */
	movq     -16(%rbp), %r10     /* mov_q    vr11, vr13 */
	movq     %r10, -32(%rbp)
	movq     -40(%rbp), %r10     /* mul_q    vr13, vr10, vr11 */
	imulq    -32(%rbp), %r10
	movq     %r10, -16(%rbp)
	movq     -16(%rbp), %r10     /* mov_q    vr12, vr13 */
	movq     %r10, -24(%rbp)
	movq     -24(%rbp), %rdi     /* mov_q    vr1, vr12 */
	call     print_i64           /* call     print_i64 */
	call     print_nl            /* call     print_nl */
	movl     $0, -16(%rbp)       /* mov_l    vr13, $0 */
	movl     -16(%rbp), %eax     /* mov_l    vr0, vr13 */
	jmp      .Lmain_return       /* jmp      .Lmain_return */
.Lmain_return:
	addq     $48, %rsp           /* leave    $0 */
	popq     %rbp
	ret                          /* ret       */
