/* variable 'a' allocated 4 bytes of storage at offset 0 */
/* variable 'p' allocated vreg 10 */
/* Function 'main' uses 4 bytes of memory and 11 virtual registers */
/* Function 'main': placing memory variables at offset -8 from %rbp */
/* Function 'main' uses 16 total bytes of memory storage for vregs */
/* Function 'main': placing vreg storage at offset -24 from %rbp */
/* Function 'main': 32 bytes of local storage allocated in stack frame */
	.section .text

	.globl main
main:
	pushq    %rbp                /* enter    $4 */
	movq     %rsp, %rbp
	subq     $32, %rsp
	leaq     -8(%rbp), %r10      /* localaddr vr11, $0 */
	movq     %r10, -16(%rbp)
	movq     -16(%rbp), %r10     /* mov_q    vr10, vr11 */
	movq     %r10, -24(%rbp)
	movl     $42, -16(%rbp)      /* mov_l    vr11, $42 */
	movq     -24(%rbp), %r11     /* mov_l    (vr10), vr11 */
	movl     -16(%rbp), %r10d
	movl     %r10d, (%r11)
	leaq     -8(%rbp), %r10      /* localaddr vr11, $0 */
	movq     %r10, -16(%rbp)
	movq     -16(%rbp), %r11     /* mov_l    vr0, (vr11) */
	movl     (%r11), %eax
	jmp      .Lmain_return       /* jmp      .Lmain_return */
.Lmain_return:
	addq     $32, %rsp           /* leave    $4 */
	popq     %rbp
	ret                          /* ret       */
