/* variable 'i' allocated vreg 10 */
/* variable 'j' allocated vreg 11 */
/* variable 'n' allocated vreg 12 */
/* variable 'm' allocated 400 bytes of storage at offset 0 */
/* Function 'main' uses 400 bytes of memory and 13 virtual registers */
/* allocate machine register %rbx to variable 'j' (vr11), rank is 3240 */
/* allocate machine register %r12 to variable 'i' (vr10), rank is 1322 */
/* allocate machine register %r13 to variable 'n' (vr12), rank is 1220 */
/* Function 'main': placing memory variables at offset -400 from %rbp */
/* Function 'main' uses 24 total bytes of memory storage for vregs */
/* Function 'main': placing vreg storage at offset -424 from %rbp */
/* Function 'main': 432 bytes of local storage allocated in stack frame */
/* performed 4 round(s) of peephole optimization */
	.section .text

	.globl main
main:
	pushq    %rbp                /* enter    $400 */
	movq     %rsp, %rbp
	subq     $432, %rsp
	pushq    %r12
	pushq    %rbx
	pushq    %r13
	subq     $8, %rsp
	xorl     %r12d, %r12d        /* mov_l    vr10, $0 */
	jmp      .L1                 /* jmp      .L1 */
.L0:
	xorl     %r13d, %r13d        /* mov_l    vr12, $0 */
	xorl     %ebx, %ebx          /* mov_l    vr11, $0 */
	jmp      .L3                 /* jmp      .L3 */
.L2:
	leaq     -400(%rbp), %r9     /* localaddr vr13<%r9>, $0 */
	movslq   %r12d, %r8          /* sconv_lq vr14<%r8>, vr10 */
	movq     %r8, %rcx           /* mul_q    vr15<%rcx>, vr14<%r8>, $40 */
	imulq    $40, %rcx
	movq     %r9, %rdx           /* add_q    vr16<%rdx>, vr13<%r9>, vr15<%rcx> */
	addq     %rcx, %rdx
	movslq   %ebx, %rsi          /* sconv_lq vr17<%rsi>, vr11 */
	movl     %r13d, (%rdx,%rsi,4) /* mul_q    vr18<%r8>, vr17<%rsi>, $4 */
	addl     %r12d, %r13d
	incl     %ebx
.L3:
	cmpl     $9, %ebx            /* cmplte_l vr24<%r9d>, vr11, $9 */
	jle      .L2
	incl     %r12d
.L1:
	cmpl     $9, %r12d           /* cmplte_l vr28<%r9d>, vr10, $9 */
	jle      .L0
	xorl     %r12d, %r12d        /* mov_l    vr10, $0 */
	jmp      .L5                 /* jmp      .L5 */
.L4:
	xorl     %ebx, %ebx          /* mov_l    vr11, $0 */
	jmp      .L7                 /* jmp      .L7 */
.L6:
	leaq     -400(%rbp), %r9     /* localaddr vr13<%r9>, $0 */
	movslq   %r12d, %r8          /* sconv_lq vr14<%r8>, vr10 */
	movq     %r8, %rcx           /* mul_q    vr15<%rcx>, vr14<%r8>, $40 */
	imulq    $40, %rcx
	movq     %r9, %rdx           /* add_q    vr16<%rdx>, vr13<%r9>, vr15<%rcx> */
	addq     %rcx, %rdx
	movslq   %ebx, %rsi          /* sconv_lq vr17<%rsi>, vr11 */
	movl     (%rdx,%rsi,4), %edi /* mul_q    vr18<%r8>, vr17<%rsi>, $4 */
	call     print_i32           /* call     print_i32 */
	call     print_space         /* call     print_space */
	incl     %ebx
.L7:
	cmpl     $9, %ebx            /* cmplte_l vr23<%r9d>, vr11, $9 */
	jle      .L6
	call     print_nl            /* call     print_nl */
	incl     %r12d
.L5:
	cmpl     $9, %r12d           /* cmplte_l vr27<%r9d>, vr10, $9 */
	jle      .L4
	xorl     %eax, %eax          /* mov_l    vr0, $0 */
	jmp      .Lmain_return       /* jmp      .Lmain_return */
.Lmain_return:
	addq     $8, %rsp            /* leave    $400 */
	popq     %r13
	popq     %rbx
	popq     %r12
	addq     $432, %rsp
	popq     %rbp
	ret                          /* ret       */
