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
/* performed 4 round(s) of peephole optimization */
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
	xorl     %r12d, %r12d        /* mov_l    vr13, $0 */
	xorl     %ebx, %ebx          /* mov_l    vr12, $0 */
	jmp      .L1                 /* jmp      .L1 */
.L0:
	movslq   %ebx, %r9           /* sconv_lq vr14<%r9>, vr12 */
	movl     (%r13,%r9,4), %edx  /* mul_q    vr15<%r8>, vr14<%r9>, $4 */
	addl     %edx, %r12d
	incl     %ebx
.L1:
	cmpl     %r14d, %ebx         /* cmplt_l  vr21<%r9d>, vr12, vr11 */
	jl       .L0
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
/* performed 3 round(s) of peephole optimization */

	.globl main
main:
	pushq    %rbp                /* enter    $12 */
	movq     %rsp, %rbp
	subq     $16, %rsp
	pushq    %rbx
	subq     $8, %rsp
	leaq     -16(%rbp), %r9      /* localaddr vr12<%r9>, $0 */
	movl     $1, 0(%r9)          /* add_q    vr16<%r8>, vr12<%r9>, $0 */
	movl     $2, 4(%r9)          /* add_q    vr22<%rcx>, vr12<%r9>, $4 */
	movl     $3, 8(%r9)          /* add_q    vr28<%rdx>, vr12<%r9>, $8 */
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
