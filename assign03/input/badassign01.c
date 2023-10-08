int main(void) {
  const char *s1;
  s1 = "hello";
  char *s2;
  s2 = s1; // discards "const" qualifier on pointer base type
  return 0;
}
