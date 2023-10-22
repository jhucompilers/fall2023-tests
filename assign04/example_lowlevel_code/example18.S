/* variable 'n' allocated vreg 10 */
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
	movl     $10, -32(%rbp)      /* mov_l    vr11, $10 */
	movl     -32(%rbp), %r10d    /* mov_l    vr10, vr11 */
	movl     %r10d, -40(%rbp)
	jmp      .L1                 /* jmp      .L1 */
.L0:
	movl     -40(%rbp), %edi     /* mov_l    vr1, vr10 */
	call     print_i32           /* call     print_i32 */
	call     print_nl            /* call     print_nl */
	movl     $1, -32(%rbp)       /* mov_l    vr11, $1 */
	movl     -40(%rbp), %r10d    /* sub_l    vr12, vr10, vr11 */
	subl     -32(%rbp), %r10d
	movl     %r10d, -24(%rbp)
	movl     -24(%rbp), %r10d    /* mov_l    vr10, vr12 */
	movl     %r10d, -40(%rbp)
.L1:
	movl     $0, -16(%rbp)       /* mov_l    vr13, $0 */
	movl     -40(%rbp), %r10d    /* cmpgt_l  vr14, vr10, vr13 */
	cmpl     -16(%rbp), %r10d
	setg     %r10b
	movzbl   %r10b, %r11d
	movl     %r11d, -8(%rbp)
	cmpl     $0, -8(%rbp)        /* cjmp_t   vr14, .L0 */
	jne      .L0
	movl     $0, -32(%rbp)       /* mov_l    vr11, $0 */
	movl     -32(%rbp), %eax     /* mov_l    vr0, vr11 */
	jmp      .Lmain_return       /* jmp      .Lmain_return */
.Lmain_return:
	addq     $48, %rsp           /* leave    $0 */
	popq     %rbp
	ret                          /* ret       */
