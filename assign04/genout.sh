#! /usr/bin/env bash

if [ $# -ne 1 ]; then
  echo "Usage: ./genout.sh <inut filename>"
  exit 1
fi

if [ "$ASSIGN04_DIR" = "" ]; then
  echo "ASSIGN04_DIR is not set"
  exit 1
fi

nearly_cc="$ASSIGN04_DIR/nearly_cc"
if [ ! -x $nearly_cc ]; then
  echo "$nearly_cc doesn't exist or isn't executable"
  exit 1
fi

input_filename="$1"
stem=$(basename $input_filename .c)

./build.rb ${stem}

$nearly_cc -h $input_filename > example_highlevel_code/${stem}.txt
cp out/${stem}.S example_lowlevel_code

# generate expected output and exit code
mkdir -p expected_output

exit_code='unknown'
if [ -r data/${stem}.in ]; then
  ./out/${stem} < data/${stem}.in > expected_output/${stem}.out
  exit_code=$?
else
  ./out/${stem} > expected_output/${stem}.out
  exit_code=$?
fi

# delete expected output if no output was produced
if [ ! -s "expected_output/${stem}.out" ]; then
  echo "expected_output/${stem}.out is empty, deleting it"
  rm -f expected_output/${stem}.out
fi

mkdir -p expected_exit_code
echo "${exit_code}" > expected_exit_code/${stem}.out
