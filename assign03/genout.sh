#! /usr/bin/env bash

# Generate expected output or expected error file for a test case
# using the reference solution.

function check_dup {
  local dir="$1"
  local stem="$2"

  if [ "${ALT_SUFFIX}" = "" ]; then
    return 0
  fi

  if [ -r "${dir}/${stem}.out" ] && [ -r "${dir}/${stem}${ALT_SUFFIX}.out" ]; then
    diff "${dir}/${stem}.out" "${dir}/${stem}${ALT_SUFFIX}.out" > /dev/null
    if [ $? -eq 0 ]; then
      # alternate output is same as original output
      rm -f "${dir}/${stem}${ALT_SUFFIX}.out"
    fi
  fi
}

if [ "$ASSIGN03_DIR" = "" ]; then
  echo "ASSIGN03_DIR environment variable is not set"
  exit 1
fi

input_file="$1"

if [ "$input_file" = "" ] || [ ! -r "$input_file" ]; then
  echo "Missing input file"
  echo "Usage: ./genout.sh <input file>"
  exit 1
fi

testname=$(basename $input_file .c)

mkdir -p expected_output expected_error

$ASSIGN03_DIR/nearly_cc ${EXTRA_OPTS} -a $input_file > expected_output/$testname${ALT_SUFFIX}.out 2> expected_error/$testname${ALT_SUFFIX}.out

if [ -s "expected_error/$testname${ALT_SUFFIX}.out" ]; then
  # expected error was nonempty, so delete the exepcted output file
  rm -f expected_output/$testname${ALT_SUFFIX}.out
else
  # expected error was empty, so delete it (and retain the expected output file)
  rm -f expected_error/$testname${ALT_SUFFIX}.out
fi

# if the expected output or error with the alt suffix isn't different
# than the original "canonical" version, delete it (since it isn't needed)
check_dup 'expected_output' ${testname}
check_dup 'expected_error' ${testname}
