/* variable 'c' allocated vreg 10 */
/* Function 'ctoi' uses 0 bytes of memory and 11 virtual registers */
/* Function 'main' uses 0 bytes of memory and 10 virtual registers */
/* allocate machine register %rbx to variable 'c' (vr10), rank is 1 */
/* Function 'ctoi' uses 0 total bytes of memory storage for vregs */
/* Function 'ctoi': placing vreg storage at offset 0 from %rbp */
/* Function 'ctoi': 0 bytes of local storage allocated in stack frame */
/* performed 1 round(s) of peephole optimization */
	.section .text

	.globl ctoi
ctoi:
	pushq    %rbp                /* enter    $0 */
	movq     %rsp, %rbp
	pushq    %rbx
	subq     $8, %rsp
	movb     %dil, %r10b         /* sconv_bl vr11<%r9d>, vr1 */
	movsbl   %r10b, %r10d
	movl     %r10d, %r9d
	movl     %r9d, %eax          /* mov_l    vr0, vr11<%r9d> */
	jmp      .Lctoi_return       /* jmp      .Lctoi_return */
.Lctoi_return:
	addq     $8, %rsp            /* leave    $0 */
	popq     %rbx
	popq     %rbp
	ret                          /* ret       */
/* Function 'main' uses 0 total bytes of memory storage for vregs */
/* Function 'main': placing vreg storage at offset 0 from %rbp */
/* Function 'main': 0 bytes of local storage allocated in stack frame */
/* performed 2 round(s) of peephole optimization */

	.globl main
main:
	pushq    %rbp                /* enter    $0 */
	movq     %rsp, %rbp
	movb     $72, %dil           /* mov_b    vr1, $72 */
	call     ctoi                /* call     ctoi */
	movl     %eax, %edi          /* mov_l    vr1, vr0 */
	call     print_i32           /* call     print_i32 */
	call     print_nl            /* call     print_nl */
	movb     $101, %dil          /* mov_b    vr1, $101 */
	call     ctoi                /* call     ctoi */
	movl     %eax, %edi          /* mov_l    vr1, vr0 */
	call     print_i32           /* call     print_i32 */
	call     print_nl            /* call     print_nl */
	movb     $108, %dil          /* mov_b    vr1, $108 */
	call     ctoi                /* call     ctoi */
	movl     %eax, %edi          /* mov_l    vr1, vr0 */
	call     print_i32           /* call     print_i32 */
	call     print_nl            /* call     print_nl */
	movb     $108, %dil          /* mov_b    vr1, $108 */
	call     ctoi                /* call     ctoi */
	movl     %eax, %edi          /* mov_l    vr1, vr0 */
	call     print_i32           /* call     print_i32 */
	call     print_nl            /* call     print_nl */
	movb     $111, %dil          /* mov_b    vr1, $111 */
	call     ctoi                /* call     ctoi */
	movl     %eax, %edi          /* mov_l    vr1, vr0 */
	call     print_i32           /* call     print_i32 */
	call     print_nl            /* call     print_nl */
	xorl     %eax, %eax          /* mov_l    vr0, $0 */
	jmp      .Lmain_return       /* jmp      .Lmain_return */
.Lmain_return:
	popq     %rbp                /* leave    $0 */
	ret                          /* ret       */
