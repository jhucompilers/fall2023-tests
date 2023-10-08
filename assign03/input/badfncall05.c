void f(int x) {
}

int main(void) {
  int y;
  y = f(42) + 1; // error: use of void value
  return 0;
}
