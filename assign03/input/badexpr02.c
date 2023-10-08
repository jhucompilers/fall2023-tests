int add(int x, int y) {
  return x + y;
}

int main(void) {
  int a;
  a = -add; // function is not a valid operand value for unary minus
  return 0;
}
