/* variable 'arr' allocated 4 bytes of storage at offset 0 */
/* variable 'sum' allocated vreg 10 */
/* Function 'main' uses 4 bytes of memory and 11 virtual registers */
/* allocate machine register %rbx to variable 'sum' (vr10), rank is 2 */
/* Function 'main': placing memory variables at offset -8 from %rbp */
/* Function 'main' uses 0 total bytes of memory storage for vregs */
/* Function 'main': placing vreg storage at offset -8 from %rbp */
/* Function 'main': 16 bytes of local storage allocated in stack frame */
/* performed 4 round(s) of peephole optimization */
	.section .text

	.globl main
main:
	pushq    %rbp                /* enter    $4 */
	movq     %rsp, %rbp
	subq     $16, %rsp
	pushq    %rbx
	subq     $8, %rsp
	leaq     -8(%rbp), %r8       /* localaddr vr12<%r9>, $0 */
	addq     $0, %r8
	movl     $2, (%r8)           /* mov_l    (vr16<%r8d>), $2 */
	movl     (%r8), %ecx         /* mov_l    vr24<%ecx>, (vr16<%r8d>) */
	movl     %ecx, %eax          /* add_l    vr23<%edx>, vr24<%ecx>, $1 */
	incl     %eax
	jmp      .Lmain_return       /* jmp      .Lmain_return */
.Lmain_return:
	addq     $8, %rsp            /* leave    $4 */
	popq     %rbx
	addq     $16, %rsp
	popq     %rbp
	ret                          /* ret       */
