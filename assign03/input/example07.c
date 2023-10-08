int main(void) {
  int x;
  int *p;
  volatile int *q;


  p = &x;

  q = p; // this is ok: the base type of the pointer variable being assigned
         // to can have more qualifiers than the pointer type being assigned

  return 0;
}
