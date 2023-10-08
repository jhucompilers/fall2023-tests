void f(int x) {
}

int main(void) {
  int y;
  y = 1 + f(42); // error: use of void value
  return 0;
}
