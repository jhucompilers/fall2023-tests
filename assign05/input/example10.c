int main(void) {
  int a, *p;
  p = &a;
  *p = 42;
  return a; // should return 42
}
