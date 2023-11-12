/* Function 'main' uses 0 bytes of memory and 10 virtual registers */
	.section .rodata

_str0: .string "Hello, world\n"
/* Function 'main' uses 16 total bytes of memory storage for vregs */
/* Function 'main': placing vreg storage at offset -16 from %rbp */
/* Function 'main': 16 bytes of local storage allocated in stack frame */
	.section .text

	.globl main
main:
	pushq    %rbp                /* enter    $0 */
	movq     %rsp, %rbp
	subq     $16, %rsp
	movq     $_str0, -16(%rbp)   /* mov_q    vr10, $_str0 */
	movq     -16(%rbp), %rdi     /* mov_q    vr1, vr10 */
	call     print_str           /* call     print_str */
	movl     $0, -8(%rbp)        /* mov_l    vr11, $0 */
	movl     -8(%rbp), %eax      /* mov_l    vr0, vr11 */
	jmp      .Lmain_return       /* jmp      .Lmain_return */
	jmp      .Lmain_return       /* jmp      .Lmain_return */
.Lmain_return:
	addq     $16, %rsp           /* leave    $0 */
	popq     %rbp
	ret                          /* ret       */
