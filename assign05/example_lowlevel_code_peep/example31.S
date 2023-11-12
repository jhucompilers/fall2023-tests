/* variable 'arr' allocated vreg 10 */
/* variable 'i' allocated vreg 11 */
/* Function 'read_m500x500' uses 0 bytes of memory and 12 virtual registers */
/* variable 'a' allocated 2000000 bytes of storage at offset 0 */
/* variable 'b' allocated 2000000 bytes of storage at offset 2000000 */
/* variable 'c' allocated 2000000 bytes of storage at offset 4000000 */
/* variable 'M' allocated vreg 10 */
/* variable 'i' allocated vreg 11 */
/* variable 'j' allocated vreg 12 */
/* variable 'k' allocated vreg 13 */
/* variable 'r' allocated vreg 14 */
/* variable 'val' allocated vreg 15 */
/* Function 'main' uses 6000000 bytes of memory and 16 virtual registers */
/* allocate machine register %rbx to variable 'i' (vr11), rank is 81 */
/* allocate machine register %r12 to variable 'arr' (vr10), rank is 20 */
/* Function 'read_m500x500' uses 16 total bytes of memory storage for vregs */
/* Function 'read_m500x500': placing vreg storage at offset -16 from %rbp */
/* Function 'read_m500x500': 16 bytes of local storage allocated in stack frame */
/* performed 4 round(s) of peephole optimization */
	.section .text

	.globl read_m500x500
read_m500x500:
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
	cmpl     $250000, %ebx       /* cmplt_l  vr19<%r9d>, vr11, $250000 */
	jl       .L0
	jmp      .Lread_m500x500_return /* jmp      .Lread_m500x500_return */
.Lread_m500x500_return:
	popq     %rbx                /* leave    $0 */
	popq     %r12
	addq     $16, %rsp
	popq     %rbp
	ret                          /* ret       */
/* allocate machine register %rbx to variable 'j' (vr12), rank is 51640 */
/* allocate machine register %r12 to variable 'val' (vr15), rank is 32000 */
/* allocate machine register %r13 to variable 'i' (vr11), rank is 18542 */
/* allocate machine register %r14 to variable 'M' (vr10), rank is 9261 */
/* allocate machine register %r15 to variable 'k' (vr13), rank is 8461 */
/* Function 'main': placing memory variables at offset -6000000 from %rbp */
/* Function 'main' uses 40 total bytes of memory storage for vregs */
/* Function 'main': placing vreg storage at offset -6000040 from %rbp */
/* Function 'main': allocating space for 1 register spills at offset -6000048 from %rbp */
/* Function 'main': 6000048 bytes of local storage allocated in stack frame */
/* performed 4 round(s) of peephole optimization */

	.globl main
main:
	pushq    %rbp                /* enter    $6000000 */
	movq     %rsp, %rbp
	subq     $6000048, %rsp
	pushq    %r14
	pushq    %r13
	pushq    %rbx
	pushq    %r15
	pushq    %r12
	subq     $8, %rsp
	movl     $500, %r14d         /* mov_l    vr10, $500 */
	leaq     -6000000(%rbp), %r8 /* localaddr vr17<%r9>, $0 */
	addq     $0, %r8
	movq     %r8, %rdi           /* add_q    vr25<%rcx>, vr21<%r8>, $0 */
	addq     $0, %rdi
	call     read_m500x500       /* call     read_m500x500 */
	leaq     -4000000(%rbp), %r8 /* localaddr vr26<%r9>, $2000000 */
	addq     $0, %r8
	movq     %r8, %rdi           /* add_q    vr34<%rcx>, vr30<%r8>, $0 */
	addq     $0, %rdi
	call     read_m500x500       /* call     read_m500x500 */
	xorl     %r13d, %r13d        /* mov_l    vr11, $0 */
	jmp      .L3                 /* jmp      .L3 */
.L2:
	xorl     %ebx, %ebx          /* mov_l    vr12, $0 */
	jmp      .L5                 /* jmp      .L5 */
.L4:
	leaq     -2000000(%rbp), %r9 /* localaddr vr17<%r9>, $4000000 */
	movslq   %r13d, %r8          /* sconv_lq vr18<%r8>, vr11 */
	movq     %r8, %rcx           /* mul_q    vr19<%rcx>, vr18<%r8>, $4000 */
	imulq    $4000, %rcx
	movq     %r9, %rdx           /* add_q    vr20<%rdx>, vr17<%r9>, vr19<%rcx> */
	addq     %rcx, %rdx
	movslq   %ebx, %rsi          /* sconv_lq vr21<%rsi>, vr12 */
	movq     $0, (%rdx,%rsi,8)   /* mul_q    vr22<%r8>, vr21<%rsi>, $8 */
	incl     %ebx
.L5:
	cmpl     %r14d, %ebx         /* cmplt_l  vr26<%r9d>, vr12, vr10 */
	jl       .L4
	incl     %r13d
.L3:
	cmpl     %r14d, %r13d        /* cmplt_l  vr29<%r9d>, vr11, vr10 */
	jl       .L2
	xorl     %r15d, %r15d        /* mov_l    vr13, $0 */
	jmp      .L7                 /* jmp      .L7 */
.L6:
	xorl     %r13d, %r13d        /* mov_l    vr11, $0 */
	jmp      .L9                 /* jmp      .L9 */
.L8:
	leaq     -6000000(%rbp), %r9 /* localaddr vr16<%r9>, $0 */
	movslq   %r13d, %r8          /* sconv_lq vr17<%r8>, vr11 */
	movq     %r8, %rcx           /* mul_q    vr18<%rcx>, vr17<%r8>, $4000 */
	imulq    $4000, %rcx
	movq     %r9, %rdx           /* add_q    vr19<%rdx>, vr16<%r9>, vr18<%rcx> */
	addq     %rcx, %rdx
	movslq   %r15d, %rsi         /* sconv_lq vr20<%rsi>, vr13 */
	movq     (%rdx,%rsi,8), %rcx /* mul_q    vr21<%r8>, vr20<%rsi>, $8 */
	movq     %rcx, -6000008(%rbp) /* mov_q    vr14, vr23<%rcx> */
	xorl     %ebx, %ebx          /* mov_l    vr12, $0 */
	jmp      .L11                /* jmp      .L11 */
.L10:
	leaq     -2000000(%rbp), %r9 /* localaddr vr16<%r9>, $4000000 */
	movslq   %r13d, %r8          /* sconv_lq vr17<%r8>, vr11 */
	movq     %r8, %rcx           /* mul_q    vr18<%rcx>, vr17<%r8>, $4000 */
	imulq    $4000, %rcx
	movq     %r9, %rdx           /* add_q    vr19<%rdx>, vr16<%r9>, vr18<%rcx> */
	addq     %rcx, %rdx
	movslq   %ebx, %rsi          /* sconv_lq vr20<%rsi>, vr12 */
	movq     %rsi, %r8           /* mul_q    vr21<%r8>, vr20<%rsi>, $8 */
	imulq    $8, %r8
	movq     %rdx, %r9           /* add_q    vr22<%r9>, vr19<%rdx>, vr21<%r8> */
	addq     %r8, %r9
	movq     (%r9), %rcx         /* mov_q    vr23<%rcx>, (vr22<%r9>) */
	leaq     -4000000(%rbp), %rsi /* localaddr vr24<%rsi>, $2000000 */
	movslq   %r15d, %rdx         /* sconv_lq vr25<%rdx>, vr13 */
	movq     %r9, -6000048(%rbp) /* spill_q  vr22<%r9>, $0 */
	movq     %rdx, %r9           /* mul_q    vr26<%r9>, vr25<%rdx>, $4000 */
	imulq    $4000, %r9
	addq     %r9, %rsi
	addq     %r8, %rsi
	movq     (%rsi), %r9         /* mov_q    vr32<%r9>, (vr30<%rsi>) */
	movq     -6000008(%rbp), %r10 /* mul_q    vr31<%r8>, vr14, vr32<%r9> */
	imulq    %r9, %r10
	movq     %r10, %r8
	movq     %rcx, %rdx          /* add_q    vr33<%rdx>, vr23<%rcx>, vr31<%r8> */
	addq     %r8, %rdx
	movq     -6000048(%rbp), %rsi /* restore_q vr22<%rsi>, $0 */
	movq     %rdx, (%rsi)        /* mov_q    (vr22<%rsi>), vr33<%rdx> */
	incl     %ebx
.L11:
	cmpl     %r14d, %ebx         /* cmplt_l  vr43<%r9d>, vr12, vr10 */
	jl       .L10
	incl     %r13d
.L9:
	cmpl     %r14d, %r13d        /* cmplt_l  vr46<%r9d>, vr11, vr10 */
	jl       .L8
	incl     %r15d
.L7:
	cmpl     %r14d, %r15d        /* cmplt_l  vr49<%r9d>, vr13, vr10 */
	jl       .L6
	xorl     %r13d, %r13d        /* mov_l    vr11, $0 */
	jmp      .L13                /* jmp      .L13 */
.L12:
	xorl     %ebx, %ebx          /* mov_l    vr12, $0 */
	jmp      .L15                /* jmp      .L15 */
.L14:
	leaq     -2000000(%rbp), %r9 /* localaddr vr16<%r9>, $4000000 */
	movslq   %r13d, %r8          /* sconv_lq vr17<%r8>, vr11 */
	movq     %r8, %rcx           /* mul_q    vr18<%rcx>, vr17<%r8>, $4000 */
	imulq    $4000, %rcx
	movq     %r9, %rdx           /* add_q    vr19<%rdx>, vr16<%r9>, vr18<%rcx> */
	addq     %rcx, %rdx
	movslq   %ebx, %rsi          /* sconv_lq vr20<%rsi>, vr12 */
	movq     (%rdx,%rsi,8), %rdi /* mul_q    vr21<%r8>, vr20<%rsi>, $8 */
	call     print_i64           /* call     print_i64 */
	call     print_nl            /* call     print_nl */
	incl     %ebx
.L15:
	cmpl     %r14d, %ebx         /* cmplt_l  vr25<%r9d>, vr12, vr10 */
	jl       .L14
	incl     %r13d
.L13:
	cmpl     %r14d, %r13d        /* cmplt_l  vr28<%r9d>, vr11, vr10 */
	jl       .L12
	xorl     %eax, %eax          /* mov_l    vr0, $0 */
	jmp      .Lmain_return       /* jmp      .Lmain_return */
.Lmain_return:
	addq     $8, %rsp            /* leave    $6000000 */
	popq     %r12
	popq     %r15
	popq     %rbx
	popq     %r13
	popq     %r14
	addq     $6000048, %rsp
	popq     %rbp
	ret                          /* ret       */
