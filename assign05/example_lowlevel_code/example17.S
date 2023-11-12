/* variable 'a' allocated vreg 10 */
/* variable 'b' allocated vreg 11 */
/* Function 'main' uses 0 bytes of memory and 12 virtual registers */
/* Function 'main' uses 48 total bytes of memory storage for vregs */
/* Function 'main': placing vreg storage at offset -48 from %rbp */
/* Function 'main': 48 bytes of local storage allocated in stack frame */
	.section .text

	.globl main
main:
	pushq    %rbp                /* enter    $0 */
	movq     %rsp, %rbp
	subq     $48, %rsp
	movl     $4, -32(%rbp)       /* mov_l    vr12, $4 */
	movl     -32(%rbp), %r10d    /* mov_l    vr10, vr12 */
	movl     %r10d, -48(%rbp)
	movl     $5, -24(%rbp)       /* mov_l    vr13, $5 */
	movl     -24(%rbp), %r10d    /* mov_l    vr11, vr13 */
	movl     %r10d, -40(%rbp)
	movl     -48(%rbp), %r10d    /* add_l    vr14, vr10, vr11 */
	addl     -40(%rbp), %r10d
	movl     %r10d, -16(%rbp)
	movl     -16(%rbp), %edi     /* mov_l    vr1, vr14 */
	call     print_i32           /* call     print_i32 */
	call     print_nl            /* call     print_nl */
	movl     $0, -8(%rbp)        /* mov_l    vr15, $0 */
	movl     -8(%rbp), %eax      /* mov_l    vr0, vr15 */
	jmp      .Lmain_return       /* jmp      .Lmain_return */
	jmp      .Lmain_return       /* jmp      .Lmain_return */
.Lmain_return:
	addq     $48, %rsp           /* leave    $0 */
	popq     %rbp
	ret                          /* ret       */
