/* variable 'a' allocated vreg 10 */
/* variable 'b' allocated vreg 11 */
/* variable 'c' allocated vreg 12 */
/* Function 'main' uses 0 bytes of memory and 13 virtual registers */
/* allocate machine register %rbx to variable 'a' (vr10), rank is 4 */
/* allocate machine register %r12 to variable 'b' (vr11), rank is 2 */
/* allocate machine register %r13 to variable 'c' (vr12), rank is 2 */
/* Function 'main' uses 0 total bytes of memory storage for vregs */
/* Function 'main': placing vreg storage at offset 0 from %rbp */
/* Function 'main': 0 bytes of local storage allocated in stack frame */
/* performed 2 round(s) of peephole optimization */
	.section .text

	.globl main
main:
	pushq    %rbp                /* enter    $0 */
	movq     %rsp, %rbp
	pushq    %rbx
	pushq    %r12
	pushq    %r13
	subq     $8, %rsp
	movq     $145003225438, %rdi /* mov_q    vr1, $145003225438 */
	call     print_i64           /* call     print_i64 */
	call     print_nl            /* call     print_nl */
	xorl     %eax, %eax          /* mov_l    vr0, $0 */
	jmp      .Lmain_return       /* jmp      .Lmain_return */
.Lmain_return:
	addq     $8, %rsp            /* leave    $0 */
	popq     %r13
	popq     %r12
	popq     %rbx
	popq     %rbp
	ret                          /* ret       */
