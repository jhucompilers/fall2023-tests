#! /usr/bin/env ruby

require 'open3'

def gen_helper_funcs(output_filename)
  File.open(output_filename, 'w') do |outf|
    outf.print <<"EOF"
/* helper functions to allow compiled programs to do basic I/O */

	.section .rodata

s_str_fmt: .string "%s"
s_i32_fmt: .string "%d"
s_i64_fmt: .string "%ld"
s_newline: .string "\\n"
s_space:   .string " "

	.section .text

/*
 * void print_str(const char *s);
 *
 * Print a NUL-terminated character string to stdout.
 */
	.globl print_str
print_str:
	subq $8, %rsp
	xorl %eax, %eax
	movq %rdi, %rsi
	movq $s_str_fmt, %rdi
	call printf
	addq $8, %rsp
	ret

/*
 * void print_i32(int n);
 *
 * Print a 32-bit signed integer value to stdout.
 */
	.globl print_i32
print_i32:
	subq $8, %rsp
	xorl %eax, %eax
	movq %rdi, %rsi
	movq $s_i32_fmt, %rdi
	call printf
	addq $8, %rsp
	ret

/*
 * int read_i32(void);
 *
 * Read a 32-bit signed integer from stdin, and return it.
 */
	.globl read_i32
read_i32:
	subq $8, %rsp         /* align stack, also mem storage for input var */
	xorl %eax, %eax
	movq $s_i32_fmt, %rdi
	movq %rsp, %rsi
	call scanf
	movl (%rsp), %eax
	addq $8, %rsp
	ret

/*
 * void print_i64(long n);
 *
 * Print a 64-bit signed integer value to stdout.
 */
	.globl print_i64
print_i64:
	subq $8, %rsp
	xorl %eax, %eax
	movq %rdi, %rsi
	movq $s_i64_fmt, %rdi
	call printf
	addq $8, %rsp
	ret

/*
 * void read_i64(void);
 *
 * Read a 64-bit signed integer value from stdin, and return it.
 */
	.globl read_i64
read_i64:
	subq $8, %rsp        /* align stack, also mem storage for input var */
	xorl %eax, %eax
	movq $s_i64_fmt, %rdi
	movq %rsp, %rsi
	call scanf
	movq (%rsp), %rax
	addq $8, %rsp
	ret

/*
 * void print_nl(void);
 *
 * Print a single newline character to stdout.
 */
	.globl print_nl
print_nl:
	subq $8, %rsp
	xorl %eax, %eax
	movq $s_str_fmt, %rdi
	movq $s_newline, %rsi
	call printf
	addq $8, %rsp
	ret

/*
 * void print_space(void);
 *
 * Print a single space character to stdout.
 */
	.globl print_space
print_space:
	subq $8, %rsp
	xorl %eax, %eax
	movq $s_str_fmt, %rdi
	movq $s_space, %rsi
	call printf
	addq $8, %rsp
	ret
EOF
  end
end

testname = ARGV.shift
raise "Usage: build.rb <testname>" if testname.nil?

raise "ASSIGN04_DIR environment variable must be defined" if !ENV.has_key?('ASSIGN04_DIR')
compiler_exe = "#{ENV['ASSIGN04_DIR']}/nearly_cc"
raise "#{compiler_exe} does not exist or is not executable" if !FileTest.executable?(compiler_exe)

out, err, status = Open3.capture3(compiler_exe, "input/#{testname}.c", :stdin_data => '')
#puts "out is #{out}"
if !status.success?
  STDERR.puts "nearly_cc command failed"
  STDERR.puts "stderr output:"
  STDERR.print err
  exit 1
end

asm_src = "out/#{testname}.S"
gen_exe = "out/#{testname}"

system("mkdir -p out")
File.open("out/#{testname}.S", 'w') do |outf|
  outf.print out
end
helper_asm_src = "out/#{testname}_helper.S"
gen_helper_funcs(helper_asm_src)

rc = system("gcc -g -no-pie -o #{gen_exe} #{asm_src} #{helper_asm_src}")
if !rc
  STDERR.puts "Generated code could not be assembled"
  exit 1
end

# Success!
puts "Generated code successfully assembled, output exe is #{gen_exe}"
exit 0
