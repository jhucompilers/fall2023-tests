/* variable 'c' allocated vreg 10 */
/* Function 'main' uses 0 bytes of memory and 11 virtual registers */
/* Function 'main' uses 40 total bytes of memory storage for vregs */
/* Function 'main': placing vreg storage at offset -40 from %rbp */
/* Function 'main': 48 bytes of local storage allocated in stack frame */
	.section .text

	.globl main
main:
	pushq    %rbp                /* enter    $0 */
	movq     %rsp, %rbp
	subq     $48, %rsp
	movl     $67, -32(%rbp)      /* mov_l    vr11, $67 */
	movl     -32(%rbp), %r10d    /* neg_l    vr12, vr11 */
	movl     $0, -24(%rbp)
	subl     %r10d, -24(%rbp)
	movb     -24(%rbp), %r10b    /* mov_b    vr10, vr12 */
	movb     %r10b, -40(%rbp)
	movb     -40(%rbp), %r10b    /* sconv_bl vr13, vr10 */
	movsbl   %r10b, %r10d
	movl     %r10d, -16(%rbp)
	movl     -16(%rbp), %edi     /* mov_l    vr1, vr13 */
	call     print_i32           /* call     print_i32 */
	call     print_nl            /* call     print_nl */
	movl     $0, -8(%rbp)        /* mov_l    vr14, $0 */
	movl     -8(%rbp), %eax      /* mov_l    vr0, vr14 */
	jmp      .Lmain_return       /* jmp      .Lmain_return */
	jmp      .Lmain_return       /* jmp      .Lmain_return */
.Lmain_return:
	addq     $48, %rsp           /* leave    $0 */
	popq     %rbp
	ret                          /* ret       */
