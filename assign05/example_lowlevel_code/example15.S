/* variable 'x' allocated vreg 10 */
/* variable 'y' allocated vreg 11 */
/* Function 'main' uses 0 bytes of memory and 12 virtual registers */
/* Function 'main' uses 40 total bytes of memory storage for vregs */
/* Function 'main': placing vreg storage at offset -40 from %rbp */
/* Function 'main': 48 bytes of local storage allocated in stack frame */
	.section .text

	.globl main
main:
	pushq    %rbp                /* enter    $0 */
	movq     %rsp, %rbp
	subq     $48, %rsp
	call     read_i32            /* call     read_i32 */
	movl     %eax, -24(%rbp)     /* mov_l    vr12, vr0 */
	movl     -24(%rbp), %r10d    /* mov_l    vr10, vr12 */
	movl     %r10d, -40(%rbp)
	call     read_i32            /* call     read_i32 */
	movl     %eax, -16(%rbp)     /* mov_l    vr13, vr0 */
	movl     -16(%rbp), %r10d    /* mov_l    vr11, vr13 */
	movl     %r10d, -32(%rbp)
	movl     -40(%rbp), %r10d    /* add_l    vr14, vr10, vr11 */
	addl     -32(%rbp), %r10d
	movl     %r10d, -8(%rbp)
	movl     -8(%rbp), %eax      /* mov_l    vr0, vr14 */
	jmp      .Lmain_return       /* jmp      .Lmain_return */
	jmp      .Lmain_return       /* jmp      .Lmain_return */
.Lmain_return:
	addq     $48, %rsp           /* leave    $0 */
	popq     %rbp
	ret                          /* ret       */
