int main(void) {
  int a, b, c;

  a = 3;
  b = 4;
  c = 5;

  (a + b) = c; // computed value is not an lvalue

  return 0;
}
