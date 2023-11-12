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
/* allocate machine register %rbx to variable 'j' (vr12), rank is 51640 */
/* allocate machine register %r12 to variable 'val' (vr15), rank is 32000 */
/* allocate machine register %r13 to variable 'i' (vr11), rank is 18542 */
/* allocate machine register %r14 to variable 'M' (vr10), rank is 9261 */
/* allocate machine register %r15 to variable 'k' (vr13), rank is 8461 */
/* Function 'main': placing memory variables at offset -2400 from %rbp */
/* Function 'main' uses 40 total bytes of memory storage for vregs */
/* Function 'main': placing vreg storage at offset -2440 from %rbp */
/* Function 'main': allocating space for 1 register spills at offset -2448 from %rbp */
/* Function 'main': 2448 bytes of local storage allocated in stack frame */

	.globl main
main:
	pushq    %rbp                /* enter    $2400 */
	movq     %rsp, %rbp
	subq     $2448, %rsp
	pushq    %r14
	pushq    %r13
	pushq    %rbx
	pushq    %r15
	pushq    %r12
	subq     $8, %rsp
	movl     $10, %r14d          /* mov_l    vr10, $10 */
	leaq     -2400(%rbp), %r10   /* localaddr vr17<%r9>, $0 */
	movq     %r10, %r9
	movq     %r9, %r10           /* add_q    vr21<%r8>, vr17<%r9>, $0 */
	addq     $0, %r10
	movq     %r10, %r8
	movq     %r8, %r10           /* add_q    vr25<%rcx>, vr21<%r8>, $0 */
	addq     $0, %r10
	movq     %r10, %rcx
	movq     %rcx, %rdi          /* mov_q    vr1, vr25<%rcx> */
	call     read_m10x10         /* call     read_m10x10 */
	leaq     -1600(%rbp), %r10   /* localaddr vr26<%r9>, $800 */
	movq     %r10, %r9
	movq     %r9, %r10           /* add_q    vr30<%r8>, vr26<%r9>, $0 */
	addq     $0, %r10
	movq     %r10, %r8
	movq     %r8, %r10           /* add_q    vr34<%rcx>, vr30<%r8>, $0 */
	addq     $0, %r10
	movq     %r10, %rcx
	movq     %rcx, %rdi          /* mov_q    vr1, vr34<%rcx> */
	call     read_m10x10         /* call     read_m10x10 */
	movl     $0, %r13d           /* mov_l    vr11, $0 */
	jmp      .L3                 /* jmp      .L3 */
.L2:
	movl     $0, %ebx            /* mov_l    vr12, $0 */
	jmp      .L5                 /* jmp      .L5 */
.L4:
	leaq     -800(%rbp), %r10    /* localaddr vr17<%r9>, $1600 */
	movq     %r10, %r9
	movl     %r13d, %r10d        /* sconv_lq vr18<%r8>, vr11 */
	movslq   %r10d, %r10
	movq     %r10, %r8
	movq     %r8, %r10           /* mul_q    vr19<%rcx>, vr18<%r8>, $80 */
	imulq    $80, %r10
	movq     %r10, %rcx
	movq     %r9, %r10           /* add_q    vr20<%rdx>, vr17<%r9>, vr19<%rcx> */
	addq     %rcx, %r10
	movq     %r10, %rdx
	movl     %ebx, %r10d         /* sconv_lq vr21<%rsi>, vr12 */
	movslq   %r10d, %r10
	movq     %r10, %rsi
	movq     %rsi, %r10          /* mul_q    vr22<%r8>, vr21<%rsi>, $8 */
	imulq    $8, %r10
	movq     %r10, %r8
	movq     %rdx, %r10          /* add_q    vr23<%r9>, vr20<%rdx>, vr22<%r8> */
	addq     %r8, %r10
	movq     %r10, %r9
	movq     $0, (%r9)           /* mov_q    (vr23<%r9>), $0 */
	movl     %ebx, %r10d         /* add_l    vr25<%ecx>, vr12, $1 */
	addl     $1, %r10d
	movl     %r10d, %ecx
	movl     %ecx, %ebx          /* mov_l    vr12, vr25<%ecx> */
.L5:
	movl     %ebx, %r10d         /* cmplt_l  vr26<%r9d>, vr12, vr10 */
	cmpl     %r14d, %r10d
	setl     %r10b
	movzbl   %r10b, %r11d
	movl     %r11d, %r9d
	cmpl     $0, %r9d            /* cjmp_t   vr26<%r9d>, .L4 */
	jne      .L4
	movl     %r13d, %r10d        /* add_l    vr28<%r9d>, vr11, $1 */
	addl     $1, %r10d
	movl     %r10d, %r9d
	movl     %r9d, %r13d         /* mov_l    vr11, vr28<%r9d> */
.L3:
	movl     %r13d, %r10d        /* cmplt_l  vr29<%r9d>, vr11, vr10 */
	cmpl     %r14d, %r10d
	setl     %r10b
	movzbl   %r10b, %r11d
	movl     %r11d, %r9d
	cmpl     $0, %r9d            /* cjmp_t   vr29<%r9d>, .L2 */
	jne      .L2
	movl     $0, %r15d           /* mov_l    vr13, $0 */
	jmp      .L7                 /* jmp      .L7 */
.L6:
	movl     $0, %r13d           /* mov_l    vr11, $0 */
	jmp      .L9                 /* jmp      .L9 */
.L8:
	leaq     -2400(%rbp), %r10   /* localaddr vr16<%r9>, $0 */
	movq     %r10, %r9
	movl     %r13d, %r10d        /* sconv_lq vr17<%r8>, vr11 */
	movslq   %r10d, %r10
	movq     %r10, %r8
	movq     %r8, %r10           /* mul_q    vr18<%rcx>, vr17<%r8>, $80 */
	imulq    $80, %r10
	movq     %r10, %rcx
	movq     %r9, %r10           /* add_q    vr19<%rdx>, vr16<%r9>, vr18<%rcx> */
	addq     %rcx, %r10
	movq     %r10, %rdx
	movl     %r15d, %r10d        /* sconv_lq vr20<%rsi>, vr13 */
	movslq   %r10d, %r10
	movq     %r10, %rsi
	movq     %rsi, %r10          /* mul_q    vr21<%r8>, vr20<%rsi>, $8 */
	imulq    $8, %r10
	movq     %r10, %r8
	movq     %rdx, %r10          /* add_q    vr22<%r9>, vr19<%rdx>, vr21<%r8> */
	addq     %r8, %r10
	movq     %r10, %r9
	movq     (%r9), %rcx         /* mov_q    vr23<%rcx>, (vr22<%r9>) */
	movq     %rcx, -2408(%rbp)   /* mov_q    vr14, vr23<%rcx> */
	movl     $0, %ebx            /* mov_l    vr12, $0 */
	jmp      .L11                /* jmp      .L11 */
.L10:
	leaq     -800(%rbp), %r10    /* localaddr vr16<%r9>, $1600 */
	movq     %r10, %r9
	movl     %r13d, %r10d        /* sconv_lq vr17<%r8>, vr11 */
	movslq   %r10d, %r10
	movq     %r10, %r8
	movq     %r8, %r10           /* mul_q    vr18<%rcx>, vr17<%r8>, $80 */
	imulq    $80, %r10
	movq     %r10, %rcx
	movq     %r9, %r10           /* add_q    vr19<%rdx>, vr16<%r9>, vr18<%rcx> */
	addq     %rcx, %r10
	movq     %r10, %rdx
	movl     %ebx, %r10d         /* sconv_lq vr20<%rsi>, vr12 */
	movslq   %r10d, %r10
	movq     %r10, %rsi
	movq     %rsi, %r10          /* mul_q    vr21<%r8>, vr20<%rsi>, $8 */
	imulq    $8, %r10
	movq     %r10, %r8
	movq     %rdx, %r10          /* add_q    vr22<%r9>, vr19<%rdx>, vr21<%r8> */
	addq     %r8, %r10
	movq     %r10, %r9
	movq     (%r9), %rcx         /* mov_q    vr23<%rcx>, (vr22<%r9>) */
	leaq     -1600(%rbp), %r10   /* localaddr vr24<%rsi>, $800 */
	movq     %r10, %rsi
	movl     %r15d, %r10d        /* sconv_lq vr25<%rdx>, vr13 */
	movslq   %r10d, %r10
	movq     %r10, %rdx
	movq     %r9, -2448(%rbp)    /* spill_q  vr22<%r9>, $0 */
	movq     %rdx, %r10          /* mul_q    vr26<%r9>, vr25<%rdx>, $80 */
	imulq    $80, %r10
	movq     %r10, %r9
	movq     %rsi, %r10          /* add_q    vr27<%rdx>, vr24<%rsi>, vr26<%r9> */
	addq     %r9, %r10
	movq     %r10, %rdx
	movq     %rdx, %r10          /* add_q    vr30<%rsi>, vr27<%rdx>, vr21<%r8> */
	addq     %r8, %r10
	movq     %r10, %rsi
	movq     (%rsi), %r9         /* mov_q    vr32<%r9>, (vr30<%rsi>) */
	movq     -2408(%rbp), %r10   /* mul_q    vr31<%r8>, vr14, vr32<%r9> */
	imulq    %r9, %r10
	movq     %r10, %r8
	movq     %rcx, %r10          /* add_q    vr33<%rdx>, vr23<%rcx>, vr31<%r8> */
	addq     %r8, %r10
	movq     %r10, %rdx
	movq     -2448(%rbp), %rsi   /* restore_q vr22<%rsi>, $0 */
	movq     %rdx, (%rsi)        /* mov_q    (vr22<%rsi>), vr33<%rdx> */
	movl     %ebx, %r10d         /* add_l    vr42<%r9d>, vr12, $1 */
	addl     $1, %r10d
	movl     %r10d, %r9d
	movl     %r9d, %ebx          /* mov_l    vr12, vr42<%r9d> */
.L11:
	movl     %ebx, %r10d         /* cmplt_l  vr43<%r9d>, vr12, vr10 */
	cmpl     %r14d, %r10d
	setl     %r10b
	movzbl   %r10b, %r11d
	movl     %r11d, %r9d
	cmpl     $0, %r9d            /* cjmp_t   vr43<%r9d>, .L10 */
	jne      .L10
	movl     %r13d, %r10d        /* add_l    vr45<%r9d>, vr11, $1 */
	addl     $1, %r10d
	movl     %r10d, %r9d
	movl     %r9d, %r13d         /* mov_l    vr11, vr45<%r9d> */
.L9:
	movl     %r13d, %r10d        /* cmplt_l  vr46<%r9d>, vr11, vr10 */
	cmpl     %r14d, %r10d
	setl     %r10b
	movzbl   %r10b, %r11d
	movl     %r11d, %r9d
	cmpl     $0, %r9d            /* cjmp_t   vr46<%r9d>, .L8 */
	jne      .L8
	movl     %r15d, %r10d        /* add_l    vr48<%r9d>, vr13, $1 */
	addl     $1, %r10d
	movl     %r10d, %r9d
	movl     %r9d, %r15d         /* mov_l    vr13, vr48<%r9d> */
.L7:
	movl     %r15d, %r10d        /* cmplt_l  vr49<%r9d>, vr13, vr10 */
	cmpl     %r14d, %r10d
	setl     %r10b
	movzbl   %r10b, %r11d
	movl     %r11d, %r9d
	cmpl     $0, %r9d            /* cjmp_t   vr49<%r9d>, .L6 */
	jne      .L6
	movl     $0, %r13d           /* mov_l    vr11, $0 */
	jmp      .L13                /* jmp      .L13 */
.L12:
	movl     $0, %ebx            /* mov_l    vr12, $0 */
	jmp      .L15                /* jmp      .L15 */
.L14:
	leaq     -800(%rbp), %r10    /* localaddr vr16<%r9>, $1600 */
	movq     %r10, %r9
	movl     %r13d, %r10d        /* sconv_lq vr17<%r8>, vr11 */
	movslq   %r10d, %r10
	movq     %r10, %r8
	movq     %r8, %r10           /* mul_q    vr18<%rcx>, vr17<%r8>, $80 */
	imulq    $80, %r10
	movq     %r10, %rcx
	movq     %r9, %r10           /* add_q    vr19<%rdx>, vr16<%r9>, vr18<%rcx> */
	addq     %rcx, %r10
	movq     %r10, %rdx
	movl     %ebx, %r10d         /* sconv_lq vr20<%rsi>, vr12 */
	movslq   %r10d, %r10
	movq     %r10, %rsi
	movq     %rsi, %r10          /* mul_q    vr21<%r8>, vr20<%rsi>, $8 */
	imulq    $8, %r10
	movq     %r10, %r8
	movq     %rdx, %r10          /* add_q    vr22<%r9>, vr19<%rdx>, vr21<%r8> */
	addq     %r8, %r10
	movq     %r10, %r9
	movq     (%r9), %rdi         /* mov_q    vr1, (vr22<%r9>) */
	call     print_i64           /* call     print_i64 */
	call     print_nl            /* call     print_nl */
	movl     %ebx, %r10d         /* add_l    vr24<%r9d>, vr12, $1 */
	addl     $1, %r10d
	movl     %r10d, %r9d
	movl     %r9d, %ebx          /* mov_l    vr12, vr24<%r9d> */
.L15:
	movl     %ebx, %r10d         /* cmplt_l  vr25<%r9d>, vr12, vr10 */
	cmpl     %r14d, %r10d
	setl     %r10b
	movzbl   %r10b, %r11d
	movl     %r11d, %r9d
	cmpl     $0, %r9d            /* cjmp_t   vr25<%r9d>, .L14 */
	jne      .L14
	movl     %r13d, %r10d        /* add_l    vr27<%r9d>, vr11, $1 */
	addl     $1, %r10d
	movl     %r10d, %r9d
	movl     %r9d, %r13d         /* mov_l    vr11, vr27<%r9d> */
.L13:
	movl     %r13d, %r10d        /* cmplt_l  vr28<%r9d>, vr11, vr10 */
	cmpl     %r14d, %r10d
	setl     %r10b
	movzbl   %r10b, %r11d
	movl     %r11d, %r9d
	cmpl     $0, %r9d            /* cjmp_t   vr28<%r9d>, .L12 */
	jne      .L12
	movl     $0, %eax            /* mov_l    vr0, $0 */
	jmp      .Lmain_return       /* jmp      .Lmain_return */
.Lmain_return:
	addq     $8, %rsp            /* leave    $2400 */
	popq     %r12
	popq     %r15
	popq     %rbx
	popq     %r13
	popq     %r14
	addq     $2448, %rsp
	popq     %rbp
	ret                          /* ret       */
