/* variable 'a' allocated vreg 10 */
/* variable 'b' allocated vreg 11 */
/* variable 'result' allocated vreg 12 */
/* Function 'sum' uses 0 bytes of memory and 13 virtual registers */
/* variable 'x' allocated vreg 10 */
/* variable 'y' allocated vreg 11 */
/* variable 'z' allocated vreg 12 */
/* Function 'main' uses 0 bytes of memory and 13 virtual registers */
/* Function 'sum' uses 32 total bytes of memory storage for vregs */
/* Function 'sum': placing vreg storage at offset -32 from %rbp */
/* Function 'sum': 32 bytes of local storage allocated in stack frame */
	.section .text

	.globl sum
sum:
	pushq    %rbp                /* enter    $0 */
	movq     %rsp, %rbp
	subq     $32, %rsp
	movl     %edi, -32(%rbp)     /* mov_l    vr10, vr1 */
	movl     %esi, -24(%rbp)     /* mov_l    vr11, vr2 */
	movl     -32(%rbp), %r10d    /* add_l    vr13, vr10, vr11 */
	addl     -24(%rbp), %r10d
	movl     %r10d, -8(%rbp)
	movl     -8(%rbp), %r10d     /* mov_l    vr12, vr13 */
	movl     %r10d, -16(%rbp)
	movl     -16(%rbp), %eax     /* mov_l    vr0, vr12 */
	jmp      .Lsum_return        /* jmp      .Lsum_return */
.Lsum_return:
	addq     $32, %rsp           /* leave    $0 */
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
	movl     $2, -8(%rbp)        /* mov_l    vr13, $2 */
	movl     -8(%rbp), %r10d     /* mov_l    vr10, vr13 */
	movl     %r10d, -32(%rbp)
	movl     $3, -8(%rbp)        /* mov_l    vr13, $3 */
	movl     -8(%rbp), %r10d     /* mov_l    vr11, vr13 */
	movl     %r10d, -24(%rbp)
	movl     -32(%rbp), %edi     /* mov_l    vr1, vr10 */
	movl     -24(%rbp), %esi     /* mov_l    vr2, vr11 */
	call     sum                 /* call     sum */
	movl     %eax, -8(%rbp)      /* mov_l    vr13, vr0 */
	movl     -8(%rbp), %r10d     /* mov_l    vr12, vr13 */
	movl     %r10d, -16(%rbp)
	movl     -16(%rbp), %eax     /* mov_l    vr0, vr12 */
	jmp      .Lmain_return       /* jmp      .Lmain_return */
.Lmain_return:
	addq     $32, %rsp           /* leave    $0 */
	popq     %rbp
	ret                          /* ret       */
