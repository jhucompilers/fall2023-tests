/* variable 'a' allocated 4 bytes of storage at offset 0 */
/* variable 'p' allocated 8 bytes of storage at offset 8 */
/* variable 'pp' allocated vreg 10 */
/* Function 'main' uses 16 bytes of memory and 11 virtual registers */
/* Function 'main': placing memory variables at offset -16 from %rbp */
/* Function 'main' uses 24 total bytes of memory storage for vregs */
/* Function 'main': placing vreg storage at offset -40 from %rbp */
/* Function 'main': 48 bytes of local storage allocated in stack frame */
	.section .text

	.globl main
main:
	pushq    %rbp                /* enter    $16 */
	movq     %rsp, %rbp
	subq     $48, %rsp
	leaq     -8(%rbp), %r10      /* localaddr vr11, $8 */
	movq     %r10, -32(%rbp)
	leaq     -16(%rbp), %r10     /* localaddr vr12, $0 */
	movq     %r10, -24(%rbp)
	movq     -32(%rbp), %r11     /* mov_q    (vr11), vr12 */
	movq     -24(%rbp), %r10
	movq     %r10, (%r11)
	leaq     -8(%rbp), %r10      /* localaddr vr11, $8 */
	movq     %r10, -32(%rbp)
	movq     -32(%rbp), %r10     /* mov_q    vr10, vr11 */
	movq     %r10, -40(%rbp)
	movq     -40(%rbp), %r11     /* mov_q    vr11, (vr10) */
	movq     (%r11), %r10
	movq     %r10, -32(%rbp)
	movl     $17, -24(%rbp)      /* mov_l    vr12, $17 */
	movq     -32(%rbp), %r11     /* mov_l    (vr11), vr12 */
	movl     -24(%rbp), %r10d
	movl     %r10d, (%r11)
	leaq     -16(%rbp), %r10     /* localaddr vr11, $0 */
	movq     %r10, -32(%rbp)
	movq     -32(%rbp), %r11     /* mov_l    vr0, (vr11) */
	movl     (%r11), %eax
	jmp      .Lmain_return       /* jmp      .Lmain_return */
.Lmain_return:
	addq     $48, %rsp           /* leave    $16 */
	popq     %rbp
	ret                          /* ret       */
