/* variable 'c' allocated vreg 10 */
/* Function 'main' uses 0 bytes of memory and 11 virtual registers */
/* Function 'main' uses 24 total bytes of memory storage for vregs */
/* Function 'main': placing vreg storage at offset -24 from %rbp */
/* Function 'main': 32 bytes of local storage allocated in stack frame */
	.section .text

	.globl main
main:
	pushq    %rbp                /* enter    $0 */
	movq     %rsp, %rbp
	subq     $32, %rsp
	movl     $67, -16(%rbp)      /* mov_l    vr11, $67 */
	movl     -16(%rbp), %r10d    /* neg_l    vr12, vr11 */
	movl     $0, -8(%rbp)
	subl     %r10d, -8(%rbp)
	movb     -8(%rbp), %r10b     /* mov_b    vr10, vr12 */
	movb     %r10b, -24(%rbp)
	movb     -24(%rbp), %r10b    /* sconv_bl vr11, vr10 */
	movsbl   %r10b, %r10d
	movl     %r10d, -16(%rbp)
	movl     -16(%rbp), %edi     /* mov_l    vr1, vr11 */
	call     print_i32           /* call     print_i32 */
	call     print_nl            /* call     print_nl */
	movl     $0, -16(%rbp)       /* mov_l    vr11, $0 */
	movl     -16(%rbp), %eax     /* mov_l    vr0, vr11 */
	jmp      .Lmain_return       /* jmp      .Lmain_return */
.Lmain_return:
	addq     $32, %rsp           /* leave    $0 */
	popq     %rbp
	ret                          /* ret       */
