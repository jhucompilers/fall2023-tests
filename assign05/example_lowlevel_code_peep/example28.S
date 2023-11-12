/* variable 'arr' allocated vreg 10 */
/* variable 'i' allocated vreg 11 */
/* Function 'read_m10x10' uses 0 bytes of memory and 12 virtual registers */
/* variable 'a' allocated 800 bytes of storage at offset 0 */
/* variable 'b' allocated 800 bytes of storage at offset 800 */
/* variable 'c' allocated 800 bytes of storage at offset 1600 */
/* variable 'M' allocated vreg 10 */
/* variable 'i' allocated vreg 11 */
/* variable 'j' allocated vreg 12 */
/* variable 'k' allocated vreg 13 */
/* variable 'r' allocated vreg 14 */
/* variable 'val' allocated vreg 15 */
/* Function 'main' uses 2400 bytes of memory and 16 virtual registers */
/* allocate machine register %rbx to variable 'i' (vr11), rank is 81 */
/* allocate machine register %r12 to variable 'arr' (vr10), rank is 20 */
/* Function 'read_m10x10' uses 16 total bytes of memory storage for vregs */
/* Function 'read_m10x10': placing vreg storage at offset -16 from %rbp */
/* Function 'read_m10x10': 16 bytes of local storage allocated in stack frame */
/* performed 4 round(s) of peephole optimization */
	.section .text

	.globl read_m10x10
read_m10x10:
	pushq    %rbp                /* enter    $0 */
	movq     %rsp, %rbp
	subq     $16, %rsp
	pushq    %r12
	pushq    %rbx
	movq     %rdi, %r12          /* mov_q    vr10, vr1 */
	xorl     %ebx, %ebx          /* mov_l    vr11, $0 */
	jmp      .L1                 /* jmp      .L1 */
.L0:
	call     read_i64            /* call     read_i64 */
	movslq   %ebx, %r9           /* sconv_lq vr13<%r9>, vr11 */
	movq     %rax, (%r12,%r9,8)  /* mul_q    vr14<%r8>, vr13<%r9>, $8 */
	incl     %ebx
.L1:
	cmpl     $100, %ebx          /* cmplt_l  vr19<%r9d>, vr11, $100 */
	jl       .L0
	jmp      .Lread_m10x10_return /* jmp      .Lread_m10x10_return */
.Lread_m10x10_return:
	popq     %rbx                /* leave    $0 */
	popq     %r12
	addq     $16, %rsp
	popq     %rbp
	ret                          /* ret       */
/* allocate machine register %rbx to variable 'j' (vr12), rank is 48400 */
/* allocate machine register %r12 to variable 'M' (vr10), rank is 32821 */
/* allocate machine register %r13 to variable 'val' (vr15), rank is 32000 */
/* allocate machine register %r14 to variable 'i' (vr11), rank is 17782 */
/* allocate machine register %r15 to variable 'k' (vr13), rank is 8461 */
/* Function 'main': placing memory variables at offset -2400 from %rbp */
/* Function 'main' uses 40 total bytes of memory storage for vregs */
/* Function 'main': placing vreg storage at offset -2440 from %rbp */
/* Function 'main': 2448 bytes of local storage allocated in stack frame */
/* performed 4 round(s) of peephole optimization */

	.globl main
main:
	pushq    %rbp                /* enter    $2400 */
	movq     %rsp, %rbp
	subq     $2448, %rsp
	pushq    %r12
	pushq    %r14
	pushq    %rbx
	pushq    %r15
	pushq    %r13
	subq     $8, %rsp
	movl     $10, %r12d          /* mov_l    vr10, $10 */
	leaq     -2400(%rbp), %rdi   /* localaddr vr17<%r9>, $0 */
	call     read_m10x10         /* call     read_m10x10 */
	leaq     -1600(%rbp), %rdi   /* localaddr vr18<%r9>, $800 */
	call     read_m10x10         /* call     read_m10x10 */
	xorl     %r14d, %r14d        /* mov_l    vr11, $0 */
	jmp      .L3                 /* jmp      .L3 */
.L2:
	leaq     -800(%rbp), %r9     /* localaddr vr17<%r9>, $1600 */
	movslq   %r14d, %r8          /* sconv_lq vr18<%r8>, vr11 */
	movq     $0, (%r9,%r8,8)     /* mul_q    vr19<%rcx>, vr18<%r8>, $8 */
	incl     %r14d
.L3:
	cmpl     $100, %r14d         /* cmplt_l  vr24<%r9d>, vr11, $100 */
	jl       .L2
	xorl     %r15d, %r15d        /* mov_l    vr13, $0 */
	jmp      .L5                 /* jmp      .L5 */
.L4:
	xorl     %r14d, %r14d        /* mov_l    vr11, $0 */
	jmp      .L7                 /* jmp      .L7 */
.L6:
	leaq     -2400(%rbp), %r9    /* localaddr vr16<%r9>, $0 */
	movl     %r14d, %ecx         /* mul_l    vr17<%r8d>, vr11, vr10 */
	imull    %r12d, %ecx
	addl     %r15d, %ecx
	movslq   %ecx, %rdx          /* sconv_lq vr19<%rdx>, vr18<%ecx> */
	movq     (%r9,%rdx,8), %rcx  /* mul_q    vr20<%rsi>, vr19<%rdx>, $8 */
	movq     %rcx, -2408(%rbp)   /* mov_q    vr14, vr22<%rcx> */
	xorl     %ebx, %ebx          /* mov_l    vr12, $0 */
	jmp      .L9                 /* jmp      .L9 */
.L8:
	leaq     -800(%rbp), %r9     /* localaddr vr16<%r9>, $1600 */
	movl     %r14d, %ecx         /* mul_l    vr17<%r8d>, vr11, vr10 */
	imull    %r12d, %ecx
	addl     %ebx, %ecx
	movslq   %ecx, %rdx          /* sconv_lq vr19<%rdx>, vr18<%ecx> */
	leaq     (%r9,%rdx,8), %r8   /* mul_q    vr20<%rsi>, vr19<%rdx>, $8 */
	movq     (%r8), %rcx         /* mov_q    vr22<%rcx>, (vr21<%r8>) */
	leaq     -1600(%rbp), %rdx   /* localaddr vr23<%rdx>, $800 */
	movl     %r15d, %esi         /* mul_l    vr24<%r9d>, vr13, vr10 */
	imull    %r12d, %esi
	addl     %ebx, %esi
	movslq   %esi, %r9           /* sconv_lq vr26<%r9>, vr25<%esi> */
	movq     (%rdx,%r9,8), %rdx  /* mul_q    vr27<%rsi>, vr26<%r9>, $8 */
	movq     -2408(%rbp), %r10   /* mul_q    vr29<%rsi>, vr14, vr30<%rdx> */
	imulq    %rdx, %r10
	movq     %r10, %rsi
	movq     %rcx, %r9           /* add_q    vr31<%r9>, vr22<%rcx>, vr29<%rsi> */
	addq     %rsi, %r9
	movq     %r9, (%r8)          /* mov_q    (vr21<%r8>), vr31<%r9> */
	incl     %ebx
.L9:
	cmpl     %r12d, %ebx         /* cmplt_l  vr40<%r9d>, vr12, vr10 */
	jl       .L8
	incl     %r14d
.L7:
	cmpl     %r12d, %r14d        /* cmplt_l  vr43<%r9d>, vr11, vr10 */
	jl       .L6
	incl     %r15d
.L5:
	cmpl     %r12d, %r15d        /* cmplt_l  vr46<%r9d>, vr13, vr10 */
	jl       .L4
	xorl     %r14d, %r14d        /* mov_l    vr11, $0 */
	jmp      .L11                /* jmp      .L11 */
.L10:
	leaq     -800(%rbp), %r9     /* localaddr vr16<%r9>, $1600 */
	movslq   %r14d, %r8          /* sconv_lq vr17<%r8>, vr11 */
	movq     (%r9,%r8,8), %rdi   /* mul_q    vr18<%rcx>, vr17<%r8>, $8 */
	call     print_i64           /* call     print_i64 */
	call     print_nl            /* call     print_nl */
	incl     %r14d
.L11:
	cmpl     $100, %r14d         /* cmplt_l  vr23<%r9d>, vr11, $100 */
	jl       .L10
	xorl     %eax, %eax          /* mov_l    vr0, $0 */
	jmp      .Lmain_return       /* jmp      .Lmain_return */
.Lmain_return:
	addq     $8, %rsp            /* leave    $2400 */
	popq     %r13
	popq     %r15
	popq     %rbx
	popq     %r14
	popq     %r12
	addq     $2448, %rsp
	popq     %rbp
	ret                          /* ret       */
