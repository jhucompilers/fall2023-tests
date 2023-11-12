/* variable 'p' allocated 8 bytes of storage at offset 0 */
/* variable 'q' allocated vreg 10 */
/* Function 'main' uses 8 bytes of memory and 11 virtual registers */
/* allocate machine register %rbx to variable 'q' (vr10), rank is 5 */
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
	pushq    %rbx
	subq     $8, %rsp
	leaq     -8(%rbp), %r9       /* localaddr vr11<%r9>, $0 */
	movq     %r9, %r8            /* add_q    vr14<%r8>, vr11<%r9>, $0 */
	addq     $0, %r8
	movl     $2, (%r8)           /* mov_l    (vr14<%r8d>), $2 */
	movq     %r9, %rcx           /* add_q    vr17<%rcx>, vr11<%r9>, $4 */
	addq     $4, %rcx
	movl     $3, (%rcx)          /* mov_l    (vr17<%ecx>), $3 */
	movl     (%r8), %edx         /* mov_l    vr23<%edx>, (vr14<%r8d>) */
	movl     (%rcx), %esi        /* mov_l    vr24<%esi>, (vr17<%ecx>) */
	movl     %edx, %eax          /* add_l    vr22<%edi>, vr23<%edx>, vr24<%esi> */
	addl     %esi, %eax
	jmp      .Lmain_return       /* jmp      .Lmain_return */
.Lmain_return:
	addq     $8, %rsp            /* leave    $8 */
	popq     %rbx
	addq     $16, %rsp
	popq     %rbp
	ret                          /* ret       */
