#! /usr/bin/env ruby

option = ''
if ARGV.length > 0 && ARGV[0].start_with?('-')
  option = ARGV.shift
end

raise "Usage: ./run_all.rb [option]" if ARGV.length != 0

testcases = []

IO.popen("ls input/*.c") do |f|
  f.each_line do |line|
    line.chomp!
    if m = /^input\/(.*)\.c$/.match(line)
      testcases.push(m[1])
    end
  end
end

num_passed = 0

testcases.each do |testname|
  #puts testname
  print "#{testname}..."
  STDOUT.flush
  rc = system("./run_test.rb #{option} #{testname} > /dev/null 2> /dev/null")
  if rc
    puts "passed!"
    num_passed += 1
  else
    puts "FAILED"
  end
end

if num_passed == testcases.length
  puts "All tests passed!"
  exit 0
else
  puts "#{num_passed}/#{testcases.length} tests passed"
  exit 1
end
