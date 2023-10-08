int main(void) {
  int x;
  int *p;
  int **pp;

  p = &x;

  pp = &p;

  pp[0][0] = 17; // this should be allowed, and will assign to x

  return 0;
}
