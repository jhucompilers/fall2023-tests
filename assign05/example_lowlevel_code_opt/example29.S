/* variable 'arr' allocated vreg 10 */
/* variable 'i' allocated vreg 11 */
/* Function 'read_m500x500' uses 0 bytes of memory and 12 virtual registers */
/* variable 'a' allocated 2000000 bytes of storage at offset 0 */
/* variable 'b' allocated 2000000 bytes of storage at offset 2000000 */
/* variable 'c' allocated 2000000 bytes of storage at offset 4000000 */
/* variable 'M' allocated vreg 10 */
/* variable 'NELTS' allocated vreg 11 */
/* variable 'SZ' allocated vreg 12 */
/* variable 'i' allocated vreg 13 */
/* variable 'j' allocated vreg 14 */
/* variable 'k' allocated vreg 15 */
/* variable 'r' allocated vreg 16 */
/* variable 'val' allocated vreg 17 */
/* Function 'main' uses 6000000 bytes of memory and 18 virtual registers */
/* allocate machine register %rbx to variable 'i' (vr11), rank is 81 */
/* allocate machine register %r12 to variable 'arr' (vr10), rank is 20 */
/* Function 'read_m500x500' uses 16 total bytes of memory storage for vregs */
/* Function 'read_m500x500': placing vreg storage at offset -16 from %rbp */
/* Function 'read_m500x500': 16 bytes of local storage allocated in stack frame */
	.section .text

	.globl read_m500x500
read_m500x500:
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
	movl     %ebx, %r10d         /* cmplt_l  vr19<%r9d>, vr11, $250000 */
	cmpl     $250000, %r10d
	setl     %r10b
	movzbl   %r10b, %r11d
	movl     %r11d, %r9d
	cmpl     $0, %r9d            /* cjmp_t   vr19<%r9d>, .L0 */
	jne      .L0
	jmp      .Lread_m500x500_return /* jmp      .Lread_m500x500_return */
.Lread_m500x500_return:
	popq     %rbx                /* leave    $0 */
	popq     %r12
	addq     $16, %rsp
	popq     %rbp
	ret                          /* ret       */
/* allocate machine register %rbx to variable 'j' (vr14), rank is 48400 */
/* allocate machine register %r12 to variable 'M' (vr10), rank is 32821 */
/* allocate machine register %r13 to variable 'val' (vr17), rank is 32000 */
/* allocate machine register %r14 to variable 'i' (vr13), rank is 17782 */
/* allocate machine register %r15 to variable 'k' (vr15), rank is 8461 */
/* Function 'main': placing memory variables at offset -6000000 from %rbp */
/* Function 'main' uses 48 total bytes of memory storage for vregs */
/* Function 'main': placing vreg storage at offset -6000048 from %rbp */
/* Function 'main': 6000048 bytes of local storage allocated in stack frame */

	.globl main
main:
	pushq    %rbp                /* enter    $6000000 */
	movq     %rsp, %rbp
	subq     $6000048, %rsp
	pushq    %r12
	pushq    %r14
	pushq    %rbx
	pushq    %r15
	pushq    %r13
	subq     $8, %rsp
	movl     $500, %r12d         /* mov_l    vr10, $500 */
	movl     $250000, -6000040(%rbp) /* mov_l    vr11, $250000 */
	leaq     -6000000(%rbp), %r10 /* localaddr vr20<%r9>, $0 */
	movq     %r10, %r9
	movq     %r9, %rdi           /* mov_q    vr1, vr20<%r9> */
	call     read_m500x500       /* call     read_m500x500 */
	leaq     -4000000(%rbp), %r10 /* localaddr vr21<%r9>, $2000000 */
	movq     %r10, %r9
	movq     %r9, %rdi           /* mov_q    vr1, vr21<%r9> */
	call     read_m500x500       /* call     read_m500x500 */
	movl     $0, %r14d           /* mov_l    vr13, $0 */
	jmp      .L3                 /* jmp      .L3 */
.L2:
	leaq     -2000000(%rbp), %r10 /* localaddr vr19<%r9>, $4000000 */
	movq     %r10, %r9
	movl     %r14d, %r10d        /* sconv_lq vr20<%r8>, vr13 */
	movslq   %r10d, %r10
	movq     %r10, %r8
	movq     %r8, %r10           /* mul_q    vr21<%rcx>, vr20<%r8>, $8 */
	imulq    $8, %r10
	movq     %r10, %rcx
	movq     %r9, %r10           /* add_q    vr22<%rdx>, vr19<%r9>, vr21<%rcx> */
	addq     %rcx, %r10
	movq     %r10, %rdx
	movq     $0, (%rdx)          /* mov_q    (vr22<%rdx>), $0 */
	movl     %r14d, %r10d        /* add_l    vr24<%esi>, vr13, $1 */
	addl     $1, %r10d
	movl     %r10d, %esi
	movl     %esi, %r14d         /* mov_l    vr13, vr24<%esi> */
.L3:
	movl     %r14d, %r10d        /* cmplt_l  vr25<%r9d>, vr13, vr11 */
	cmpl     -6000040(%rbp), %r10d
	setl     %r10b
	movzbl   %r10b, %r11d
	movl     %r11d, %r9d
	cmpl     $0, %r9d            /* cjmp_t   vr25<%r9d>, .L2 */
	jne      .L2
	movl     $0, %r15d           /* mov_l    vr15, $0 */
	jmp      .L5                 /* jmp      .L5 */
.L4:
	movl     $0, %r14d           /* mov_l    vr13, $0 */
	jmp      .L7                 /* jmp      .L7 */
.L6:
	leaq     -6000000(%rbp), %r10 /* localaddr vr18<%r9>, $0 */
	movq     %r10, %r9
	movl     %r14d, %r10d        /* mul_l    vr19<%r8d>, vr13, vr10 */
	imull    %r12d, %r10d
	movl     %r10d, %r8d
	movl     %r8d, %r10d         /* add_l    vr20<%ecx>, vr19<%r8d>, vr15 */
	addl     %r15d, %r10d
	movl     %r10d, %ecx
	movl     %ecx, %r10d         /* sconv_lq vr21<%rdx>, vr20<%ecx> */
	movslq   %r10d, %r10
	movq     %r10, %rdx
	movq     %rdx, %r10          /* mul_q    vr22<%rsi>, vr21<%rdx>, $8 */
	imulq    $8, %r10
	movq     %r10, %rsi
	movq     %r9, %r10           /* add_q    vr23<%r8>, vr18<%r9>, vr22<%rsi> */
	addq     %rsi, %r10
	movq     %r10, %r8
	movq     (%r8), %rcx         /* mov_q    vr24<%rcx>, (vr23<%r8>) */
	movq     %rcx, -6000008(%rbp) /* mov_q    vr16, vr24<%rcx> */
	movl     $0, %ebx            /* mov_l    vr14, $0 */
	jmp      .L9                 /* jmp      .L9 */
.L8:
	leaq     -2000000(%rbp), %r10 /* localaddr vr18<%r9>, $4000000 */
	movq     %r10, %r9
	movl     %r14d, %r10d        /* mul_l    vr19<%r8d>, vr13, vr10 */
	imull    %r12d, %r10d
	movl     %r10d, %r8d
	movl     %r8d, %r10d         /* add_l    vr20<%ecx>, vr19<%r8d>, vr14 */
	addl     %ebx, %r10d
	movl     %r10d, %ecx
	movl     %ecx, %r10d         /* sconv_lq vr21<%rdx>, vr20<%ecx> */
	movslq   %r10d, %r10
	movq     %r10, %rdx
	movq     %rdx, %r10          /* mul_q    vr22<%rsi>, vr21<%rdx>, $8 */
	imulq    $8, %r10
	movq     %r10, %rsi
	movq     %r9, %r10           /* add_q    vr23<%r8>, vr18<%r9>, vr22<%rsi> */
	addq     %rsi, %r10
	movq     %r10, %r8
	movq     (%r8), %rcx         /* mov_q    vr24<%rcx>, (vr23<%r8>) */
	leaq     -4000000(%rbp), %r10 /* localaddr vr25<%rdx>, $2000000 */
	movq     %r10, %rdx
	movl     %r15d, %r10d        /* mul_l    vr26<%r9d>, vr15, vr10 */
	imull    %r12d, %r10d
	movl     %r10d, %r9d
	movl     %r9d, %r10d         /* add_l    vr27<%esi>, vr26<%r9d>, vr14 */
	addl     %ebx, %r10d
	movl     %r10d, %esi
	movl     %esi, %r10d         /* sconv_lq vr28<%r9>, vr27<%esi> */
	movslq   %r10d, %r10
	movq     %r10, %r9
	movq     %r9, %r10           /* mul_q    vr29<%rsi>, vr28<%r9>, $8 */
	imulq    $8, %r10
	movq     %r10, %rsi
	movq     %rdx, %r10          /* add_q    vr30<%r9>, vr25<%rdx>, vr29<%rsi> */
	addq     %rsi, %r10
	movq     %r10, %r9
	movq     (%r9), %rdx         /* mov_q    vr32<%rdx>, (vr30<%r9>) */
	movq     -6000008(%rbp), %r10 /* mul_q    vr31<%rsi>, vr16, vr32<%rdx> */
	imulq    %rdx, %r10
	movq     %r10, %rsi
	movq     %rcx, %r10          /* add_q    vr33<%r9>, vr24<%rcx>, vr31<%rsi> */
	addq     %rsi, %r10
	movq     %r10, %r9
	movq     %r9, (%r8)          /* mov_q    (vr23<%r8>), vr33<%r9> */
	movl     %ebx, %r10d         /* add_l    vr41<%edx>, vr14, $1 */
	addl     $1, %r10d
	movl     %r10d, %edx
	movl     %edx, %ebx          /* mov_l    vr14, vr41<%edx> */
.L9:
	movl     %ebx, %r10d         /* cmplt_l  vr42<%r9d>, vr14, vr10 */
	cmpl     %r12d, %r10d
	setl     %r10b
	movzbl   %r10b, %r11d
	movl     %r11d, %r9d
	cmpl     $0, %r9d            /* cjmp_t   vr42<%r9d>, .L8 */
	jne      .L8
	movl     %r14d, %r10d        /* add_l    vr44<%r9d>, vr13, $1 */
	addl     $1, %r10d
	movl     %r10d, %r9d
	movl     %r9d, %r14d         /* mov_l    vr13, vr44<%r9d> */
.L7:
	movl     %r14d, %r10d        /* cmplt_l  vr45<%r9d>, vr13, vr10 */
	cmpl     %r12d, %r10d
	setl     %r10b
	movzbl   %r10b, %r11d
	movl     %r11d, %r9d
	cmpl     $0, %r9d            /* cjmp_t   vr45<%r9d>, .L6 */
	jne      .L6
	movl     %r15d, %r10d        /* add_l    vr47<%r9d>, vr15, $1 */
	addl     $1, %r10d
	movl     %r10d, %r9d
	movl     %r9d, %r15d         /* mov_l    vr15, vr47<%r9d> */
.L5:
	movl     %r15d, %r10d        /* cmplt_l  vr48<%r9d>, vr15, vr10 */
	cmpl     %r12d, %r10d
	setl     %r10b
	movzbl   %r10b, %r11d
	movl     %r11d, %r9d
	cmpl     $0, %r9d            /* cjmp_t   vr48<%r9d>, .L4 */
	jne      .L4
	movl     $0, %r14d           /* mov_l    vr13, $0 */
	jmp      .L11                /* jmp      .L11 */
.L10:
	leaq     -2000000(%rbp), %r10 /* localaddr vr18<%r9>, $4000000 */
	movq     %r10, %r9
	movl     %r14d, %r10d        /* sconv_lq vr19<%r8>, vr13 */
	movslq   %r10d, %r10
	movq     %r10, %r8
	movq     %r8, %r10           /* mul_q    vr20<%rcx>, vr19<%r8>, $8 */
	imulq    $8, %r10
	movq     %r10, %rcx
	movq     %r9, %r10           /* add_q    vr21<%rdx>, vr18<%r9>, vr20<%rcx> */
	addq     %rcx, %r10
	movq     %r10, %rdx
	movq     (%rdx), %rdi        /* mov_q    vr1, (vr21<%rdx>) */
	call     print_i64           /* call     print_i64 */
	call     print_nl            /* call     print_nl */
	movl     %r14d, %r10d        /* add_l    vr23<%r9d>, vr13, $1 */
	addl     $1, %r10d
	movl     %r10d, %r9d
	movl     %r9d, %r14d         /* mov_l    vr13, vr23<%r9d> */
.L11:
	movl     %r14d, %r10d        /* cmplt_l  vr25<%r9d>, vr13, $250000 */
	cmpl     $250000, %r10d
	setl     %r10b
	movzbl   %r10b, %r11d
	movl     %r11d, %r9d
	cmpl     $0, %r9d            /* cjmp_t   vr25<%r9d>, .L10 */
	jne      .L10
	movl     $0, %eax            /* mov_l    vr0, $0 */
	jmp      .Lmain_return       /* jmp      .Lmain_return */
.Lmain_return:
	addq     $8, %rsp            /* leave    $6000000 */
	popq     %r13
	popq     %r15
	popq     %rbx
	popq     %r14
	popq     %r12
	addq     $6000048, %rsp
	popq     %rbp
	ret                          /* ret       */
