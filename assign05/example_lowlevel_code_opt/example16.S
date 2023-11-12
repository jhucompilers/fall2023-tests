/* Function 'main' uses 0 bytes of memory and 10 virtual registers */
	.section .rodata

_str0: .string "Hello, world\n"
/* Function 'main' uses 0 total bytes of memory storage for vregs */
/* Function 'main': placing vreg storage at offset 0 from %rbp */
/* Function 'main': 0 bytes of local storage allocated in stack frame */
	.section .text

	.globl main
main:
	pushq    %rbp                /* enter    $0 */
	movq     %rsp, %rbp
	movq     $_str0, %r9         /* mov_q    vr10<%r9>, $_str0 */
	movq     %r9, %rdi           /* mov_q    vr1, vr10<%r9> */
	call     print_str           /* call     print_str */
	movl     $0, %eax            /* mov_l    vr0, $0 */
	jmp      .Lmain_return       /* jmp      .Lmain_return */
.Lmain_return:
	popq     %rbp                /* leave    $0 */
	ret                          /* ret       */
