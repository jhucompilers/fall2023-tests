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
	.section .text

	.globl read_m10x10
read_m10x10:
	pushq    %rbp                /* enter    $0 */
	movq     %rsp, %rbp
	subq     $16, %rsp
	pushq    %r12
	pushq    %rbx
	movq     %rdi, %r12          /* mov_q    vr10, vr1 */
	movl     $0, %ebx            /* mov_l    vr11, $0 */
	jmp      .L1                 /* jmp      .L1 */
.L0:
	call     read_i64            /* call     read_i64 */
	movl     %ebx, %r10d         /* sconv_lq vr13<%r9>, vr11 */
	movslq   %r10d, %r10
	movq     %r10, %r9
	movq     %r9, %r10           /* mul_q    vr14<%r8>, vr13<%r9>, $8 */
	imulq    $8, %r10
	movq     %r10, %r8
	movq     %r12, %r10          /* add_q    vr15<%rcx>, vr10, vr14<%r8> */
	addq     %r8, %r10
	movq     %r10, %rcx
	movq     %rax, (%rcx)        /* mov_q    (vr15<%rcx>), vr0 */
	movl     %ebx, %r10d         /* add_l    vr17<%edx>, vr11, $1 */
	addl     $1, %r10d
	movl     %r10d, %edx
	movl     %edx, %ebx          /* mov_l    vr11, vr17<%edx> */
.L1:
	movl     %ebx, %r10d         /* cmplt_l  vr19<%r9d>, vr11, $100 */
	cmpl     $100, %r10d
	setl     %r10b
	movzbl   %r10b, %r11d
	movl     %r11d, %r9d
	cmpl     $0, %r9d            /* cjmp_t   vr19<%r9d>, .L0 */
	jne      .L0
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
	leaq     -2400(%rbp), %r10   /* localaddr vr17<%r9>, $0 */
	movq     %r10, %r9
	movq     %r9, %rdi           /* mov_q    vr1, vr17<%r9> */
	call     read_m10x10         /* call     read_m10x10 */
	leaq     -1600(%rbp), %r10   /* localaddr vr18<%r9>, $800 */
	movq     %r10, %r9
	movq     %r9, %rdi           /* mov_q    vr1, vr18<%r9> */
	call     read_m10x10         /* call     read_m10x10 */
	movl     $0, %r14d           /* mov_l    vr11, $0 */
	jmp      .L3                 /* jmp      .L3 */
.L2:
	leaq     -800(%rbp), %r10    /* localaddr vr17<%r9>, $1600 */
	movq     %r10, %r9
	movl     %r14d, %r10d        /* sconv_lq vr18<%r8>, vr11 */
	movslq   %r10d, %r10
	movq     %r10, %r8
	movq     %r8, %r10           /* mul_q    vr19<%rcx>, vr18<%r8>, $8 */
	imulq    $8, %r10
	movq     %r10, %rcx
	movq     %r9, %r10           /* add_q    vr20<%rdx>, vr17<%r9>, vr19<%rcx> */
	addq     %rcx, %r10
	movq     %r10, %rdx
	movq     $0, (%rdx)          /* mov_q    (vr20<%rdx>), $0 */
	movl     %r14d, %r10d        /* add_l    vr22<%esi>, vr11, $1 */
	addl     $1, %r10d
	movl     %r10d, %esi
	movl     %esi, %r14d         /* mov_l    vr11, vr22<%esi> */
.L3:
	movl     %r14d, %r10d        /* cmplt_l  vr24<%r9d>, vr11, $100 */
	cmpl     $100, %r10d
	setl     %r10b
	movzbl   %r10b, %r11d
	movl     %r11d, %r9d
	cmpl     $0, %r9d            /* cjmp_t   vr24<%r9d>, .L2 */
	jne      .L2
	movl     $0, %r15d           /* mov_l    vr13, $0 */
	jmp      .L5                 /* jmp      .L5 */
.L4:
	movl     $0, %r14d           /* mov_l    vr11, $0 */
	jmp      .L7                 /* jmp      .L7 */
.L6:
	leaq     -2400(%rbp), %r10   /* localaddr vr16<%r9>, $0 */
	movq     %r10, %r9
	movl     %r14d, %r10d        /* mul_l    vr17<%r8d>, vr11, vr10 */
	imull    %r12d, %r10d
	movl     %r10d, %r8d
	movl     %r8d, %r10d         /* add_l    vr18<%ecx>, vr17<%r8d>, vr13 */
	addl     %r15d, %r10d
	movl     %r10d, %ecx
	movl     %ecx, %r10d         /* sconv_lq vr19<%rdx>, vr18<%ecx> */
	movslq   %r10d, %r10
	movq     %r10, %rdx
	movq     %rdx, %r10          /* mul_q    vr20<%rsi>, vr19<%rdx>, $8 */
	imulq    $8, %r10
	movq     %r10, %rsi
	movq     %r9, %r10           /* add_q    vr21<%r8>, vr16<%r9>, vr20<%rsi> */
	addq     %rsi, %r10
	movq     %r10, %r8
	movq     (%r8), %rcx         /* mov_q    vr22<%rcx>, (vr21<%r8>) */
	movq     %rcx, -2408(%rbp)   /* mov_q    vr14, vr22<%rcx> */
	movl     $0, %ebx            /* mov_l    vr12, $0 */
	jmp      .L9                 /* jmp      .L9 */
.L8:
	leaq     -800(%rbp), %r10    /* localaddr vr16<%r9>, $1600 */
	movq     %r10, %r9
	movl     %r14d, %r10d        /* mul_l    vr17<%r8d>, vr11, vr10 */
	imull    %r12d, %r10d
	movl     %r10d, %r8d
	movl     %r8d, %r10d         /* add_l    vr18<%ecx>, vr17<%r8d>, vr12 */
	addl     %ebx, %r10d
	movl     %r10d, %ecx
	movl     %ecx, %r10d         /* sconv_lq vr19<%rdx>, vr18<%ecx> */
	movslq   %r10d, %r10
	movq     %r10, %rdx
	movq     %rdx, %r10          /* mul_q    vr20<%rsi>, vr19<%rdx>, $8 */
	imulq    $8, %r10
	movq     %r10, %rsi
	movq     %r9, %r10           /* add_q    vr21<%r8>, vr16<%r9>, vr20<%rsi> */
	addq     %rsi, %r10
	movq     %r10, %r8
	movq     (%r8), %rcx         /* mov_q    vr22<%rcx>, (vr21<%r8>) */
	leaq     -1600(%rbp), %r10   /* localaddr vr23<%rdx>, $800 */
	movq     %r10, %rdx
	movl     %r15d, %r10d        /* mul_l    vr24<%r9d>, vr13, vr10 */
	imull    %r12d, %r10d
	movl     %r10d, %r9d
	movl     %r9d, %r10d         /* add_l    vr25<%esi>, vr24<%r9d>, vr12 */
	addl     %ebx, %r10d
	movl     %r10d, %esi
	movl     %esi, %r10d         /* sconv_lq vr26<%r9>, vr25<%esi> */
	movslq   %r10d, %r10
	movq     %r10, %r9
	movq     %r9, %r10           /* mul_q    vr27<%rsi>, vr26<%r9>, $8 */
	imulq    $8, %r10
	movq     %r10, %rsi
	movq     %rdx, %r10          /* add_q    vr28<%r9>, vr23<%rdx>, vr27<%rsi> */
	addq     %rsi, %r10
	movq     %r10, %r9
	movq     (%r9), %rdx         /* mov_q    vr30<%rdx>, (vr28<%r9>) */
	movq     -2408(%rbp), %r10   /* mul_q    vr29<%rsi>, vr14, vr30<%rdx> */
	imulq    %rdx, %r10
	movq     %r10, %rsi
	movq     %rcx, %r10          /* add_q    vr31<%r9>, vr22<%rcx>, vr29<%rsi> */
	addq     %rsi, %r10
	movq     %r10, %r9
	movq     %r9, (%r8)          /* mov_q    (vr21<%r8>), vr31<%r9> */
	movl     %ebx, %r10d         /* add_l    vr39<%edx>, vr12, $1 */
	addl     $1, %r10d
	movl     %r10d, %edx
	movl     %edx, %ebx          /* mov_l    vr12, vr39<%edx> */
.L9:
	movl     %ebx, %r10d         /* cmplt_l  vr40<%r9d>, vr12, vr10 */
	cmpl     %r12d, %r10d
	setl     %r10b
	movzbl   %r10b, %r11d
	movl     %r11d, %r9d
	cmpl     $0, %r9d            /* cjmp_t   vr40<%r9d>, .L8 */
	jne      .L8
	movl     %r14d, %r10d        /* add_l    vr42<%r9d>, vr11, $1 */
	addl     $1, %r10d
	movl     %r10d, %r9d
	movl     %r9d, %r14d         /* mov_l    vr11, vr42<%r9d> */
.L7:
	movl     %r14d, %r10d        /* cmplt_l  vr43<%r9d>, vr11, vr10 */
	cmpl     %r12d, %r10d
	setl     %r10b
	movzbl   %r10b, %r11d
	movl     %r11d, %r9d
	cmpl     $0, %r9d            /* cjmp_t   vr43<%r9d>, .L6 */
	jne      .L6
	movl     %r15d, %r10d        /* add_l    vr45<%r9d>, vr13, $1 */
	addl     $1, %r10d
	movl     %r10d, %r9d
	movl     %r9d, %r15d         /* mov_l    vr13, vr45<%r9d> */
.L5:
	movl     %r15d, %r10d        /* cmplt_l  vr46<%r9d>, vr13, vr10 */
	cmpl     %r12d, %r10d
	setl     %r10b
	movzbl   %r10b, %r11d
	movl     %r11d, %r9d
	cmpl     $0, %r9d            /* cjmp_t   vr46<%r9d>, .L4 */
	jne      .L4
	movl     $0, %r14d           /* mov_l    vr11, $0 */
	jmp      .L11                /* jmp      .L11 */
.L10:
	leaq     -800(%rbp), %r10    /* localaddr vr16<%r9>, $1600 */
	movq     %r10, %r9
	movl     %r14d, %r10d        /* sconv_lq vr17<%r8>, vr11 */
	movslq   %r10d, %r10
	movq     %r10, %r8
	movq     %r8, %r10           /* mul_q    vr18<%rcx>, vr17<%r8>, $8 */
	imulq    $8, %r10
	movq     %r10, %rcx
	movq     %r9, %r10           /* add_q    vr19<%rdx>, vr16<%r9>, vr18<%rcx> */
	addq     %rcx, %r10
	movq     %r10, %rdx
	movq     (%rdx), %rdi        /* mov_q    vr1, (vr19<%rdx>) */
	call     print_i64           /* call     print_i64 */
	call     print_nl            /* call     print_nl */
	movl     %r14d, %r10d        /* add_l    vr21<%r9d>, vr11, $1 */
	addl     $1, %r10d
	movl     %r10d, %r9d
	movl     %r9d, %r14d         /* mov_l    vr11, vr21<%r9d> */
.L11:
	movl     %r14d, %r10d        /* cmplt_l  vr23<%r9d>, vr11, $100 */
	cmpl     $100, %r10d
	setl     %r10b
	movzbl   %r10b, %r11d
	movl     %r11d, %r9d
	cmpl     $0, %r9d            /* cjmp_t   vr23<%r9d>, .L10 */
	jne      .L10
	movl     $0, %eax            /* mov_l    vr0, $0 */
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
