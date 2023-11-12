/* variable 'a' allocated 4 bytes of storage at offset 0 */
/* variable 'p' allocated 8 bytes of storage at offset 8 */
/* variable 'pp' allocated vreg 10 */
/* Function 'main' uses 16 bytes of memory and 11 virtual registers */
/* allocate machine register %rbx to variable 'pp' (vr10), rank is 2 */
/* Function 'main': placing memory variables at offset -16 from %rbp */
/* Function 'main' uses 0 total bytes of memory storage for vregs */
/* Function 'main': placing vreg storage at offset -16 from %rbp */
/* Function 'main': 16 bytes of local storage allocated in stack frame */
/* performed 2 round(s) of peephole optimization */
	.section .text

	.globl main
main:
	pushq    %rbp                /* enter    $16 */
	movq     %rsp, %rbp
	subq     $16, %rsp
	pushq    %rbx
	subq     $8, %rsp
	leaq     -16(%rbp), %r9      /* localaddr vr11<%r9>, $0 */
	leaq     -8(%rbp), %r8       /* localaddr vr12<%r8>, $8 */
	movq     %r9, (%r8)          /* mov_q    (vr12<%r8>), vr11<%r9> */
	movq     (%r8), %rcx         /* mov_q    vr15<%rcx>, (vr12<%r8>) */
	movl     $17, (%rcx)         /* mov_l    (vr15<%ecx>), $17 */
	movl     (%r9), %eax         /* mov_l    vr0, (vr11<%r9d>) */
	jmp      .Lmain_return       /* jmp      .Lmain_return */
.Lmain_return:
	addq     $8, %rsp            /* leave    $16 */
	popq     %rbx
	addq     $16, %rsp
	popq     %rbp
	ret                          /* ret       */
