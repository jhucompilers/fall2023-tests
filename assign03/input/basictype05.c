int main(void) {
  // If a declaration uses a basic type, but omits "char", "int", and "void",
  // "int" is assumed. So the following are equivalent to "signed int"
  // and "unsigend int".
  signed s;
  unsigned u;

  s = -2000000000;
  u = 3000000000;

  return 0;
}
