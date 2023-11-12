#! /usr/bin/env bash

if [ -z "$ASSIGN05_DIR" ]; then
  echo "ASSIGN05_DIR environment variable is not set"
  exit 1
fi

mkdir -p example_highlevel_code
mkdir -p example_highlevel_code_opt
mkdir -p example_lowlevel_code
mkdir -p example_lowlevel_code_opt
mkdir -p example_lowlevel_code_peep

for f in input/*.c; do
  stem=$(basename $f .c)
  echo "${stem}..."

  $ASSIGN05_DIR/nearly_cc -h input/${stem}.c > example_highlevel_code/${stem}.out
  $ASSIGN05_DIR/nearly_cc -o -h input/${stem}.c > example_highlevel_code_opt/${stem}.out
  $ASSIGN05_DIR/nearly_cc input/${stem}.c > example_lowlevel_code/${stem}.S
  $ASSIGN05_DIR/nearly_cc -o input/${stem}.c > example_lowlevel_code_opt/${stem}.S
  PEEPHOLE_LL_ENABLE=yes $ASSIGN05_DIR/nearly_cc -o input/${stem}.c > example_lowlevel_code_peep/${stem}.S
done

echo "done"
