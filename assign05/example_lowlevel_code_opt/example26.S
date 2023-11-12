/* variable 'p' allocated 24 bytes of storage at offset 0 */
/* variable 's' allocated vreg 10 */
/* Function 'main' uses 24 bytes of memory and 11 virtual registers */
/* allocate machine register %rbx to variable 's' (vr10), rank is 2 */
/* Function 'main': placing memory variables at offset -24 from %rbp */
/* Function 'main' uses 0 total bytes of memory storage for vregs */
/* Function 'main': placing vreg storage at offset -24 from %rbp */
/* Function 'main': 32 bytes of local storage allocated in stack frame */
	.section .text

	.globl main
main:
	pushq    %rbp                /* enter    $24 */
	movq     %rsp, %rbp
	subq     $32, %rsp
	pushq    %rbx
	subq     $8, %rsp
	leaq     -24(%rbp), %r10     /* localaddr vr12<%r9>, $0 */
	movq     %r10, %r9
	movq     %r9, %r10           /* add_q    vr14<%r8>, vr12<%r9>, $0 */
	addq     $0, %r10
	movq     %r10, %r8
	movq     %r8, %r10           /* add_q    vr18<%rcx>, vr14<%r8>, $0 */
	addq     $0, %r10
	movq     %r10, %rcx
	movb     $65, (%rcx)         /* mov_b    (vr18<%cl>), $65 */
	movq     %r8, %r10           /* add_q    vr26<%rdx>, vr14<%r8>, $1 */
	addq     $1, %r10
	movq     %r10, %rdx
	movb     $108, (%rdx)        /* mov_b    (vr26<%dl>), $108 */
	movq     %r8, %r10           /* add_q    vr34<%rsi>, vr14<%r8>, $2 */
	addq     $2, %r10
	movq     %r10, %rsi
	movb     $105, (%rsi)        /* mov_b    (vr34<%sil>), $105 */
	movq     %r8, %r10           /* add_q    vr42<%rcx>, vr14<%r8>, $3 */
	addq     $3, %r10
	movq     %r10, %rcx
	movb     $99, (%rcx)         /* mov_b    (vr42<%cl>), $99 */
	movq     %r8, %r10           /* add_q    vr50<%rdx>, vr14<%r8>, $4 */
	addq     $4, %r10
	movq     %r10, %rdx
	movb     $101, (%rdx)        /* mov_b    (vr50<%dl>), $101 */
	movq     %r8, %r10           /* add_q    vr58<%rsi>, vr14<%r8>, $5 */
	addq     $5, %r10
	movq     %r10, %rsi
	movb     $0, (%rsi)          /* mov_b    (vr58<%sil>), $0 */
	movq     %r9, %r10           /* add_q    vr62<%rcx>, vr12<%r9>, $20 */
	addq     $20, %r10
	movq     %r10, %rcx
	movl     $43, (%rcx)         /* mov_l    (vr62<%ecx>), $43 */
	movq     %r8, %rdi           /* mov_q    vr1, vr14<%r8> */
	call     print_str           /* call     print_str */
	call     print_nl            /* call     print_nl */
	leaq     -24(%rbp), %r10     /* localaddr vr66<%r9>, $0 */
	movq     %r10, %r9
	movq     %r9, %r10           /* add_q    vr68<%r8>, vr66<%r9>, $20 */
	addq     $20, %r10
	movq     %r10, %r8
	movl     (%r8), %edi         /* mov_l    vr1, (vr68<%r8d>) */
	call     print_i32           /* call     print_i32 */
	call     print_nl            /* call     print_nl */
	movl     $0, %eax            /* mov_l    vr0, $0 */
	jmp      .Lmain_return       /* jmp      .Lmain_return */
.Lmain_return:
	addq     $8, %rsp            /* leave    $24 */
	popq     %rbx
	addq     $32, %rsp
	popq     %rbp
	ret                          /* ret       */
