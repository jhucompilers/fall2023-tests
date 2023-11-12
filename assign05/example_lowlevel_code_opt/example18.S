/* variable 'n' allocated vreg 10 */
/* Function 'main' uses 0 bytes of memory and 11 virtual registers */
/* allocate machine register %rbx to variable 'n' (vr10), rank is 62 */
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
	subq     $8, %rsp
	movl     $10, %ebx           /* mov_l    vr10, $10 */
	jmp      .L1                 /* jmp      .L1 */
.L0:
	movl     %ebx, %edi          /* mov_l    vr1, vr10 */
	call     print_i32           /* call     print_i32 */
	call     print_nl            /* call     print_nl */
	movl     %ebx, %r10d         /* sub_l    vr12<%r9d>, vr10, $1 */
	subl     $1, %r10d
	movl     %r10d, %r9d
	movl     %r9d, %ebx          /* mov_l    vr10, vr12<%r9d> */
.L1:
	movl     %ebx, %r10d         /* cmpgt_l  vr14<%r9d>, vr10, $0 */
	cmpl     $0, %r10d
	setg     %r10b
	movzbl   %r10b, %r11d
	movl     %r11d, %r9d
	cmpl     $0, %r9d            /* cjmp_t   vr14<%r9d>, .L0 */
	jne      .L0
	movl     $0, %eax            /* mov_l    vr0, $0 */
	jmp      .Lmain_return       /* jmp      .Lmain_return */
.Lmain_return:
	addq     $8, %rsp            /* leave    $0 */
	popq     %rbx
	addq     $16, %rsp
	popq     %rbp
	ret                          /* ret       */
