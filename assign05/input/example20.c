// another integer promotion example

void print_i32(int n);
void print_nl(void);

int ctoi(char c) {
  return c;
}

int main(void) {
  print_i32(ctoi('H'));
  print_nl();
  print_i32(ctoi('e'));
  print_nl();
  print_i32(ctoi('l'));
  print_nl();
  print_i32(ctoi('l'));
  print_nl();
  print_i32(ctoi('o'));
  print_nl();

  return 0;
}
