/* variable 'a' allocated vreg 10 */
/* variable 'b' allocated vreg 11 */
/* variable 'c' allocated vreg 12 */
/* Function 'main' uses 0 bytes of memory and 13 virtual registers */
/* allocate machine register %rbx to variable 'c' (vr12), rank is 4 */
/* allocate machine register %r12 to variable 'a' (vr10), rank is 2 */
/* allocate machine register %r13 to variable 'b' (vr11), rank is 2 */
/* Function 'main' uses 8 total bytes of memory storage for vregs */
/* Function 'main': placing vreg storage at offset -8 from %rbp */
/* Function 'main': 16 bytes of local storage allocated in stack frame */
	.section .text

	.globl main
main:
	pushq    %rbp                /* enter    $0 */
	movq     %rsp, %rbp
	subq     $16, %rsp
	pushq    %r12
	pushq    %r13
	pushq    %rbx
	subq     $8, %rsp
	movl     $0, %r9d            /* mov_l    vr18<%r9d>, $0 */
	cmpl     $0, %r9d            /* cjmp_f   vr18<%r9d>, .L1 */
	je       .L1
	movl     $1, %ebx            /* mov_l    vr12, $1 */
	jmp      .L0                 /* jmp      .L0 */
.L1:
	movl     $2, %ebx            /* mov_l    vr12, $2 */
.L0:
	movl     %ebx, %eax          /* mov_l    vr0, vr12 */
	jmp      .Lmain_return       /* jmp      .Lmain_return */
.Lmain_return:
	addq     $8, %rsp            /* leave    $0 */
	popq     %rbx
	popq     %r13
	popq     %r12
	addq     $16, %rsp
	popq     %rbp
	ret                          /* ret       */
