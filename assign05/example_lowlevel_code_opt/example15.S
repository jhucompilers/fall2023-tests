/* variable 'x' allocated vreg 10 */
/* variable 'y' allocated vreg 11 */
/* Function 'main' uses 0 bytes of memory and 12 virtual registers */
/* allocate machine register %rbx to variable 'x' (vr10), rank is 2 */
/* allocate machine register %r12 to variable 'y' (vr11), rank is 2 */
/* Function 'main' uses 8 total bytes of memory storage for vregs */
/* Function 'main': placing vreg storage at offset -8 from %rbp */
/* Function 'main': 16 bytes of local storage allocated in stack frame */
	.section .text

	.globl main
main:
	pushq    %rbp                /* enter    $0 */
	movq     %rsp, %rbp
	subq     $16, %rsp
	pushq    %rbx
	pushq    %r12
	call     read_i32            /* call     read_i32 */
	movl     %eax, %ebx          /* mov_l    vr10, vr0 */
	call     read_i32            /* call     read_i32 */
	movl     %ebx, %r10d         /* add_l    vr14<%r9d>, vr10, vr0 */
	addl     %eax, %r10d
	movl     %r10d, %r9d
	movl     %r9d, %eax          /* mov_l    vr0, vr14<%r9d> */
	jmp      .Lmain_return       /* jmp      .Lmain_return */
.Lmain_return:
	popq     %r12                /* leave    $0 */
	popq     %rbx
	addq     $16, %rsp
	popq     %rbp
	ret                          /* ret       */
