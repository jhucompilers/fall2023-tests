int main(void) {
  int a[3];
  int *p;

  p = &a[2] - 2; // pointer arithmetic should be allowed
  *p = 42; // assigns to a[0]

  return 0;
}
