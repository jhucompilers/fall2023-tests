int main(void) {
  // it's an error to define two variables with the same name
  int x;
  int y; // fine
  char z; // fint
  int x[12]; // redefinition of "x"
  return 0;
}
