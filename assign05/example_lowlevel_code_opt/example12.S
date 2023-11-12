/* variable 'p' allocated 8 bytes of storage at offset 0 */
/* Function 'main' uses 8 bytes of memory and 10 virtual registers */
/* Function 'main': placing memory variables at offset -8 from %rbp */
/* Function 'main' uses 0 total bytes of memory storage for vregs */
/* Function 'main': placing vreg storage at offset -8 from %rbp */
/* Function 'main': 16 bytes of local storage allocated in stack frame */
	.section .text

	.globl main
main:
	pushq    %rbp                /* enter    $8 */
	movq     %rsp, %rbp
	subq     $16, %rsp
	leaq     -8(%rbp), %r10      /* localaddr vr11<%r9>, $0 */
	movq     %r10, %r9
	movq     %r9, %r10           /* add_q    vr13<%r8>, vr11<%r9>, $0 */
	addq     $0, %r10
	movq     %r10, %r8
	movl     $2, (%r8)           /* mov_l    (vr13<%r8d>), $2 */
	movq     %r9, %r10           /* add_q    vr17<%rcx>, vr11<%r9>, $4 */
	addq     $4, %r10
	movq     %r10, %rcx
	movl     $3, (%rcx)          /* mov_l    (vr17<%ecx>), $3 */
	movl     (%r8), %edx         /* mov_l    vr25<%edx>, (vr13<%r8d>) */
	movl     (%rcx), %esi        /* mov_l    vr26<%esi>, (vr17<%ecx>) */
	movl     %edx, %r10d         /* add_l    vr24<%edi>, vr25<%edx>, vr26<%esi> */
	addl     %esi, %r10d
	movl     %r10d, %edi
	movl     %edi, %eax          /* mov_l    vr0, vr24<%edi> */
	jmp      .Lmain_return       /* jmp      .Lmain_return */
.Lmain_return:
	addq     $16, %rsp           /* leave    $8 */
	popq     %rbp
	ret                          /* ret       */
