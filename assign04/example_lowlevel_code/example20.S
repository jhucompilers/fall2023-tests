/* variable 'c' allocated vreg 10 */
/* Function 'ctoi' uses 0 bytes of memory and 11 virtual registers */
/* Function 'main' uses 0 bytes of memory and 10 virtual registers */
/* Function 'ctoi' uses 16 total bytes of memory storage for vregs */
/* Function 'ctoi': placing vreg storage at offset -16 from %rbp */
/* Function 'ctoi': 16 bytes of local storage allocated in stack frame */
	.section .text

	.globl ctoi
ctoi:
	pushq    %rbp                /* enter    $0 */
	movq     %rsp, %rbp
	subq     $16, %rsp
	movb     %dil, -16(%rbp)     /* mov_b    vr10, vr1 */
	movb     -16(%rbp), %r10b    /* sconv_bl vr11, vr10 */
	movsbl   %r10b, %r10d
	movl     %r10d, -8(%rbp)
	movl     -8(%rbp), %eax      /* mov_l    vr0, vr11 */
	jmp      .Lctoi_return       /* jmp      .Lctoi_return */
.Lctoi_return:
	addq     $16, %rsp           /* leave    $0 */
	popq     %rbp
	ret                          /* ret       */
/* Function 'main' uses 16 total bytes of memory storage for vregs */
/* Function 'main': placing vreg storage at offset -16 from %rbp */
/* Function 'main': 16 bytes of local storage allocated in stack frame */

	.globl main
main:
	pushq    %rbp                /* enter    $0 */
	movq     %rsp, %rbp
	subq     $16, %rsp
	movb     $72, -16(%rbp)      /* mov_b    vr10, $72 */
	movb     -16(%rbp), %dil     /* mov_b    vr1, vr10 */
	call     ctoi                /* call     ctoi */
	movl     %eax, -8(%rbp)      /* mov_l    vr11, vr0 */
	movl     -8(%rbp), %edi      /* mov_l    vr1, vr11 */
	call     print_i32           /* call     print_i32 */
	call     print_nl            /* call     print_nl */
	movb     $101, -16(%rbp)     /* mov_b    vr10, $101 */
	movb     -16(%rbp), %dil     /* mov_b    vr1, vr10 */
	call     ctoi                /* call     ctoi */
	movl     %eax, -8(%rbp)      /* mov_l    vr11, vr0 */
	movl     -8(%rbp), %edi      /* mov_l    vr1, vr11 */
	call     print_i32           /* call     print_i32 */
	call     print_nl            /* call     print_nl */
	movb     $108, -16(%rbp)     /* mov_b    vr10, $108 */
	movb     -16(%rbp), %dil     /* mov_b    vr1, vr10 */
	call     ctoi                /* call     ctoi */
	movl     %eax, -8(%rbp)      /* mov_l    vr11, vr0 */
	movl     -8(%rbp), %edi      /* mov_l    vr1, vr11 */
	call     print_i32           /* call     print_i32 */
	call     print_nl            /* call     print_nl */
	movb     $108, -16(%rbp)     /* mov_b    vr10, $108 */
	movb     -16(%rbp), %dil     /* mov_b    vr1, vr10 */
	call     ctoi                /* call     ctoi */
	movl     %eax, -8(%rbp)      /* mov_l    vr11, vr0 */
	movl     -8(%rbp), %edi      /* mov_l    vr1, vr11 */
	call     print_i32           /* call     print_i32 */
	call     print_nl            /* call     print_nl */
	movb     $111, -16(%rbp)     /* mov_b    vr10, $111 */
	movb     -16(%rbp), %dil     /* mov_b    vr1, vr10 */
	call     ctoi                /* call     ctoi */
	movl     %eax, -8(%rbp)      /* mov_l    vr11, vr0 */
	movl     -8(%rbp), %edi      /* mov_l    vr1, vr11 */
	call     print_i32           /* call     print_i32 */
	call     print_nl            /* call     print_nl */
	movl     $0, -16(%rbp)       /* mov_l    vr10, $0 */
	movl     -16(%rbp), %eax     /* mov_l    vr0, vr10 */
	jmp      .Lmain_return       /* jmp      .Lmain_return */
.Lmain_return:
	addq     $16, %rsp           /* leave    $0 */
	popq     %rbp
	ret                          /* ret       */
