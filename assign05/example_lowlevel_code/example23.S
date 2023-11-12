/* variable 'a' allocated vreg 10 */
/* variable 'b' allocated vreg 11 */
/* variable 'c' allocated vreg 12 */
/* Function 'main' uses 0 bytes of memory and 13 virtual registers */
/* Function 'main' uses 48 total bytes of memory storage for vregs */
/* Function 'main': placing vreg storage at offset -48 from %rbp */
/* Function 'main': 48 bytes of local storage allocated in stack frame */
	.section .text

	.globl main
main:
	pushq    %rbp                /* enter    $0 */
	movq     %rsp, %rbp
	subq     $48, %rsp
	movl     $44, -24(%rbp)      /* mov_l    vr13, $44 */
	movl     -24(%rbp), %r10d    /* mov_l    vr10, vr13 */
	movl     %r10d, -48(%rbp)
	movl     $7, -16(%rbp)       /* mov_l    vr14, $7 */
	movl     -16(%rbp), %r10d    /* mov_l    vr11, vr14 */
	movl     %r10d, -40(%rbp)
	movl     -48(%rbp), %eax     /* div_l    vr15, vr10, vr11 */
	cdq      
	movl     -40(%rbp), %r10d
	idivl    %r10d
	movl     %eax, -8(%rbp)
	movl     -8(%rbp), %r10d     /* mov_l    vr12, vr15 */
	movl     %r10d, -32(%rbp)
	movl     -32(%rbp), %eax     /* mov_l    vr0, vr12 */
	jmp      .Lmain_return       /* jmp      .Lmain_return */
	jmp      .Lmain_return       /* jmp      .Lmain_return */
.Lmain_return:
	addq     $48, %rsp           /* leave    $0 */
	popq     %rbp
	ret                          /* ret       */
