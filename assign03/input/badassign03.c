int main(void) {
  volatile int count;
  volatile int *p;

  p = &count;

  int *q;

  q = p; // not allowed, drops the volatile qualifier on the base type

  return 0;
}
