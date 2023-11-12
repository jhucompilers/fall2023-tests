/* variable 'p' allocated 8 bytes of storage at offset 0 */
/* Function 'main' uses 8 bytes of memory and 10 virtual registers */
/* Function 'main': placing memory variables at offset -8 from %rbp */
/* Function 'main' uses 0 total bytes of memory storage for vregs */
/* Function 'main': placing vreg storage at offset -8 from %rbp */
/* Function 'main': 16 bytes of local storage allocated in stack frame */
/* performed 3 round(s) of peephole optimization */
	.section .text

	.globl main
main:
	pushq    %rbp                /* enter    $8 */
	movq     %rsp, %rbp
	subq     $16, %rsp
	leaq     -8(%rbp), %r9       /* localaddr vr11<%r9>, $0 */
	movq     %r9, %r8            /* add_q    vr13<%r8>, vr11<%r9>, $0 */
	addq     $0, %r8
	movl     $2, (%r8)           /* mov_l    (vr13<%r8d>), $2 */
	movq     %r9, %rcx           /* add_q    vr17<%rcx>, vr11<%r9>, $4 */
	addq     $4, %rcx
	movl     $3, (%rcx)          /* mov_l    (vr17<%ecx>), $3 */
	movl     (%r8), %edx         /* mov_l    vr25<%edx>, (vr13<%r8d>) */
	movl     (%rcx), %esi        /* mov_l    vr26<%esi>, (vr17<%ecx>) */
	movl     %edx, %eax          /* add_l    vr24<%edi>, vr25<%edx>, vr26<%esi> */
	addl     %esi, %eax
	jmp      .Lmain_return       /* jmp      .Lmain_return */
.Lmain_return:
	addq     $16, %rsp           /* leave    $8 */
	popq     %rbp
	ret                          /* ret       */
