/* variable 'i' allocated vreg 10 */
/* variable 'n' allocated vreg 11 */
/* variable 'sum' allocated vreg 12 */
/* Function 'main' uses 0 bytes of memory and 13 virtual registers */
/* allocate machine register %rbx to variable 'i' (vr10), rank is 62 */
/* allocate machine register %r12 to variable 'sum' (vr12), rank is 42 */
/* allocate machine register %r13 to variable 'n' (vr11), rank is 2 */
/* Function 'main' uses 24 total bytes of memory storage for vregs */
/* Function 'main': placing vreg storage at offset -24 from %rbp */
/* Function 'main': 32 bytes of local storage allocated in stack frame */
	.section .text

	.globl main
main:
	pushq    %rbp                /* enter    $0 */
	movq     %rsp, %rbp
	subq     $32, %rsp
	pushq    %rbx
	pushq    %r13
	pushq    %r12
	subq     $8, %rsp
	movl     $1, %ebx            /* mov_l    vr10, $1 */
	movl     $11, %r13d          /* mov_l    vr11, $11 */
	movl     $0, %r12d           /* mov_l    vr12, $0 */
.L0:
	movl     %r12d, %r10d        /* add_l    vr13<%r9d>, vr12, vr10 */
	addl     %ebx, %r10d
	movl     %r10d, %r9d
	movl     %r9d, %r12d         /* mov_l    vr12, vr13<%r9d> */
	movl     %ebx, %r10d         /* add_l    vr15<%r8d>, vr10, $1 */
	addl     $1, %r10d
	movl     %r10d, %r8d
	movl     %r8d, %ebx          /* mov_l    vr10, vr15<%r8d> */
	movl     %r8d, %r10d         /* cmplt_l  vr16<%ecx>, vr15<%r8d>, vr11 */
	cmpl     %r13d, %r10d
	setl     %r10b
	movzbl   %r10b, %r11d
	movl     %r11d, %ecx
	cmpl     $0, %ecx            /* cjmp_t   vr16<%ecx>, .L0 */
	jne      .L0
	movl     %r12d, %eax         /* mov_l    vr0, vr12 */
	jmp      .Lmain_return       /* jmp      .Lmain_return */
.Lmain_return:
	addq     $8, %rsp            /* leave    $0 */
	popq     %r12
	popq     %r13
	popq     %rbx
	addq     $32, %rsp
	popq     %rbp
	ret                          /* ret       */
