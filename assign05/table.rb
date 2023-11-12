#! /usr/bin/env ruby

base = 'https://github.com/jhucompilers/fall2022-tests/blob/main/assign05'
t = ['example02', 'example09', 'example28', 'example29', 'example30', 'example31']

t.each do |test|
  print <<"EOF"
[#{test}.c](#{base}/input/#{test}.c) | [#{test}.out](#{base}/example_highlevel_code/#{test}.out) | [#{test}.out](#{base}/example_highlevel_code_opt/#{test}.out) | [#{test}.S](#{base}/example_lowlevel_code/#{test}.S) | [#{test}.S](#{base}/example_lowlevel_code_opt/#{test}.S) | [#{test}.S](#{base}/example_lowlevel_code_peep/#{test}.S)
EOF
end
