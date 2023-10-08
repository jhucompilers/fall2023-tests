int main(void) {
  int x, y, z;
  int *p;

  x = 4;
  p = &y;

  z = x * p; // error: invalid operation on integer and pointer values

  return 0;
}
