/* variable 'a' allocated vreg 10 */
/* variable 'b' allocated vreg 11 */
/* variable 'result' allocated vreg 12 */
/* Function 'sum' uses 0 bytes of memory and 13 virtual registers */
/* variable 'x' allocated vreg 10 */
/* variable 'y' allocated vreg 11 */
/* variable 'z' allocated vreg 12 */
/* Function 'main' uses 0 bytes of memory and 13 virtual registers */
/* allocate machine register %rbx to variable 'result' (vr12), rank is 2 */
/* allocate machine register %r12 to variable 'a' (vr10), rank is 1 */
/* allocate machine register %r13 to variable 'b' (vr11), rank is 1 */
/* Function 'sum' uses 0 total bytes of memory storage for vregs */
/* Function 'sum': placing vreg storage at offset 0 from %rbp */
/* Function 'sum': 0 bytes of local storage allocated in stack frame */
	.section .text

	.globl sum
sum:
	pushq    %rbp                /* enter    $0 */
	movq     %rsp, %rbp
	pushq    %r12
	pushq    %r13
	pushq    %rbx
	subq     $8, %rsp
	movl     %edi, %r10d         /* add_l    vr13<%r9d>, vr1, vr2 */
	addl     %esi, %r10d
	movl     %r10d, %r9d
	movl     %r9d, %eax          /* mov_l    vr0, vr13<%r9d> */
	jmp      .Lsum_return        /* jmp      .Lsum_return */
.Lsum_return:
	addq     $8, %rsp            /* leave    $0 */
	popq     %rbx
	popq     %r13
	popq     %r12
	popq     %rbp
	ret                          /* ret       */
/* allocate machine register %rbx to variable 'x' (vr10), rank is 2 */
/* allocate machine register %r12 to variable 'y' (vr11), rank is 2 */
/* allocate machine register %r13 to variable 'z' (vr12), rank is 2 */
/* Function 'main' uses 0 total bytes of memory storage for vregs */
/* Function 'main': placing vreg storage at offset 0 from %rbp */
/* Function 'main': 0 bytes of local storage allocated in stack frame */

	.globl main
main:
	pushq    %rbp                /* enter    $0 */
	movq     %rsp, %rbp
	pushq    %rbx
	pushq    %r12
	pushq    %r13
	subq     $8, %rsp
	movl     $2, %edi            /* mov_l    vr1, $2 */
	movl     $3, %esi            /* mov_l    vr2, $3 */
	call     sum                 /* call     sum */
	jmp      .Lmain_return       /* jmp      .Lmain_return */
.Lmain_return:
	addq     $8, %rsp            /* leave    $0 */
	popq     %r13
	popq     %r12
	popq     %rbx
	popq     %rbp
	ret                          /* ret       */
