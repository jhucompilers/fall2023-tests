/* variable 'a' allocated vreg 10 */
/* variable 'n' allocated vreg 11 */
/* variable 'i' allocated vreg 12 */
/* variable 'sum' allocated vreg 13 */
/* Function 'sum' uses 0 bytes of memory and 14 virtual registers */
/* variable 'arr' allocated 12 bytes of storage at offset 0 */
/* variable 'result' allocated vreg 10 */
/* Function 'main' uses 12 bytes of memory and 11 virtual registers */
/* allocate machine register %rbx to variable 'i' (vr12), rank is 81 */
/* allocate machine register %r12 to variable 'sum' (vr13), rank is 42 */
/* allocate machine register %r13 to variable 'a' (vr10), rank is 20 */
/* allocate machine register %r14 to variable 'n' (vr11), rank is 20 */
/* Function 'sum' uses 32 total bytes of memory storage for vregs */
/* Function 'sum': placing vreg storage at offset -32 from %rbp */
/* Function 'sum': 32 bytes of local storage allocated in stack frame */
	.section .text

	.globl sum
sum:
	pushq    %rbp                /* enter    $0 */
	movq     %rsp, %rbp
	subq     $32, %rsp
	pushq    %r13
	pushq    %r14
	pushq    %rbx
	pushq    %r12
	movq     %rdi, %r13          /* mov_q    vr10, vr1 */
	movl     %esi, %r14d         /* mov_l    vr11, vr2 */
	movl     $0, %r12d           /* mov_l    vr13, $0 */
	movl     $0, %ebx            /* mov_l    vr12, $0 */
	jmp      .L1                 /* jmp      .L1 */
.L0:
	movl     %ebx, %r10d         /* sconv_lq vr14<%r9>, vr12 */
	movslq   %r10d, %r10
	movq     %r10, %r9
	movq     %r9, %r10           /* mul_q    vr15<%r8>, vr14<%r9>, $4 */
	imulq    $4, %r10
	movq     %r10, %r8
	movq     %r13, %r10          /* add_q    vr16<%rcx>, vr10, vr15<%r8> */
	addq     %r8, %r10
	movq     %r10, %rcx
	movl     (%rcx), %edx        /* mov_l    vr18<%edx>, (vr16<%ecx>) */
	movl     %r12d, %r10d        /* add_l    vr17<%esi>, vr13, vr18<%edx> */
	addl     %edx, %r10d
	movl     %r10d, %esi
	movl     %esi, %r12d         /* mov_l    vr13, vr17<%esi> */
	movl     %ebx, %r10d         /* add_l    vr20<%edi>, vr12, $1 */
	addl     $1, %r10d
	movl     %r10d, %edi
	movl     %edi, %ebx          /* mov_l    vr12, vr20<%edi> */
.L1:
	movl     %ebx, %r10d         /* cmplt_l  vr21<%r9d>, vr12, vr11 */
	cmpl     %r14d, %r10d
	setl     %r10b
	movzbl   %r10b, %r11d
	movl     %r11d, %r9d
	cmpl     $0, %r9d            /* cjmp_t   vr21<%r9d>, .L0 */
	jne      .L0
	movl     %r12d, %eax         /* mov_l    vr0, vr13 */
	jmp      .Lsum_return        /* jmp      .Lsum_return */
.Lsum_return:
	popq     %r12                /* leave    $0 */
	popq     %rbx
	popq     %r14
	popq     %r13
	addq     $32, %rsp
	popq     %rbp
	ret                          /* ret       */
/* allocate machine register %rbx to variable 'result' (vr10), rank is 2 */
/* Function 'main': placing memory variables at offset -16 from %rbp */
/* Function 'main' uses 0 total bytes of memory storage for vregs */
/* Function 'main': placing vreg storage at offset -16 from %rbp */
/* Function 'main': 16 bytes of local storage allocated in stack frame */

	.globl main
main:
	pushq    %rbp                /* enter    $12 */
	movq     %rsp, %rbp
	subq     $16, %rsp
	pushq    %rbx
	subq     $8, %rsp
	leaq     -16(%rbp), %r10     /* localaddr vr12<%r9>, $0 */
	movq     %r10, %r9
	movq     %r9, %r10           /* add_q    vr16<%r8>, vr12<%r9>, $0 */
	addq     $0, %r10
	movq     %r10, %r8
	movl     $1, (%r8)           /* mov_l    (vr16<%r8d>), $1 */
	movq     %r9, %r10           /* add_q    vr22<%rcx>, vr12<%r9>, $4 */
	addq     $4, %r10
	movq     %r10, %rcx
	movl     $2, (%rcx)          /* mov_l    (vr22<%ecx>), $2 */
	movq     %r9, %r10           /* add_q    vr28<%rdx>, vr12<%r9>, $8 */
	addq     $8, %r10
	movq     %r10, %rdx
	movl     $3, (%rdx)          /* mov_l    (vr28<%edx>), $3 */
	movq     %r9, %rdi           /* mov_q    vr1, vr12<%r9> */
	movl     $3, %esi            /* mov_l    vr2, $3 */
	call     sum                 /* call     sum */
	jmp      .Lmain_return       /* jmp      .Lmain_return */
.Lmain_return:
	addq     $8, %rsp            /* leave    $12 */
	popq     %rbx
	addq     $16, %rsp
	popq     %rbp
	ret                          /* ret       */
