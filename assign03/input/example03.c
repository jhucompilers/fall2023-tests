void incr(int *p);

int main(void) {
  int a;
  a = 1;
  incr(&a);
  return a;
}
