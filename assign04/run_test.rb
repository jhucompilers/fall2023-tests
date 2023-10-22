#! /usr/bin/env ruby

raise "Usage: ./run_test.rb <testname>" if ARGV.length != 1

testname = ARGV[0]

# Run build.rb to compile/assemble/link the test program
rc = system("./build.rb #{testname}")
if !rc
  STDERR.puts "build.rb failed"
  exit 1
end

system("mkdir -p actual_output");

# Execute the test executable
exit_status = nil
if File.exist?("data/#{testname}.in")
  rc = system("./out/#{testname} < data/#{testname}.in > actual_output/#{testname}.out")
  if !rc.nil?
    exit_status = $?
  end
else
  rc = system("./out/#{testname} > actual_output/#{testname}.out")
  if !rc.nil?
    exit_status = $?
  end
end

if exit_status.nil? || !exit_status.exited?
  STDERR.puts "The executable crashed?"
  exit 1
end

# See what the expected exit code is
expected_exit_code = nil
File.open("expected_exit_code/#{testname}.out") do |f|
  f.each_line do |line|
    if m = /(\d+)/.match(line)
      expected_exit_code = m[1].to_i
    end
  end
end

# Check executable's exit code against expected exit code
if exit_status.exitstatus != expected_exit_code
  STDERR.puts "Executable exited with exit code #{exit_status.exitstatus}, expected #{expected_exit_code}"
  exit 1
end

# Check expected output
if File.exist?("expected_output/#{testname}.out")
  # Use diff to check actual output against expected output
  rc = system("diff expected_output/#{testname}.out actual_output/#{testname}.out")
  if !rc
    STDERR.puts "Output did not match expected output"
    exit 1
  end
else
  # no output is expected
  if !File.empty?("actual_output/#{testname}.out")
    STDERR.puts "Executable produced unexpected output"
  end
end

puts "Test passed!"
exit 0
