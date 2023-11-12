int read_i32(void);
void print_i32(int n);
void print_nl(void);

int fib(int n) {
  if (n <= 1)
    return n;

  int a, b, c;

  a = 0;
  b = 1;

  int i;
  i = 2;
  while (i <= n) {
    c = a + b;
    a = b;
    b = c;

    i = i + 1;
  }

  return b;
}

int main(void) {
  int n;

  n = read_i32();

  n = fib(n);
  print_i32(n);
  print_nl();

  return 0;
}
