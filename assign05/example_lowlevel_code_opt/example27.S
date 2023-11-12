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
	movl     $0, %r12d           /* mov_l    vr10, $0 */
	jmp      .L1                 /* jmp      .L1 */
.L0:
	movl     $0, %r13d           /* mov_l    vr12, $0 */
	movl     $0, %ebx            /* mov_l    vr11, $0 */
	jmp      .L3                 /* jmp      .L3 */
.L2:
	leaq     -400(%rbp), %r10    /* localaddr vr13<%r9>, $0 */
	movq     %r10, %r9
	movl     %r12d, %r10d        /* sconv_lq vr14<%r8>, vr10 */
	movslq   %r10d, %r10
	movq     %r10, %r8
	movq     %r8, %r10           /* mul_q    vr15<%rcx>, vr14<%r8>, $40 */
	imulq    $40, %r10
	movq     %r10, %rcx
	movq     %r9, %r10           /* add_q    vr16<%rdx>, vr13<%r9>, vr15<%rcx> */
	addq     %rcx, %r10
	movq     %r10, %rdx
	movl     %ebx, %r10d         /* sconv_lq vr17<%rsi>, vr11 */
	movslq   %r10d, %r10
	movq     %r10, %rsi
	movq     %rsi, %r10          /* mul_q    vr18<%r8>, vr17<%rsi>, $4 */
	imulq    $4, %r10
	movq     %r10, %r8
	movq     %rdx, %r10          /* add_q    vr19<%r9>, vr16<%rdx>, vr18<%r8> */
	addq     %r8, %r10
	movq     %r10, %r9
	movl     %r13d, (%r9)        /* mov_l    (vr19<%r9d>), vr12 */
	movl     %r13d, %r10d        /* add_l    vr20<%ecx>, vr12, vr10 */
	addl     %r12d, %r10d
	movl     %r10d, %ecx
	movl     %ecx, %r13d         /* mov_l    vr12, vr20<%ecx> */
	movl     %ebx, %r10d         /* add_l    vr22<%esi>, vr11, $1 */
	addl     $1, %r10d
	movl     %r10d, %esi
	movl     %esi, %ebx          /* mov_l    vr11, vr22<%esi> */
.L3:
	movl     %ebx, %r10d         /* cmplte_l vr24<%r9d>, vr11, $9 */
	cmpl     $9, %r10d
	setle    %r10b
	movzbl   %r10b, %r11d
	movl     %r11d, %r9d
	cmpl     $0, %r9d            /* cjmp_t   vr24<%r9d>, .L2 */
	jne      .L2
	movl     %r12d, %r10d        /* add_l    vr26<%r9d>, vr10, $1 */
	addl     $1, %r10d
	movl     %r10d, %r9d
	movl     %r9d, %r12d         /* mov_l    vr10, vr26<%r9d> */
.L1:
	movl     %r12d, %r10d        /* cmplte_l vr28<%r9d>, vr10, $9 */
	cmpl     $9, %r10d
	setle    %r10b
	movzbl   %r10b, %r11d
	movl     %r11d, %r9d
	cmpl     $0, %r9d            /* cjmp_t   vr28<%r9d>, .L0 */
	jne      .L0
	movl     $0, %r12d           /* mov_l    vr10, $0 */
	jmp      .L5                 /* jmp      .L5 */
.L4:
	movl     $0, %ebx            /* mov_l    vr11, $0 */
	jmp      .L7                 /* jmp      .L7 */
.L6:
	leaq     -400(%rbp), %r10    /* localaddr vr13<%r9>, $0 */
	movq     %r10, %r9
	movl     %r12d, %r10d        /* sconv_lq vr14<%r8>, vr10 */
	movslq   %r10d, %r10
	movq     %r10, %r8
	movq     %r8, %r10           /* mul_q    vr15<%rcx>, vr14<%r8>, $40 */
	imulq    $40, %r10
	movq     %r10, %rcx
	movq     %r9, %r10           /* add_q    vr16<%rdx>, vr13<%r9>, vr15<%rcx> */
	addq     %rcx, %r10
	movq     %r10, %rdx
	movl     %ebx, %r10d         /* sconv_lq vr17<%rsi>, vr11 */
	movslq   %r10d, %r10
	movq     %r10, %rsi
	movq     %rsi, %r10          /* mul_q    vr18<%r8>, vr17<%rsi>, $4 */
	imulq    $4, %r10
	movq     %r10, %r8
	movq     %rdx, %r10          /* add_q    vr19<%r9>, vr16<%rdx>, vr18<%r8> */
	addq     %r8, %r10
	movq     %r10, %r9
	movl     (%r9), %edi         /* mov_l    vr1, (vr19<%r9d>) */
	call     print_i32           /* call     print_i32 */
	call     print_space         /* call     print_space */
	movl     %ebx, %r10d         /* add_l    vr21<%r9d>, vr11, $1 */
	addl     $1, %r10d
	movl     %r10d, %r9d
	movl     %r9d, %ebx          /* mov_l    vr11, vr21<%r9d> */
.L7:
	movl     %ebx, %r10d         /* cmplte_l vr23<%r9d>, vr11, $9 */
	cmpl     $9, %r10d
	setle    %r10b
	movzbl   %r10b, %r11d
	movl     %r11d, %r9d
	cmpl     $0, %r9d            /* cjmp_t   vr23<%r9d>, .L6 */
	jne      .L6
	call     print_nl            /* call     print_nl */
	movl     %r12d, %r10d        /* add_l    vr25<%r9d>, vr10, $1 */
	addl     $1, %r10d
	movl     %r10d, %r9d
	movl     %r9d, %r12d         /* mov_l    vr10, vr25<%r9d> */
.L5:
	movl     %r12d, %r10d        /* cmplte_l vr27<%r9d>, vr10, $9 */
	cmpl     $9, %r10d
	setle    %r10b
	movzbl   %r10b, %r11d
	movl     %r11d, %r9d
	cmpl     $0, %r9d            /* cjmp_t   vr27<%r9d>, .L4 */
	jne      .L4
	movl     $0, %eax            /* mov_l    vr0, $0 */
	jmp      .Lmain_return       /* jmp      .Lmain_return */
.Lmain_return:
	addq     $8, %rsp            /* leave    $400 */
	popq     %r13
	popq     %rbx
	popq     %r12
	addq     $432, %rsp
	popq     %rbp
	ret                          /* ret       */
